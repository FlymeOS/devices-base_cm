.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;
.super Landroid/service/media/IMediaBrowserService$Stub;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinderProxyApi21"
.end annotation


# instance fields
.field final mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V
    .locals 0
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserService$Stub;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .line 131
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 149
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 137
    return-void
.end method

.method public disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-interface {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->disconnect(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 142
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 160
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 155
    return-void
.end method
