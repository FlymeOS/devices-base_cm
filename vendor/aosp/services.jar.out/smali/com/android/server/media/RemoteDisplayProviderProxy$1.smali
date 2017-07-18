.class Lcom/android/server/media/RemoteDisplayProviderProxy$1;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-set0(Lcom/android/server/media/RemoteDisplayProviderProxy;Z)Z

    .line 314
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get1(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get1(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-get0(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/media/RemoteDisplayState;

    move-result-object v2

    .line 315
    invoke-interface {v0, v1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;->onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    .line 312
    :cond_0
    return-void
.end method
