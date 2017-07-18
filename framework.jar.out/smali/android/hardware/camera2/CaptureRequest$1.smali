.class final Landroid/hardware/camera2/CaptureRequest$1;
.super Ljava/lang/Object;
.source "CaptureRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureRequest;
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
        "Landroid/hardware/camera2/CaptureRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/CaptureRequest;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 422
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {v0, v1, v1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)V

    .line 423
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-static {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->-wrap0(Landroid/hardware/camera2/CaptureRequest;Landroid/os/Parcel;)V

    .line 425
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 430
    new-array v0, p1, [Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$1;->newArray(I)[Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method
