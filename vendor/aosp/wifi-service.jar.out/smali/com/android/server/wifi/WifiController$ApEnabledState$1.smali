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

.field final synthetic this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController$ApEnabledState;)V
    .locals 1

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 618
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    if-eqz v0, :cond_0

    .line 620
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->firstChange:Z

    .line 628
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400df

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 626
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "disabling Wifi AP due to Subscription change"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState$1;->this$1:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v1, 0x2600a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
