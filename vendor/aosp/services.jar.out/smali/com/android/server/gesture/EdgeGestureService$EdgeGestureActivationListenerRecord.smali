.class final Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
.super Landroid/service/gesture/IEdgeGestureHostCallback$Stub;
.source "EdgeGestureService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeGestureActivationListenerRecord"
.end annotation


# instance fields
.field public final listener:Landroid/service/gesture/IEdgeGestureActivationListener;

.field public longLiving:Z

.field private mActive:Z

.field public positions:I

.field public sensitivity:I

.field final synthetic this$0:Lcom/android/server/gesture/EdgeGestureService;


# direct methods
.method public constructor <init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/service/gesture/IEdgeGestureActivationListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/service/gesture/IEdgeGestureActivationListener;

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-direct {p0}, Landroid/service/gesture/IEdgeGestureHostCallback$Stub;-><init>()V

    .line 170
    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->longLiving:Z

    .line 87
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    .line 88
    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    .line 89
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->updateFlags(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->eligibleForActivation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->notifyEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    return v0
.end method

.method private eligibleForActivation(I)Z
    .locals 1
    .param p1, "positionFlag"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 5
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    const/4 v4, 0x0

    .line 106
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    iget v2, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 109
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    iget v2, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->INDEX:I

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/service/gesture/IEdgeGestureActivationListener;->onEdgeGestureActivation(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EdgeGestureService"

    const-string v2, "Failed to notify process, assuming it died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iput-boolean v4, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->binderDied()V

    goto :goto_0
.end method

.method private updateFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 96
    and-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    .line 97
    const/high16 v0, 0x70000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    .line 98
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->longLiving:Z

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    # invokes: Lcom/android/server/gesture/EdgeGestureService;->removeListenerRecord(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V
    invoke-static {v0, p0}, Lcom/android/server/gesture/EdgeGestureService;->access$000(Lcom/android/server/gesture/EdgeGestureService;Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V

    .line 93
    return-void
.end method

.method public dropEventsUntilLift()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    # getter for: Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;
    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->access$100(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->dropSequence()Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPositions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public gainTouchFocus(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    # getter for: Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;
    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->access$100(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->unlockFilter()Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    return v0
.end method

.method public restoreListenerState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    # getter for: Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;
    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->access$100(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->unlockFilter()Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 148
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    # getter for: Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->access$200(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    # getter for: Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->access$300(Lcom/android/server/gesture/EdgeGestureService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7d19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    monitor-exit v1

    .line 153
    :cond_0
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
