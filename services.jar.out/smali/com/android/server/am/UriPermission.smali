.class final Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermission$1;,
        Lcom/android/server/am/UriPermission$Snapshot;,
        Lcom/android/server/am/UriPermission$PersistedTimeComparator;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/ActivityManagerService$GrantUri;)V
    .locals 2
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "uri"    # Lcom/android/server/am/ActivityManagerService$GrantUri;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 66
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 68
    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 70
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 73
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 89
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    .line 90
    iput-object p1, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    .line 92
    iput p3, p0, Lcom/android/server/am/UriPermission;->targetUid:I

    .line 93
    iput-object p4, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 94
    return-void
.end method

.method private addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 247
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 248
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addReadPermission(Lcom/android/server/am/UriPermission;)V

    .line 253
    :cond_1
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 272
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 273
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addWritePermission(Lcom/android/server/am/UriPermission;)V

    .line 278
    :cond_1
    return-void
.end method

.method private updateModeFlags()V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 98
    return-void
.end method


# virtual methods
.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .locals 6

    .prologue
    .line 377
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget-wide v4, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sourcePkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " targetPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " owned=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " global=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistable=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persisted=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistedCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 325
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    const-string v2, "readOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 329
    .local v1, "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    const-string v2, "writeOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 337
    .restart local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 341
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    :cond_2
    return-void
.end method

.method public getStrength(I)I
    .locals 1
    .param p1, "modeFlags"    # I

    .prologue
    .line 231
    and-int/lit8 p1, p1, 0x3

    .line 233
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 234
    const/4 v0, 0x3

    .line 240
    :goto_0
    return v0

    .line 235
    :cond_0
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 236
    const/4 v0, 0x2

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method grantModes(ILcom/android/server/am/UriPermissionOwner;)V
    .locals 2
    .param p1, "modeFlags"    # I
    .param p2, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 116
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 117
    .local v0, "persistable":Z
    :goto_0
    and-int/lit8 p1, p1, 0x3

    .line 120
    if-eqz v0, :cond_0

    .line 121
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 124
    :cond_0
    if-nez p2, :cond_3

    .line 125
    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 135
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 136
    return-void

    .line 116
    .end local v0    # "persistable":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    .restart local v0    # "persistable":Z
    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 128
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 130
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 131
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    goto :goto_1
.end method

.method initPersistedModes(IJ)V
    .locals 0
    .param p1, "modeFlags"    # I
    .param p2, "createdTime"    # J

    .prologue
    .line 105
    and-int/lit8 p1, p1, 0x3

    .line 108
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 109
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 110
    iput-wide p2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 112
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 113
    return-void
.end method

.method releasePersistableModes(I)Z
    .locals 4
    .param p1, "modeFlags"    # I

    .prologue
    .line 164
    and-int/lit8 p1, p1, 0x3

    .line 167
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 169
    .local v0, "before":I
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 170
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 172
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v1, :cond_0

    .line 173
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 177
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown read owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 264
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 265
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 267
    :cond_1
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown write owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 289
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 290
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 292
    :cond_1
    return-void
.end method

.method revokeModes(IZ)Z
    .locals 8
    .param p1, "modeFlags"    # I
    .param p2, "includingOwners"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    and-int/lit8 v6, p1, 0x40

    if-eqz v6, :cond_1

    move v2, v4

    .line 185
    .local v2, "persistable":Z
    :goto_0
    and-int/lit8 p1, p1, 0x3

    .line 188
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 190
    .local v0, "before":I
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_3

    .line 191
    if-eqz v2, :cond_0

    .line 192
    iget v6, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 193
    iget v6, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 195
    :cond_0
    iget v6, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 196
    iget-object v6, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    .line 197
    iget v6, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 198
    iget-object v6, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UriPermissionOwner;

    .line 199
    .local v3, "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v3, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_1

    .end local v0    # "before":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "persistable":Z
    .end local v3    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_1
    move v2, v5

    .line 184
    goto :goto_0

    .line 201
    .restart local v0    # "before":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "persistable":Z
    :cond_2
    iput-object v7, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 204
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_6

    .line 205
    if-eqz v2, :cond_4

    .line 206
    iget v6, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 207
    iget v6, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 209
    :cond_4
    iget v6, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 210
    iget-object v6, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v6, :cond_6

    if-eqz p2, :cond_6

    .line 211
    iget v6, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 212
    iget-object v6, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UriPermissionOwner;

    .line 213
    .restart local v3    # "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v3, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_2

    .line 215
    .end local v3    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_5
    iput-object v7, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 219
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    iget v6, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v6, :cond_7

    .line 220
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 223
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 224
    iget v6, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v6, v0, :cond_8

    :goto_3
    return v4

    :cond_8
    move v4, v5

    goto :goto_3
.end method

.method public snapshot()Lcom/android/server/am/UriPermission$Snapshot;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lcom/android/server/am/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V

    return-object v0
.end method

.method takePersistableModes(I)Z
    .locals 5
    .param p1, "modeFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 142
    and-int/lit8 p1, p1, 0x3

    .line 145
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v2, p1

    if-eq v2, p1, :cond_1

    .line 146
    const-string v2, "UriPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested flags 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but only 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " are allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 153
    .local v0, "before":I
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v3, p1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 155
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eqz v2, :cond_2

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 160
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v1

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
