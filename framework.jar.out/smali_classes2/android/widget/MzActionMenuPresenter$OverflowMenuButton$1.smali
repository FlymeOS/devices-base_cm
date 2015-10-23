.class Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "MzActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/widget/MzActionMenuPresenter;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 729
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$200(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 736
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$200(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$300(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0

    .line 754
    :cond_0
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    .line 755
    const/4 v0, 0x1

    goto :goto_0
.end method
