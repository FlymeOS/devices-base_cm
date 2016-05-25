.class public Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_IDLE:Ljava/lang/String; = "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

.field private static final IDLE_WINDOW_SLOP:J = 0x493e0L

.field private static final INACTIVITY_IDLE_THRESHOLD:J = 0x4100a0L

.field private static final TAG:Ljava/lang/String; = "IdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/IdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

.field final mTrackedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracking()V

    .line 65
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;
    .locals 3
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 54
    sget-object v1, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/server/job/controllers/IdleController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initIdleStateTracking()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;-><init>(Lcom/android/server/job/controllers/IdleController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    .line 105
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->startTracking()V

    .line 106
    return-void
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 190
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 191
    :try_start_0
    const-string v2, "Idle: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 196
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    const-string v2, ".."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v0    # "i":I
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    const-string v2, "false"

    goto :goto_0

    .line 200
    .restart local v0    # "i":I
    :cond_1
    monitor-exit v3

    .line 201
    return-void

    .line 200
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    monitor-exit v1

    .line 78
    :cond_0
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportNewIdleState(Z)V
    .locals 4
    .param p1, "isIdle"    # Z

    .prologue
    .line 91
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 93
    .local v1, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 97
    return-void
.end method
