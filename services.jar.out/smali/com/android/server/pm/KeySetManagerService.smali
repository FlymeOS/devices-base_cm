.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field protected static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManagerService"

.field private static lastIssuedKeyId:J

.field private static lastIssuedKeySetId:J


# instance fields
.field protected final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    sput-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 64
    sput-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 68
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 69
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 70
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez p1, :cond_0

    .line 311
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "Provided keys cannot be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 314
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v15

    invoke-direct {v2, v15}, Landroid/util/ArraySet;-><init>(I)V

    .line 315
    .local v2, "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/PublicKey;

    .line 316
    .local v8, "k":Ljava/security/PublicKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/pm/KeySetManagerService;->addPublicKeyLPw(Ljava/security/PublicKey;)J

    move-result-wide v6

    .line 317
    .local v6, "id":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v6    # "id":J
    .end local v8    # "k":Ljava/security/PublicKey;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/KeySetManagerService;->getIdFromKeyIdsLPr(Ljava/util/Set;)J

    move-result-wide v4

    .line 322
    .local v4, "existingKeySetId":J
    const-wide/16 v16, -0x1

    cmp-long v15, v4, v16

    if-eqz v15, :cond_2

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/KeySetHandle;

    .line 348
    :goto_1
    return-object v15

    .line 327
    :cond_2
    new-instance v9, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v9}, Lcom/android/server/pm/KeySetHandle;-><init>()V

    .line 329
    .local v9, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/KeySetManagerService;->getFreeKeySetIDLPw()J

    move-result-wide v6

    .line 331
    .restart local v6    # "id":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6, v7, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 336
    .local v14, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 337
    .local v10, "p":Lcom/android/server/pm/PackageSetting;
    iget-object v15, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v15, :cond_3

    .line 338
    iget-object v15, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v12

    .line 339
    .local v12, "pProperSigning":J
    const-wide/16 v16, -0x1

    cmp-long v15, v12, v16

    if-eqz v15, :cond_3

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 341
    .local v11, "pSigningKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 342
    iget-object v15, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15, v6, v7}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    goto :goto_2

    .end local v10    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "pSigningKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v12    # "pProperSigning":J
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_4
    move-object v15, v9

    .line 348
    goto :goto_1
.end method

.method private addPublicKeyLPw(Ljava/security/PublicKey;)J
    .locals 6
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    move-result-wide v0

    .line 357
    .local v0, "existingKeyId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 365
    .end local v0    # "existingKeyId":J
    :goto_0
    return-wide v0

    .line 361
    .restart local v0    # "existingKeyId":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreePublicKeyIdLPw()J

    move-result-wide v2

    .line 363
    .local v2, "id":J
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-wide v0, v2

    .line 365
    goto :goto_0
.end method

.method private clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 465
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllSigningKeySets()V

    .line 466
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 467
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 468
    return-void
.end method

.method private getFreeKeySetIDLPw()J
    .locals 4

    .prologue
    .line 402
    sget-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 403
    sget-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    return-wide v0
.end method

.method private getFreePublicKeyIdLPw()J
    .locals 4

    .prologue
    .line 410
    sget-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 411
    sget-wide v0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    return-wide v0
.end method

.method private getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .locals 4
    .param p1, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, "keySetIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 201
    .local v1, "value":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 205
    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :goto_1
    return-wide v2

    .line 199
    .restart local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .locals 6
    .param p1, "k"    # Ljava/security/PublicKey;

    .prologue
    .line 387
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 388
    .local v1, "encodedPublicKey":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "publicKeyIndex":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 389
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    .line 390
    .local v3, "value":Ljava/security/PublicKey;
    new-instance v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 391
    .local v0, "encodedExistingKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 395
    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :goto_1
    return-wide v4

    .line 388
    .restart local v0    # "encodedExistingKey":Ljava/lang/String;
    .restart local v3    # "value":Ljava/security/PublicKey;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method private getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "keyMapIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 376
    .local v1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 380
    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_1
    return-wide v2

    .line 374
    .restart local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private getOriginalKeySetsByPackageNameLPr(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 473
    .local v6, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_0

    .line 474
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unknown package"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 476
    :cond_0
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_1

    .line 477
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Package has no keySet data"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 479
    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 480
    .local v2, "knownKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 482
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-wide v4, v0, v1

    .line 483
    .local v4, "ks":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "ks":J
    :cond_2
    return-object v2
.end method


# virtual methods
.method public addDefinedKeySetToPackageLPw(Ljava/lang/String;Landroid/util/ArraySet;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 130
    :cond_0
    const-string v4, "KeySetManagerService"

    const-string v5, "Got null argument for a defined keyset, ignoring!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 134
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2

    .line 135
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Unknown package"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v2

    .line 139
    .local v2, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-direct {p0, v2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .line 140
    .local v0, "id":J
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v0, v1, p3}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public addSigningKeySetToPackageLPw(Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 167
    :cond_0
    const-string v9, "KeySetManagerService"

    const-string v10, "Got null argument for a signing keyset, ignoring!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    return-void

    .line 171
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v6

    .line 172
    .local v6, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-direct {p0, v6}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v2

    .line 173
    .local v2, "id":J
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 174
    .local v8, "publicKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-nez v8, :cond_3

    .line 175
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "Got invalid KeySet id"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 178
    :cond_3
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 179
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v7, :cond_4

    .line 180
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "No such package!"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 182
    :cond_4
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v9, v2, v3}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 185
    const/4 v1, 0x0

    .local v1, "keySetIndex":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 186
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 187
    .local v4, "keySetID":J
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 188
    .local v0, "definedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 189
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v9, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    .line 185
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addUpgradeKeySetToPackageLPw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    const-string v1, "KeySetManagerService"

    const-string v2, "Got null argument for a defined keyset, ignoring!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 154
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2

    .line 155
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Unknown package"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_2
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 495
    const/4 v12, 0x0

    .line 496
    .local v12, "printedHeader":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 497
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 498
    .local v7, "keySetPackage":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 501
    :cond_1
    if-nez v12, :cond_3

    .line 502
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 503
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 504
    :cond_2
    const-string v15, "Key Set Manager:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    const/4 v12, 0x1

    .line 507
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 508
    .local v11, "pkg":Lcom/android/server/pm/PackageSetting;
    const-string v15, "  ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v15, :cond_0

    .line 510
    const/4 v13, 0x0

    .line 511
    .local v13, "printedLabel":Z
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 512
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v13, :cond_4

    .line 513
    const-string v15, "      KeySets Aliases: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    const/4 v13, 0x1

    .line 518
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    const/16 v15, 0x3d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 520
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 516
    :cond_4
    const-string v15, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 522
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_5
    if-eqz v13, :cond_6

    .line 523
    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    :cond_6
    const/4 v13, 0x0

    .line 526
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 527
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v2

    .local v2, "arr$":[J
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v10, :cond_8

    aget-wide v8, v2, v6

    .line 528
    .local v8, "keySetId":J
    if-nez v13, :cond_7

    .line 529
    const-string v15, "      Defined KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    const/4 v13, 0x1

    .line 534
    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 532
    :cond_7
    const-string v15, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 537
    .end local v2    # "arr$":[J
    .end local v6    # "i$":I
    .end local v8    # "keySetId":J
    .end local v10    # "len$":I
    :cond_8
    if-eqz v13, :cond_9

    .line 538
    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    :cond_9
    const/4 v13, 0x0

    .line 541
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v14

    .line 542
    .local v14, "signingKeySets":[J
    if-eqz v14, :cond_b

    .line 543
    move-object v2, v14

    .restart local v2    # "arr$":[J
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_5
    if-ge v6, v10, :cond_b

    aget-wide v8, v2, v6

    .line 544
    .restart local v8    # "keySetId":J
    if-nez v13, :cond_a

    .line 545
    const-string v15, "      Signing KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    const/4 v13, 0x1

    .line 550
    :goto_6
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 548
    :cond_a
    const-string v15, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 553
    .end local v2    # "arr$":[J
    .end local v6    # "i$":I
    .end local v8    # "keySetId":J
    .end local v10    # "len$":I
    :cond_b
    if-eqz v13, :cond_c

    .line 554
    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    :cond_c
    const/4 v13, 0x0

    .line 557
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 558
    iget-object v15, v11, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v2

    .restart local v2    # "arr$":[J
    array-length v10, v2

    .restart local v10    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_7
    if-ge v6, v10, :cond_e

    aget-wide v8, v2, v6

    .line 559
    .restart local v8    # "keySetId":J
    if-nez v13, :cond_d

    .line 560
    const-string v15, "      Upgrade KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 561
    const/4 v13, 0x1

    .line 565
    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 563
    :cond_d
    const-string v15, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 568
    .end local v2    # "arr$":[J
    .end local v6    # "i$":I
    .end local v8    # "keySetId":J
    .end local v10    # "len$":I
    :cond_e
    if-eqz v13, :cond_0

    .line 569
    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "keySetPackage":Ljava/lang/String;
    .end local v11    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "printedLabel":Z
    .end local v14    # "signingKeySets":[J
    :cond_f
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 225
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v2, :cond_1

    .line 226
    :cond_0
    const/4 v2, 0x0

    .line 232
    :goto_0
    return-object v2

    .line 228
    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 229
    .local v0, "keySetId":Ljava/lang/Long;
    if-nez v0, :cond_2

    .line 230
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySet alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    goto :goto_0
.end method

.method public getKeySetByIdLPr(J)Lcom/android/server/pm/KeySetHandle;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetHandle;

    return-object v0
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 244
    const/4 v1, 0x0

    .line 250
    :cond_0
    return-object v1

    .line 246
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 247
    .local v1, "mPubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 248
    .local v2, "pkId":J
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 262
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    goto :goto_0
.end method

.method public getUpgradeKeySetsByPackageNameLPr(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 280
    .local v6, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/KeySetHandle;>;"
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 281
    .local v5, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_0

    .line 282
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unknown package"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    :cond_0
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_1

    .line 285
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Package has no keySet data"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 287
    :cond_1
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-wide v2, v0, v1

    .line 289
    .local v2, "l":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "l":J
    .end local v4    # "len$":I
    :cond_2
    return-object v6
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    .line 109
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 110
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    .line 111
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Invalid package name"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 116
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Package has no KeySet data"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .line 119
    .local v0, "id":J
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 86
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    .line 87
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Invalid package name"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v3, :cond_1

    .line 90
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Package has no KeySet data"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .line 93
    .local v0, "id":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 94
    const/4 v3, 0x0

    .line 96
    :goto_0
    return v3

    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->packageIsSignedBy(J)Z

    move-result v3

    goto :goto_0
.end method

.method readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 698
    const/4 v0, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 676
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 678
    .local v4, "outerDepth":I
    const-wide/16 v0, 0x0

    .line 680
    .local v0, "currentKeySetId":J
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    if-ne v6, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_3

    .line 681
    :cond_1
    if-eq v6, v9, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 684
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 685
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "keyset"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v0

    .line 687
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v8, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v8}, Lcom/android/server/pm/KeySetHandle;-><init>()V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 688
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 689
    :cond_2
    const-string v7, "key-id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v2

    .line 691
    .local v2, "id":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 694
    .end local v2    # "id":J
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 623
    const-wide/16 v0, 0x0

    .line 624
    .local v0, "currentKeySetId":J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 625
    .local v3, "outerDepth":I
    const-string v8, "version"

    invoke-interface {p1, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, "recordedVersion":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_2

    .line 628
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    if-eq v7, v10, :cond_1

    if-ne v7, v11, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-gt v8, v3, :cond_0

    .line 635
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 636
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v4}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_0

    .line 641
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "type":I
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .restart local v7    # "type":I
    if-eq v7, v10, :cond_7

    if-ne v7, v11, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_7

    .line 642
    :cond_3
    if-eq v7, v11, :cond_2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    .line 645
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "keys"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 648
    :cond_4
    const-string v8, "keysets"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 649
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 650
    :cond_5
    const-string v8, "lastIssuedKeyId"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 651
    const-string v8, "value"

    invoke-interface {p1, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    goto :goto_1

    .line 652
    :cond_6
    const-string v8, "lastIssuedKeySetId"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 653
    const-string v8, "value"

    invoke-interface {p1, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    goto :goto_1

    .line 656
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 660
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 663
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 664
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 667
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 672
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 703
    const-string v5, "identifier"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "encodedID":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 705
    .local v2, "identifier":J
    const-string v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "encodedPublicKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 707
    .local v4, "pub":Ljava/security/PublicKey;
    if-eqz v4, :cond_0

    .line 708
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 710
    :cond_0
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getOriginalKeySetsByPackageNameLPr(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 417
    .local v0, "deletableKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 418
    .local v1, "deletableKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 419
    .local v6, "knownKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 420
    .local v7, "ks":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "knownKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    check-cast v6, Landroid/util/ArraySet;

    .line 421
    .restart local v6    # "knownKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-eqz v6, :cond_0

    .line 422
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 427
    .end local v7    # "ks":Ljava/lang/Long;
    :cond_1
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 428
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 431
    invoke-direct {p0, v9}, Lcom/android/server/pm/KeySetManagerService;->getOriginalKeySetsByPackageNameLPr(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .line 432
    .local v5, "knownKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 433
    new-instance v6, Landroid/util/ArraySet;

    .end local v6    # "knownKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 434
    .restart local v6    # "knownKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 435
    .restart local v7    # "ks":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "knownKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    check-cast v6, Landroid/util/ArraySet;

    .line 436
    .restart local v6    # "knownKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-eqz v6, :cond_3

    .line 437
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    goto :goto_1

    .line 444
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "knownKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v7    # "ks":Ljava/lang/Long;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 445
    .restart local v7    # "ks":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    .line 446
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    .line 448
    .end local v7    # "ks":Ljava/lang/Long;
    :cond_5
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 449
    .local v4, "keyId":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_3

    .line 453
    .end local v4    # "keyId":Ljava/lang/Long;
    :cond_6
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 454
    .restart local v9    # "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 455
    .local v8, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 456
    .restart local v7    # "ks":Ljava/lang/Long;
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/android/server/pm/PackageKeySetData;->removeSigningKeySet(J)V

    goto :goto_4

    .line 460
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "ks":Ljava/lang/Long;
    .end local v8    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 461
    .restart local v8    # "p":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v8}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 462
    return-void
.end method

.method writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 576
    const-string v0, "keyset-settings"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    const-string v0, "version"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 580
    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 581
    const-string v0, "value"

    sget-wide v2, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    const-string v0, "value"

    sget-wide v2, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 585
    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    const-string v0, "keyset-settings"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 604
    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    const/4 v1, 0x0

    .local v1, "keySetIndex":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 606
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 607
    .local v2, "id":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 608
    .local v6, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    const-string v7, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 611
    .local v4, "keyId":J
    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    const-string v7, "identifier"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 615
    .end local v4    # "keyId":J
    :cond_0
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":J
    .end local v6    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 590
    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 591
    const/4 v4, 0x0

    .local v4, "pKeyIndex":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 592
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 593
    .local v2, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    .line 594
    .local v1, "key":Ljava/security/PublicKey;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/KeySetManagerService;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "encodedKey":Ljava/lang/String;
    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    const-string v5, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    const-string v5, "value"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 591
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 600
    .end local v0    # "encodedKey":Ljava/lang/String;
    .end local v1    # "key":Ljava/security/PublicKey;
    .end local v2    # "id":J
    :cond_0
    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    return-void
.end method
