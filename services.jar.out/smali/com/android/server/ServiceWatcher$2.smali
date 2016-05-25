.class Lcom/android/server/ServiceWatcher$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 307
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 309
    :cond_0
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
