.class public final Landroid/telecom/CameraCapabilities;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/CameraCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeight:I

.field private final mMaxZoom:F

.field private final mWidth:I

.field private final mZoomSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Landroid/telecom/CameraCapabilities$1;

    invoke-direct {v0}, Landroid/telecom/CameraCapabilities$1;-><init>()V

    sput-object v0, Landroid/telecom/CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZFII)V
    .locals 0
    .param p1, "zoomSupported"    # Z
    .param p2, "maxZoom"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Landroid/telecom/CameraCapabilities;->mZoomSupported:Z

    .line 58
    iput p2, p0, Landroid/telecom/CameraCapabilities;->mMaxZoom:F

    .line 59
    iput p3, p0, Landroid/telecom/CameraCapabilities;->mWidth:I

    .line 60
    iput p4, p0, Landroid/telecom/CameraCapabilities;->mHeight:I

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/telecom/CameraCapabilities;->mHeight:I

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/telecom/CameraCapabilities;->mMaxZoom:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/telecom/CameraCapabilities;->mWidth:I

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/telecom/CameraCapabilities;->mZoomSupported:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/telecom/CameraCapabilities;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    invoke-virtual {p0}, Landroid/telecom/CameraCapabilities;->getMaxZoom()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 113
    invoke-virtual {p0}, Landroid/telecom/CameraCapabilities;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p0}, Landroid/telecom/CameraCapabilities;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
