.class public Landroid/net/wifi/WifiApDevice;
.super Ljava/lang/Object;
.source "WifiApDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiApDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connectionTime:I

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/net/wifi/WifiApDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiApDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiApDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->ipAddress:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiApDevice;->connectionTime:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiApDevice;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WifiApDevice;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->ipAddress:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiApDevice;->connectionTime:I

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p1, Landroid/net/wifi/WifiApDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceName:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Landroid/net/wifi/WifiApDevice;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiApDevice;->ipAddress:Ljava/lang/String;

    .line 56
    iget v0, p1, Landroid/net/wifi/WifiApDevice;->connectionTime:I

    iput v0, p0, Landroid/net/wifi/WifiApDevice;->connectionTime:I

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p0, p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    instance-of v3, p1, Landroid/net/wifi/WifiApDevice;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 29
    check-cast v0, Landroid/net/wifi/WifiApDevice;

    .line 30
    .local v0, "other":Landroid/net/wifi/WifiApDevice;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 31
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 33
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiApDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v1, "\n IP assigned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiApDevice;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string v1, "\n connection time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiApDevice;->connectionTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Landroid/net/wifi/WifiApDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiApDevice;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Landroid/net/wifi/WifiApDevice;->connectionTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
