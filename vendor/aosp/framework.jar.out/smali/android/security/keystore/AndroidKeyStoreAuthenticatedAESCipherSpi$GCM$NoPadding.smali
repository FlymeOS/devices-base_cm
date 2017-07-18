.class public final Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
.super Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;-><init>(I)V

    .line 224
    return-void
.end method


# virtual methods
.method protected final engineGetOutputSize(I)I
    .locals 8
    .param p1, "inputLen"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getTagLengthBits()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 232
    .local v2, "tagLengthBytes":I
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->isEncrypting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 234
    int-to-long v6, v2

    .line 233
    add-long v0, v4, v6

    .line 239
    .local v0, "result":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 240
    const/4 v3, 0x0

    return v3

    .line 236
    .end local v0    # "result":J
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 237
    int-to-long v6, v2

    .line 236
    sub-long v0, v4, v6

    .restart local v0    # "result":J
    goto :goto_0

    .line 241
    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 242
    const v3, 0x7fffffff

    return v3

    .line 244
    :cond_2
    long-to-int v3, v0

    return v3
.end method

.method public bridge synthetic finalize()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->finalize()V

    return-void
.end method
