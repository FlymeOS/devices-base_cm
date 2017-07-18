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
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 250
    new-instance v2, Landroid/location/GpsNavigationMessage;

    invoke-direct {v2}, Landroid/location/GpsNavigationMessage;-><init>()V

    .line 252
    .local v2, "navigationMessage":Landroid/location/GpsNavigationMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setType(B)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setPrn(B)V

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setMessageId(S)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setSubmessageId(S)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .local v1, "dataLength":I
    new-array v0, v1, [B

    .line 259
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 260
    invoke-virtual {v2, v0}, Landroid/location/GpsNavigationMessage;->setData([B)V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 264
    .local v3, "status":I
    int-to-short v4, v3

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    .line 269
    .end local v3    # "status":I
    :goto_0
    return-object v2

    .line 266
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsNavigationMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 274
    new-array v0, p1, [Landroid/location/GpsNavigationMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->newArray(I)[Landroid/location/GpsNavigationMessage;

    move-result-object v0

    return-object v0
.end method
