.class final Landroid/net/wifi/WifiLinkLayerStats$1;
.super Ljava/lang/Object;
.source "WifiLinkLayerStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiLinkLayerStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 196
    new-instance v0, Landroid/net/wifi/WifiLinkLayerStats;

    invoke-direct {v0}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    .line 197
    .local v0, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->BSSID:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time_scan:I

    .line 203
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiLinkLayerStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiLinkLayerStats;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 206
    new-array v0, p1, [Landroid/net/wifi/WifiLinkLayerStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiLinkLayerStats$1;->newArray(I)[Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    return-object v0
.end method
