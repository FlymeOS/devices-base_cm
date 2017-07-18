.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23;->getMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23;

.field final synthetic val$cb:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23;Landroid/os/Handler;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$cb"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;

    .prologue
    .line 419
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;->val$cb:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;

    invoke-direct {p0, p2}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 422
    const-string/jumbo v2, "media_item"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 423
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    const/4 v1, 0x0

    .line 424
    .local v1, "itemParcel":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 426
    .local v1, "itemParcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 428
    .end local v1    # "itemParcel":Landroid/os/Parcel;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;->val$cb:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;

    invoke-interface {v2, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;->onItemLoaded(ILandroid/os/Bundle;Landroid/os/Parcel;)V

    .line 421
    return-void
.end method
