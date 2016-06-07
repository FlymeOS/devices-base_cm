.class Lcom/android/internal/telephony/meizu/MzRadioManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MzRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/meizu/MzRadioManager;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$1;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/meizu/MzRadioManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/meizu/MzRadioManager;->access$000(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$1;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    # invokes: Lcom/android/internal/telephony/meizu/MzRadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->access$100(Lcom/android/internal/telephony/meizu/MzRadioManager;Landroid/content/Intent;)V

    .line 352
    :cond_0
    return-void
.end method
