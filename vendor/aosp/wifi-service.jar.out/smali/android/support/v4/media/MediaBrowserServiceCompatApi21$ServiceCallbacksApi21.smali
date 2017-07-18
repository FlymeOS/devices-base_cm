.class public Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCallbacksApi21"
.end annotation


# static fields
.field private static final sNullParceledListSlice:Landroid/content/pm/ParceledListSlice;


# instance fields
.field private final mCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 68
    new-instance v3, Landroid/media/MediaDescription$Builder;

    invoke-direct {v3}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 69
    const-string/jumbo v4, "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"

    .line 68
    invoke-virtual {v3, v4}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    .line 70
    .local v0, "nullDescription":Landroid/media/MediaDescription;
    new-instance v1, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 71
    .local v1, "nullMediaItem":Landroid/media/browse/MediaBrowser$MediaItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "nullMediaItemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    sput-object v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSlice:Landroid/content/pm/ParceledListSlice;

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 78
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    check-cast p2, Landroid/media/session/MediaSession$Token;

    .end local p2    # "session":Ljava/lang/Object;
    invoke-interface {v0, p1, p2, p3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onConnectFailed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V

    .line 90
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    const/4 v0, 0x0

    .line 96
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-eqz p2, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "parcel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    .line 99
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    sget-object v4, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 105
    .end local v0    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    .end local v1    # "parcel":Landroid/os/Parcel;
    .end local v2    # "parcel$iterator":Ljava/util/Iterator;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-le v4, v5, :cond_2

    .line 106
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 110
    :goto_1
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v4, p1, v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 94
    return-void

    .line 106
    :cond_1
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .local v3, "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    goto :goto_1

    .line 108
    .end local v3    # "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :cond_2
    if-nez v0, :cond_3

    sget-object v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSlice:Landroid/content/pm/ParceledListSlice;

    .restart local v3    # "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    goto :goto_1

    .end local v3    # "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :cond_3
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .restart local v3    # "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    goto :goto_1
.end method
