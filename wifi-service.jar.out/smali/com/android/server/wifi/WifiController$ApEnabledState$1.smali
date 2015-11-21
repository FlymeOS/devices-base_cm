.class Lcom/android/server/wifi/WifiController$ApEnabledState$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController$ApEnabledState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstChange:Z

.field lastSub:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController$ApEnabledState;)V
    .locals 1

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 622
    .local v0, "currentSub":Landroid/telephony/SubscriptionInfo;
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    if-eqz v1, :cond_1

    .line 623
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    .line 625
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    if-eqz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 637
    :cond_2
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->lastSub:Landroid/telephony/SubscriptionInfo;

    .line 638
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400d9

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 641
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "disabling Wifi AP due to Subscription change"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v2, 0x2600a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
