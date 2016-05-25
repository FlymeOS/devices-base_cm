.class public Landroid/service/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FingerprintUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFingerprintIdForUser(ILandroid/content/Context;I)V
    .locals 8
    .param p0, "fingerId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 68
    .local v1, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_1

    goto :goto_0

    .line 74
    .end local v1    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    const v4, 0x10400d2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "defaultName":Ljava/lang/String;
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v0, v4, v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 77
    .restart local v1    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2, v4, p2}, Landroid/service/fingerprint/FingerprintUtils;->saveFingerprints(Ljava/util/List;Landroid/content/ContentResolver;I)V

    goto :goto_0
.end method

.method public static getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;
    .locals 5
    .param p0, "res"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v4, "user_fingerprints"

    invoke-static {p0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "fingerprintJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/fingerprint/Fingerprint$JsonSerializer;->fromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 47
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 49
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getUserId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 54
    .end local v0    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    return-object v2
.end method

.method public static removeFingerprintIdForUser(ILandroid/content/ContentResolver;I)Z
    .locals 4
    .param p0, "fingerId"    # I
    .param p1, "res"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .prologue
    .line 86
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad fingerId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    invoke-static {p1, p2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_1

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {v0, p1, p2}, Landroid/service/fingerprint/FingerprintUtils;->saveFingerprints(Ljava/util/List;Landroid/content/ContentResolver;I)V

    .line 98
    const/4 v2, 0x1

    return v2
.end method

.method public static saveFingerprints(Ljava/util/List;Landroid/content/ContentResolver;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;",
            "Landroid/content/ContentResolver;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-static {p0}, Landroid/hardware/fingerprint/Fingerprint$JsonSerializer;->toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "json":Ljava/lang/String;
    const-string/jumbo v1, "user_fingerprints"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    return-void
.end method

.method public static setFingerprintName(ILjava/lang/String;Landroid/content/ContentResolver;I)V
    .locals 6
    .param p0, "fingerId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/ContentResolver;
    .param p3, "userId"    # I

    .prologue
    .line 108
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Bad fingerId"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_0
    invoke-static {p2, p3}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 113
    .local v3, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 115
    .local v1, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_1

    .line 116
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint$Builder;

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/Fingerprint$Builder;-><init>(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 117
    .local v0, "builder":Landroid/hardware/fingerprint/Fingerprint$Builder;
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/Fingerprint$Builder;->name(Ljava/lang/String;)Landroid/hardware/fingerprint/Fingerprint$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint$Builder;->build()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    .end local v0    # "builder":Landroid/hardware/fingerprint/Fingerprint$Builder;
    .end local v1    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    invoke-static {v2, p2, p3}, Landroid/service/fingerprint/FingerprintUtils;->saveFingerprints(Ljava/util/List;Landroid/content/ContentResolver;I)V

    .line 123
    return-void
.end method
