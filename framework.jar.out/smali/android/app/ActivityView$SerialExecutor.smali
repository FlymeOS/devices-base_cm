.class Landroid/app/ActivityView$SerialExecutor;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field private mActive:Ljava/lang/Runnable;

.field private final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityView$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView$SerialExecutor;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityView$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/app/ActivityView$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityView$SerialExecutor$1;-><init>(Landroid/app/ActivityView$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Landroid/app/ActivityView$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/app/ActivityView$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 92
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/app/ActivityView$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Landroid/app/ActivityView;->-get7()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 107
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
