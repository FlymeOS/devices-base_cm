.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CertificateChainValidator$1;,
        Landroid/net/http/CertificateChainValidator$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateChainValidator"


# instance fields
.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 82
    .local v5, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v6, 0x0

    check-cast v6, Ljava/security/KeyStore;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 83
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 84
    .local v4, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v6, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    .line 85
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    iput-object v4, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "X.509 TrustManagerFactory must be available"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 90
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "X.509 TrustManagerFactory cannot be initialized"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 94
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_1
    iget-object v6, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v6, :cond_2

    .line 95
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "None of the X.509 TrustManagers are X509TrustManager"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/CertificateChainValidator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/http/CertificateChainValidator$1;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 270
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 277
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "defaultErrorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    if-eqz p2, :cond_0

    .end local p2    # "errorMessage":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 260
    return-void

    .restart local p2    # "errorMessage":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    .line 258
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 72
    # getter for: Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sInstance:Landroid/net/http/CertificateChainValidator;
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->access$100()Landroid/net/http/CertificateChainValidator;

    move-result-object v0

    return-object v0
.end method

.method private getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 12

    .prologue
    .line 176
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 177
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v9, 0x0

    check-cast v9, Ljava/security/KeyStore;

    invoke-virtual {v6, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    .line 187
    .local v7, "tms":[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    .line 188
    .local v4, "sentUpdate":Z
    move-object v0, v7

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 190
    .local v5, "tm":Ljavax/net/ssl/TrustManager;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "handleTrustStorageUpdate"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 191
    .local v8, "updateMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 192
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    const/4 v4, 0x1

    .line 188
    .end local v8    # "updateMethod":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "sentUpdate":Z
    .end local v5    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v7    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "CertificateChainValidator"

    const-string v10, "Couldn\'t find default X.509 TrustManagerFactory"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_2
    return-void

    .line 181
    :catch_1
    move-exception v1

    .line 182
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v9, "CertificateChainValidator"

    const-string v10, "Couldn\'t initialize default X.509 TrustManagerFactory"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 197
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "sentUpdate":Z
    .restart local v7    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_1
    if-nez v4, :cond_0

    .line 198
    const-string v9, "CertificateChainValidator"

    const-string v10, "Didn\'t find a TrustManager to handle CA list update"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 194
    .restart local v5    # "tm":Ljavax/net/ssl/TrustManager;
    :catch_2
    move-exception v9

    goto :goto_1
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 6
    .param p0, "certChain"    # [[B
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 152
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    :cond_1
    array-length v4, p0

    new-array v3, v4, [Ljava/security/cert/X509Certificate;

    .line 158
    .local v3, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 159
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 160
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "can\'t read certificate"

    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 167
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "i":I
    :cond_2
    invoke-static {v3, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v4

    return-object v4
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 8
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 214
    aget-object v1, p0, v4

    .line 215
    .local v1, "currCertificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_0

    .line 216
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "certificate for this site is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 219
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    # getter for: Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sVerifier:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->access$200()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    new-instance v7, Landroid/net/http/DelegatingSSLSession$CertificateWrap;

    invoke-direct {v7, v1}, Landroid/net/http/DelegatingSSLSession$CertificateWrap;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v6, p1, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 223
    .local v4, "valid":Z
    :cond_1
    if-nez v4, :cond_2

    .line 227
    new-instance v6, Landroid/net/http/SslError;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 244
    :goto_0
    return-object v6

    .line 231
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    .line 232
    .local v5, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    instance-of v6, v5, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v6, :cond_3

    .line 233
    move-object v0, v5

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v3, v0

    .line 234
    .local v3, "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v3, p0, p2, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 238
    .end local v3    # "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 236
    :cond_3
    invoke-interface {v5, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    .end local v5    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Landroid/net/http/SslError;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .param p1, "connection"    # Landroid/net/http/HttpsConnection;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 115
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 123
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 124
    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 136
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 128
    .restart local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    .line 129
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    .line 130
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
