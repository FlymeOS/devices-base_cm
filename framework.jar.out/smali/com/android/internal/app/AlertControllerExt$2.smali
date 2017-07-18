.class Lcom/android/internal/app/AlertControllerExt$2;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertControllerExt;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertControllerExt;

.field final synthetic val$mCurrentOrientation:I

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt;ILandroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AlertControllerExt;
    .param p2, "val$mCurrentOrientation"    # I
    .param p3, "val$vto"    # Landroid/view/ViewTreeObserver;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    iput p2, p0, Lcom/android/internal/app/AlertControllerExt$2;->val$mCurrentOrientation:I

    iput-object p3, p0, Lcom/android/internal/app/AlertControllerExt$2;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->-get3(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->-get3(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->val$mCurrentOrientation:I

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get2(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->-get3(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 461
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 456
    :cond_0
    return-void
.end method
