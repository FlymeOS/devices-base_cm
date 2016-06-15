.class Landroid/net/wifi/ScanResult$FlymeInjector;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initFlymeExtraFields(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .param p0, "dest"    # Landroid/net/wifi/ScanResult;
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 408
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->HexSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->HexSSID:Ljava/lang/String;

    .line 409
    return-void
.end method

.method static initFlymeExtraFields(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiSsid;)V
    .locals 1
    .param p0, "dest"    # Landroid/net/wifi/ScanResult;
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 404
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->HexSSID:Ljava/lang/String;

    .line 405
    return-void

    .line 404
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method
