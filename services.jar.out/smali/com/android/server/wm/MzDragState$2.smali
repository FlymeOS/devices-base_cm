.class Lcom/android/server/wm/MzDragState$2;
.super Landroid/content/BroadcastReceiver;
.source "MzDragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MzDragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MzDragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MzDragState;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 246
    const-string v0, "meizu.intent.action.MEIZU_NFC_SHARE_ENABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    const-string v1, "NfcShareEnabled"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/MzDragState;->mMzStatusBarNfcEnabled:Z

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    const-string v1, "NfcRecoverAnim"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/MzDragState;->mRecoverAnimNfc:Z

    .line 252
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    iget-boolean v0, v0, Lcom/android/server/wm/MzDragState;->mMzStatusBarNfcEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    iget-boolean v0, v0, Lcom/android/server/wm/MzDragState;->mReachStatusBarNfc:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    .line 257
    :goto_1
    return-void

    .line 249
    :cond_1
    const-string v0, "meizu.intent.action.MEIZU_NFC_SHARE_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    const-string v1, "NfcShareState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/MzDragState;->mReachStatusBarNfc:Z

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$2;->this$0:Lcom/android/server/wm/MzDragState;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    goto :goto_1
.end method
