.class public Landroid/net/wifi/RssiPacketCountInfo;
.super Ljava/lang/Object;
.source "RssiPacketCountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RssiPacketCountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public rssi:I

.field public rxgood:I

.field public txbad:I

.field public txgood:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/net/wifi/RssiPacketCountInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/RssiPacketCountInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RssiPacketCountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rxgood:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rxgood:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/RssiPacketCountInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/wifi/RssiPacketCountInfo$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/net/wifi/RssiPacketCountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rxgood:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
