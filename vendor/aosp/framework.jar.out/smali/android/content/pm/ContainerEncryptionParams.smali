.class public Landroid/content/pm/ContainerEncryptionParams;
.super Ljava/lang/Object;
.source "ContainerEncryptionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ContainerEncryptionParams$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ContainerEncryptionParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENC_PARAMS_IV_PARAMETERS:I = 0x1

.field private static final MAC_PARAMS_NONE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ContainerEncryptionParams"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ContainerEncryptionParams{"


# instance fields
.field private final mAuthenticatedDataStart:J

.field private final mDataEnd:J

.field private final mEncryptedDataStart:J

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private final mMacAlgorithm:Ljava/lang/String;

.field private final mMacKey:Ljavax/crypto/SecretKey;

.field private final mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mMacTag:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Landroid/content/pm/ContainerEncryptionParams$1;

    invoke-direct {v0}, Landroid/content/pm/ContainerEncryptionParams$1;-><init>()V

    .line 369
    sput-object v0, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .local v0, "encParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 333
    .local v1, "encParamsEncoded":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .local v2, "macParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    .line 346
    packed-switch v0, :pswitch_data_0

    .line 351
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    :pswitch_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 355
    packed-switch v2, :pswitch_data_1

    .line 360
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :pswitch_1
    iput-object v6, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 364
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    if-nez v3, :cond_0

    .line 365
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "encryptionKey == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :cond_0
    return-void

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 355
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;)V
    .locals 14
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 91
    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    .line 92
    const-wide/16 v12, -0x1

    .line 91
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    .locals 2
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .param p4, "macAlgorithm"    # Ljava/lang/String;
    .param p5, "macSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "macKey"    # Ljavax/crypto/SecretKey;
    .param p7, "macTag"    # [B
    .param p8, "authenticatedDataStart"    # J
    .param p10, "encryptedDataStart"    # J
    .param p12, "dataEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-nez p2, :cond_1

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encryptionSpec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    if-nez p3, :cond_2

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encryptionKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    if-nez p6, :cond_3

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "macKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_4

    .line 135
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 136
    const-string/jumbo v1, "Unknown parameter spec class; must be IvParameters"

    .line 135
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_4
    iput-object p1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 140
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2    # "encryptionSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 141
    iput-object p3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 143
    iput-object p4, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 145
    iput-object p6, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    .line 146
    iput-object p7, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    .line 148
    iput-wide p8, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    .line 149
    iput-wide p10, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    .line 150
    iput-wide p12, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    .line 119
    return-void
.end method

.method private static final isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z
    .locals 5
    .param p0, "key1"    # Ljavax/crypto/SecretKey;
    .param p1, "key2"    # Ljavax/crypto/SecretKey;

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "keyFormat":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "otherKeyFormat":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 242
    if-eq v0, v1, :cond_0

    .line 243
    return v4

    .line 246
    :cond_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 247
    return v4

    .line 250
    :cond_1
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 251
    return v4

    .line 254
    :cond_2
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 255
    return v4

    .line 259
    :cond_3
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    if-ne p0, p1, :cond_0

    .line 201
    return v7

    .line 204
    :cond_0
    instance-of v1, p1, Landroid/content/pm/ContainerEncryptionParams;

    if-nez v1, :cond_1

    .line 205
    return v6

    :cond_1
    move-object v0, p1

    .line 208
    check-cast v0, Landroid/content/pm/ContainerEncryptionParams;

    .line 211
    .local v0, "other":Landroid/content/pm/ContainerEncryptionParams;
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    iget-wide v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 212
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    iget-wide v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 214
    :cond_2
    return v6

    .line 213
    :cond_3
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    iget-wide v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 218
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v1, v2}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 225
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v1, v2}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v2, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eq v1, v2, :cond_7

    .line 231
    :cond_4
    return v6

    .line 220
    :cond_5
    return v6

    .line 226
    :cond_6
    return v6

    .line 234
    :cond_7
    return v7
.end method

.method public getAuthenticatedDataStart()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    return-wide v0
.end method

.method public getDataEnd()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    return-wide v0
.end method

.method public getEncryptedDataStart()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    return-wide v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getEncryptionSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMacSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getMacTag()[B
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 266
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v1, 0x3

    .line 267
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 268
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    .line 269
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 270
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 271
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 272
    int-to-long v2, v0

    iget-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    const-wide/16 v6, 0x17

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 273
    int-to-long v2, v0

    iget-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    const-wide/16 v6, 0x1d

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 274
    int-to-long v2, v0

    iget-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    const-wide/16 v6, 0x1f

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 276
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ContainerEncryptionParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mEncryptionAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string/jumbo v1, "mEncryptionSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string/jumbo v1, "mEncryptionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v1, "mMacAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string/jumbo v1, "mMacSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v1, "mMacKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v1, ",mAuthenticatedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v1, ",mEncryptedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v1, ",mDataEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 315
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 317
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 320
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 322
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 324
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 326
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    return-void
.end method
