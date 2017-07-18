.class Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
.super Lcom/android/internal/util/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/util/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;->this$1:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;->this$1:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get5(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    .line 759
    const/4 v0, 0x1

    return v0
.end method
