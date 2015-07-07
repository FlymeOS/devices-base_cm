.class Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
.super Landroid/media/VolumeProvider;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$UserRouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionVolumeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRouter$UserRouteInfo;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$UserRouteInfo;III)V
    .locals 0
    .param p2, "volumeControl"    # I
    .param p3, "maxVolume"    # I
    .param p4, "currentVolume"    # I

    .prologue
    .line 2234
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$0:Landroid/media/MediaRouter$UserRouteInfo;

    .line 2235
    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    .line 2236
    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 2252
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;-><init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2260
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 2240
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;-><init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2248
    return-void
.end method
