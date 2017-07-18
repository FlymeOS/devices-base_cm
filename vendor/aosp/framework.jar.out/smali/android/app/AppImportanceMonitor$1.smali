.class Landroid/app/AppImportanceMonitor$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppImportanceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppImportanceMonitor;


# direct methods
.method constructor <init>(Landroid/app/AppImportanceMonitor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppImportanceMonitor;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public onProcessDied(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 62
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    iget-object v1, v0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    .line 64
    const/16 v2, 0x3e8

    const/4 v3, 0x1

    .line 63
    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onProcessStateChanged(III)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 53
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    iget-object v1, v0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    .line 55
    invoke-static {p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    .line 56
    const/4 v3, 0x1

    .line 54
    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
