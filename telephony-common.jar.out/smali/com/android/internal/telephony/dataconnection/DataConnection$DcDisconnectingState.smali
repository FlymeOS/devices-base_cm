.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    .prologue
    .line 1899
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1904
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1931
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectingState not handled msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1934
    const/4 v2, 0x0

    .line 1937
    .local v2, "retVal":Z
    :goto_0
    return v2

    .line 1906
    .end local v2    # "retVal":Z
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectingState msg.what=EVENT_CONNECT. Defer. RefCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1908
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7500(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 1909
    const/4 v2, 0x1

    .line 1910
    .restart local v2    # "retVal":Z
    goto :goto_0

    .line 1913
    .end local v2    # "retVal":Z
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectingState msg.what=EVENT_DEACTIVATE_DONE RefCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1916
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1917
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v3, v4, :cond_0

    .line 1920
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v4

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 1921
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1926
    :goto_1
    const/4 v2, 0x1

    .line 1927
    .restart local v2    # "retVal":Z
    goto :goto_0

    .line 1923
    .end local v2    # "retVal":Z
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectState stale EVENT_DEACTIVATE_DONE dp.tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v5, v5, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1904
    nop

    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
