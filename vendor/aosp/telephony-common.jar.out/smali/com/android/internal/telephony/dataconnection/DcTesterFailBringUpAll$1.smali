.class Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTesterFailBringUpAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sIntentReceiver.onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    const-string/jumbo v2, "sFailBringUp"

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(Landroid/content/Intent;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get2(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    const-string/jumbo v2, "simulate detaching"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    .line 63
    const v3, 0x7fffffff

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(III)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get2(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    const-string/jumbo v2, "simulate attaching"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(III)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    goto :goto_0
.end method
