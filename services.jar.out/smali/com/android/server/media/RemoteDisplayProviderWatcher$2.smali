.class Lcom/android/server/media/RemoteDisplayProviderWatcher$2;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->-wrap0(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    .line 210
    return-void
.end method
