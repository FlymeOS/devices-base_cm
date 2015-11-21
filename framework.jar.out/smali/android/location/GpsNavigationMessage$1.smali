.class final Landroid/location/GpsNavigationMessage$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessage;
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
        "Landroid/location/GpsNavigationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 214
    new-instance v2, Landroid/location/GpsNavigationMessage;

    invoke-direct {v2}, Landroid/location/GpsNavigationMessage;-><init>()V

    .line 216
    .local v2, "navigationMessage":Landroid/location/GpsNavigationMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GpsNavigationMessage;->setType(B)V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GpsNavigationMessage;->setPrn(B)V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Landroid/location/GpsNavigationMessage;->setMessageId(S)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Landroid/location/GpsNavigationMessage;->setSubmessageId(S)V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .local v1, "dataLength":I
    new-array v0, v1, [B

    .line 223
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 224
    invoke-virtual {v2, v0}, Landroid/location/GpsNavigationMessage;->setData([B)V

    .line 226
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsNavigationMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 231
    new-array v0, p1, [Landroid/location/GpsNavigationMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->newArray(I)[Landroid/location/GpsNavigationMessage;

    move-result-object v0

    return-object v0
.end method
