.class Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalAuthenticationDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    .line 410
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    .line 408
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;)V
    .locals 0
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public finish([B[B)Landroid/security/keymaster/OperationResult;
    .locals 9
    .param p1, "signature"    # [B
    .param p2, "additionalEntropy"    # [B

    .prologue
    const/4 v6, 0x0

    .line 436
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 437
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "AAD stream does not support additional entropy"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    new-instance v1, Landroid/security/keymaster/OperationResult;

    .line 441
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    .line 442
    const-wide/16 v4, 0x0

    .line 444
    sget-object v7, Llibcore/util/EmptyArray;->BYTE:[B

    .line 445
    new-instance v8, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v8}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 440
    const/4 v2, 0x1

    .line 439
    invoke-direct/range {v1 .. v8}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    return-object v1
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .locals 10
    .param p1, "input"    # [B

    .prologue
    .line 415
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 416
    .local v0, "keymasterArgs":Landroid/security/keymaster/KeymasterArguments;
    const v2, -0x6ffffc18

    invoke-virtual {v0, v2, p1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 421
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v9

    .line 422
    .local v9, "result":Landroid/security/keymaster/OperationResult;
    iget v2, v9, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 423
    new-instance v1, Landroid/security/keymaster/OperationResult;

    .line 424
    iget v2, v9, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 425
    iget-object v3, v9, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 426
    iget-wide v4, v9, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 427
    array-length v6, p1

    .line 428
    iget-object v7, v9, Landroid/security/keymaster/OperationResult;->output:[B

    .line 429
    iget-object v8, v9, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    .line 423
    invoke-direct/range {v1 .. v8}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    .line 431
    .end local v9    # "result":Landroid/security/keymaster/OperationResult;
    .local v1, "result":Landroid/security/keymaster/OperationResult;
    :goto_0
    return-object v1

    .end local v1    # "result":Landroid/security/keymaster/OperationResult;
    .restart local v9    # "result":Landroid/security/keymaster/OperationResult;
    :cond_0
    move-object v1, v9

    .end local v9    # "result":Landroid/security/keymaster/OperationResult;
    .restart local v1    # "result":Landroid/security/keymaster/OperationResult;
    goto :goto_0
.end method
