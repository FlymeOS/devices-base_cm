.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;
    }
.end annotation


# instance fields
.field mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

.field mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

.field mRequestPendingState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    .line 240
    const-string/jumbo v0, "RttStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 235
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    .line 236
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    .line 237
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mRequestPendingState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mRequestPendingState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 239
    return-void
.end method
