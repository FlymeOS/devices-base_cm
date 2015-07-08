.class final Landroid/net/wifi/WifiApDevice$1;
.super Ljava/lang/Object;
.source "WifiApDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApDevice;
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
        "Landroid/net/wifi/WifiApDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiApDevice;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Landroid/net/wifi/WifiApDevice;

    invoke-direct {v0}, Landroid/net/wifi/WifiApDevice;-><init>()V

    .line 73
    .local v0, "device":Landroid/net/wifi/WifiApDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiApDevice;->deviceName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiApDevice;->ipAddress:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiApDevice;->connectionTime:I

    .line 77
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiApDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiApDevice;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    new-array v0, p1, [Landroid/net/wifi/WifiApDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDevice$1;->newArray(I)[Landroid/net/wifi/WifiApDevice;

    move-result-object v0

    return-object v0
.end method
