.class Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;
.super Landroid/os/Handler;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "x1"    # Lcom/android/internal/telephony/SubscriptionController$1;

    .prologue
    .line 1551
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1554
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1564
    :goto_0
    return-void

    .line 1556
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1557
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1558
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SET_DEFAULT_DATA_DONE subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1559
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubNetworkType(I)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;I)V

    .line 1560
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->updateDataSubId(Landroid/os/AsyncResult;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->access$300(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
