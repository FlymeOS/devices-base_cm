.class Landroid/widget/MzActionMenuPresenter$OverflowPopup;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "MzActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 853
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/MzActionMenuPresenter;

    .line 854
    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 860
    iget-object v0, p1, Landroid/widget/MzActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 861
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 865
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 866
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$600(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 867
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/MzActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Landroid/widget/MzActionMenuPresenter;->access$202(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$OverflowPopup;)Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    .line 868
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 876
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->updateMenuView(Z)V

    .line 877
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$700(Landroid/widget/MzActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$700(Landroid/widget/MzActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->dismiss()V

    .line 880
    :cond_0
    return-void
.end method
