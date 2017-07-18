.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceImplApi21"
.end annotation


# instance fields
.field final mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/media/MediaBrowserServiceCompat;

    .prologue
    .line 385
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->-get1(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->getServiceImpl()Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    .line 385
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 403
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 391
    return-void
.end method

.method public disconnect(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .locals 3
    .param p1, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->disconnect(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 396
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 409
    return-void
.end method
