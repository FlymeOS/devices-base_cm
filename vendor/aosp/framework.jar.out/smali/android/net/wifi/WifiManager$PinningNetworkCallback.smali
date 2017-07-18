.class Landroid/net/wifi/WifiManager$PinningNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinningNetworkCallback"
.end annotation


# instance fields
.field private mPinnedNetwork:Landroid/net/Network;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 2103
    iput-object p1, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$PinningNetworkCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$PinningNetworkCallback;-><init>(Landroid/net/wifi/WifiManager;)V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v3, 0x0

    .line 2117
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 2119
    const-string/jumbo v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wifi alternate reality disabled on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iput-object v3, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    .line 2121
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-wrap1(Landroid/net/wifi/WifiManager;)V

    .line 2116
    :cond_0
    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2108
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    if-nez v0, :cond_0

    .line 2109
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 2110
    iput-object p1, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    .line 2111
    const-string/jumbo v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wifi alternate reality enabled on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_0
    return-void
.end method
