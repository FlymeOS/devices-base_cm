.class Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string/jumbo v1, "deferring message until return to idle"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-wrap0(Lcom/android/internal/telephony/WakeLockStateMachine;Landroid/os/Message;)V

    .line 189
    return v2

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string/jumbo v1, "broadcast complete, returning to idle"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get0(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->-wrap1(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V

    .line 194
    return v2

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string/jumbo v1, "mWakeLock released while still in WaitingState!"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->loge(Ljava/lang/String;)V

    .line 202
    :cond_0
    return v2

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
