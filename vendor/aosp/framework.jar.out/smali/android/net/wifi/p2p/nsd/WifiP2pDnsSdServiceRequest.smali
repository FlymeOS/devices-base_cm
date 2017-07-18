.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.source "WifiP2pDnsSdServiceRequest.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "dnsQuery"    # Ljava/lang/String;
    .param p2, "dnsType"    # I
    .param p3, "version"    # I

    .prologue
    .line 50
    invoke-static {p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createRequest(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public static newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
    .locals 4
    .param p0, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".local."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    const/16 v2, 0xc

    .line 81
    const/4 v3, 0x1

    .line 79
    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
    .locals 4
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string/jumbo v2, "instance name or service type cannot be null"

    .line 99
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".local."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "fullDomainName":Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    .line 104
    const/16 v2, 0x10

    .line 105
    const/4 v3, 0x1

    .line 103
    invoke-direct {v1, v0, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;-><init>(Ljava/lang/String;II)V

    return-object v1
.end method
