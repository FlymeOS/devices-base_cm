.class Lcom/android/internal/policy/impl/MzMotionGesture$1;
.super Ljava/lang/Object;
.source "MzMotionGesture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MzMotionGesture;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzMotionGesture;Z)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzMotionGesture$1;->this$0:Lcom/android/internal/policy/impl/MzMotionGesture;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MzMotionGesture$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "i":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture$1;->val$show:Z

    if-nez v1, :cond_0

    .line 342
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v1, "com.meizu.action.HIDE_GESTURE_BAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v0    # "i":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture$1;->this$0:Lcom/android/internal/policy/impl/MzMotionGesture;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 348
    return-void

    .line 344
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string v1, "com.meizu.action.SHOW_GESTURE_BAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "i":Landroid/content/Intent;
    goto :goto_0
.end method
