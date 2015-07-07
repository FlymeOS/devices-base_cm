.class Lcom/android/internal/telephony/ModemStackController$1;
.super Landroid/content/BroadcastReceiver;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ModemStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ModemStackController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ModemStackController;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    const-string v5, "phoneinECMState"

    const/4 v8, 0x0

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string v8, "Device is in ECBM Mode"

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 178
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/4 v8, 0x1

    # setter for: Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/ModemStackController;->access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string v8, "Device is out of ECBM Mode"

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/ModemStackController;->access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z

    goto :goto_0

    .line 183
    :cond_2
    const-string v5, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    const-string v5, "_id"

    const-wide/16 v8, -0x3e8

    invoke-virtual {p2, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 186
    .local v6, "subId":J
    const-string v5, "columnName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "column":Ljava/lang/String;
    const-string v5, "intContent"

    const/4 v8, 0x0

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, "intValue":I
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTION_SUBINFO_CONTENT_CHANGE on subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " intValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z
    invoke-static {v5}, Lcom/android/internal/telephony/ModemStackController;->access$200(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    const-string v5, "sub_state"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v3

    .line 194
    .local v3, "phoneId":I
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/internal/telephony/ModemStackController;->access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 198
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/16 v8, 0x8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, "msg":Landroid/os/Message;
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 200
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 203
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "intValue":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "phoneId":I
    .end local v6    # "subId":J
    :cond_3
    const-string v5, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    const-string v5, "subscription"

    const-wide/16 v8, -0x3e8

    invoke-virtual {p2, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 207
    .restart local v6    # "subId":J
    const-string v5, "phone"

    const/4 v8, 0x0

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 209
    .restart local v3    # "phoneId":I
    const-string v5, "operationResult"

    const/4 v8, 0x1

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 211
    .local v4, "status":I
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTION_SUBSCRIPTION_SET_UICC_RESULT on subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "phoneId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z
    invoke-static {v5}, Lcom/android/internal/telephony/ModemStackController;->access$200(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/16 v8, 0x8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 216
    .restart local v2    # "msg":Landroid/os/Message;
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 217
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
