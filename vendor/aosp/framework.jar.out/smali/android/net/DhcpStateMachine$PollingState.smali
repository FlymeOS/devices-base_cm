.class Landroid/net/DhcpStateMachine$PollingState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollingState"
.end annotation


# static fields
.field private static final MAX_DELAY_SECONDS:J = 0x20L


# instance fields
.field private delaySeconds:J

.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 274
    iput-object p1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private scheduleNextResultsCheck()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x20

    .line 279
    iget-object v0, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    const v2, 0x30008

    invoke-virtual {v1, v2}, Landroid/net/DhcpStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DhcpStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 280
    iget-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    .line 281
    iget-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 282
    iput-wide v6, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    .line 278
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 289
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    .line 290
    invoke-direct {p0}, Landroid/net/DhcpStateMachine$PollingState;->scheduleNextResultsCheck()V

    .line 287
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    const v1, 0x30008

    invoke-static {v0, v1}, Landroid/net/DhcpStateMachine;->-wrap3(Landroid/net/DhcpStateMachine;I)V

    .line 317
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 295
    const/4 v0, 0x1

    .line 297
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 310
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    .line 300
    :sswitch_0
    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-wrap0(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get9(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {p0}, Landroid/net/DhcpStateMachine$PollingState;->scheduleNextResultsCheck()V

    goto :goto_0

    .line 307
    :sswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get10(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x30002 -> :sswitch_1
        0x30008 -> :sswitch_0
    .end sparse-switch
.end method
