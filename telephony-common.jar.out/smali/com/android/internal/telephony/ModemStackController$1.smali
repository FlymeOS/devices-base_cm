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
    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    const-string v6, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    const-string v6, "phoneinECMState"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string v7, "Device is in ECBM Mode"

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 189
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # setter for: Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/ModemStackController;->access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string v7, "Device is out of ECBM Mode"

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 192
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # setter for: Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/ModemStackController;->access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z

    goto :goto_0

    .line 194
    :cond_2
    const-string v6, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 195
    const-string v6, "_id"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 197
    .local v5, "subId":I
    const-string v6, "columnName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "column":Ljava/lang/String;
    const-string v6, "intContent"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "intValue":I
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ACTION_SUBINFO_CONTENT_CHANGE on subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z
    invoke-static {v6}, Lcom/android/internal/telephony/ModemStackController;->access$200(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    const-string v6, "sub_state"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 205
    .local v3, "phoneId":I
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/telephony/ModemStackController;->access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 209
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v11, v7}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 210
    .local v2, "msg":Landroid/os/Message;
    sget-object v6, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    invoke-static {v2, v6, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 211
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 214
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "intValue":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "phoneId":I
    .end local v5    # "subId":I
    :cond_3
    const-string v6, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    const-string v6, "subscription"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 218
    .restart local v5    # "subId":I
    const-string v6, "phone"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 220
    .restart local v3    # "phoneId":I
    const-string v6, "operationResult"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 222
    .local v4, "status":I
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ACTION_SUBSCRIPTION_SET_UICC_RESULT on subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "phoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/ModemStackController;->access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    .line 224
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    # getter for: Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z
    invoke-static {v6}, Lcom/android/internal/telephony/ModemStackController;->access$200(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v4, v9, :cond_0

    .line 226
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v11, v7}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 227
    .restart local v2    # "msg":Landroid/os/Message;
    sget-object v6, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    invoke-static {v2, v6, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 228
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
