.class Lcom/android/server/policy/FlymeConfirmPasswordView$5;
.super Ljava/util/TimerTask;
.source "FlymeConfirmPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get3(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$string;->confirm_access_password_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-set2(Lcom/android/server/policy/FlymeConfirmPasswordView;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0, v5}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-set0(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    new-instance v1, Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$5$1;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView$5;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 341
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get3(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-set1(Lcom/android/server/policy/FlymeConfirmPasswordView;I)I

    .line 343
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get3(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-wrap0(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    .line 326
    :cond_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0, v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-set0(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z

    .line 332
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$string;->mz_fp_lockout:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v4}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get3(Lcom/android/server/policy/FlymeConfirmPasswordView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-set2(Lcom/android/server/policy/FlymeConfirmPasswordView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
