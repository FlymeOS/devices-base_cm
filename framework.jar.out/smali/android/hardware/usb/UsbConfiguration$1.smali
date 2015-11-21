.class final Landroid/hardware/usb/UsbConfiguration$1;
.super Ljava/lang/Object;
.source "UsbConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbConfiguration;
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
        "Landroid/hardware/usb/UsbConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbConfiguration;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .local v0, "attributes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .local v4, "maxPower":I
    const-class v6, Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 161
    .local v3, "interfaces":[Landroid/os/Parcelable;
    new-instance v1, Landroid/hardware/usb/UsbConfiguration;

    invoke-direct {v1, v2, v5, v0, v4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    .line 162
    .local v1, "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    .line 163
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbConfiguration;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Landroid/hardware/usb/UsbConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbConfiguration$1;->newArray(I)[Landroid/hardware/usb/UsbConfiguration;

    move-result-object v0

    return-object v0
.end method
