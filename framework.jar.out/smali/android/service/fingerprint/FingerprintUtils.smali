.class public Landroid/service/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FingerprintUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFingerprintIdForUser(ILandroid/content/ContentResolver;I)V
    .locals 5
    .param p0, "fingerId"    # I
    .param p1, "res"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .prologue
    .line 55
    invoke-static {p1, p2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I

    move-result-object v0

    .line 58
    .local v0, "fingerIds":[I
    if-nez p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 62
    aget v3, v0, v1

    if-eq v3, p0, :cond_0

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_2
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 65
    .local v2, "newList":[I
    array-length v3, v0

    aput p0, v2, v3

    .line 66
    const-string/jumbo v3, "user_fingerprint_ids"

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I
    .locals 8
    .param p0, "res"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .prologue
    .line 36
    const-string/jumbo v5, "user_fingerprint_ids"

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "fingerIdsRaw":Ljava/lang/String;
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 40
    .local v4, "result":[I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 41
    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "fingerStringIds":[Ljava/lang/String;
    array-length v5, v2

    new-array v4, v5, [I

    .line 43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 45
    :try_start_0
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "FingerprintUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when parsing finger id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 51
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "fingerStringIds":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    return-object v4
.end method

.method public static removeFingerprintIdForUser(ILandroid/content/ContentResolver;I)Z
    .locals 7
    .param p0, "fingerId"    # I
    .param p1, "res"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .prologue
    .line 75
    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Bad fingerId"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_0
    invoke-static {p1, p2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I

    move-result-object v0

    .line 78
    .local v0, "fingerIds":[I
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 79
    .local v4, "resultIds":[I
    const/4 v2, 0x0

    .line 80
    .local v2, "resultCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 81
    aget v5, v0, v1

    if-eq p0, v5, :cond_1

    .line 82
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "resultCount":I
    .local v3, "resultCount":I
    aget v5, v0, v1

    aput v5, v4, v2

    move v2, v3

    .line 80
    .end local v3    # "resultCount":I
    .restart local v2    # "resultCount":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    if-lez v2, :cond_3

    .line 86
    const-string/jumbo v5, "user_fingerprint_ids"

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 88
    const/4 v5, 0x1

    .line 90
    :goto_1
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
