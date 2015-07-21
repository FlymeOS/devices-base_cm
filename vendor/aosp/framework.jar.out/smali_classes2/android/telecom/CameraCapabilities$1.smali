.class final Landroid/telecom/CameraCapabilities$1;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CameraCapabilities;
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
        "Landroid/telecom/CameraCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CameraCapabilities;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 77
    .local v2, "supportsZoom":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 78
    .local v1, "maxZoom":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "height":I
    new-instance v4, Landroid/telecom/CameraCapabilities;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/telecom/CameraCapabilities;-><init>(ZFII)V

    return-object v4

    .line 76
    .end local v0    # "height":I
    .end local v1    # "maxZoom":F
    .end local v2    # "supportsZoom":Z
    .end local v3    # "width":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/telecom/CameraCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CameraCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/CameraCapabilities;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Landroid/telecom/CameraCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/telecom/CameraCapabilities$1;->newArray(I)[Landroid/telecom/CameraCapabilities;

    move-result-object v0

    return-object v0
.end method
