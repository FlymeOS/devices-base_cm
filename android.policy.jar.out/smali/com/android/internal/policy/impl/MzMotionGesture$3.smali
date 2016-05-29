.class Lcom/android/internal/policy/impl/MzMotionGesture$3;
.super Landroid/content/BroadcastReceiver;
.source "MzMotionGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MzMotionGesture;->registerUserSwitchedBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MzMotionGesture;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzMotionGesture;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzMotionGesture$3;->this$0:Lcom/android/internal/policy/impl/MzMotionGesture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture$3;->this$0:Lcom/android/internal/policy/impl/MzMotionGesture;

    # invokes: Lcom/android/internal/policy/impl/MzMotionGesture;->onEnableFullScreenDragSettingChanged()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/MzMotionGesture;->access$000(Lcom/android/internal/policy/impl/MzMotionGesture;)V

    .line 473
    :cond_0
    return-void
.end method
