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

    .prologue
    .line 443
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
    .line 446
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->access$300(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->access$300(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->val$mCurrentOrientation:I

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->access$400(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->access$300(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 450
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$2;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 453
    :cond_0
    return-void
.end method
