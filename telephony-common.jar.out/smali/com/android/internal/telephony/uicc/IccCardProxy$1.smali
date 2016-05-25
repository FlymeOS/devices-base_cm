.class Lcom/android/internal/telephony/uicc/IccCardProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$000(Lcom/android/internal/telephony/uicc/IccCardProxy;Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 141
    :cond_0
    return-void
.end method
