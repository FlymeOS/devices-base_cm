.class Landroid/net/wifi/WifiConfiguration$FlymeInjector;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initFlymeExtraFields(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p0, "dest"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1750
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    .line 1751
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->BandMode:I

    .line 1752
    const-string v0, "0"

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->adhocMode:Ljava/lang/String;

    .line 1753
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKeyEncry:Ljava/lang/String;

    .line 1754
    return-void
.end method

.method static initFlymeExtraFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p0, "dest"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1757
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    .line 1758
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->BandMode:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->BandMode:I

    .line 1759
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->adhocMode:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->adhocMode:Ljava/lang/String;

    .line 1760
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKeyEncry:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKeyEncry:Ljava/lang/String;

    .line 1761
    return-void
.end method

.method static readFlymeExtraFields(Landroid/os/Parcel;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1771
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    .line 1772
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->BandMode:I

    .line 1773
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->adhocMode:Ljava/lang/String;

    .line 1774
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKeyEncry:Ljava/lang/String;

    .line 1775
    return-void
.end method

.method static writeFlymeExtraFields(Landroid/net/wifi/WifiConfiguration;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "source"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1765
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->BandMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->adhocMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1767
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKeyEncry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1768
    return-void
.end method
