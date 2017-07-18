.class Lcom/android/server/policy/FlymeConfirmPasswordView$4;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p2, "val$result"    # Z

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    iput-boolean p2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->val$result:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get1(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get1(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get2(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->clearCell(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get2(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get4(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->setTipAnimShake(Ljava/lang/String;)V

    goto :goto_0
.end method
