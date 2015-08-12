.class Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "MzActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 887
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/MzActionMenuPresenter;

    .line 888
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 890
    iput-object p3, p0, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 892
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 893
    .local v9, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$700(Landroid/widget/MzActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    # getter for: Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$800(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 898
    :cond_0
    iget-object v0, p1, Landroid/widget/MzActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 900
    const/4 v10, 0x0

    .line 901
    .local v10, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v7

    .line 902
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 903
    invoke-virtual {p3, v8}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 904
    .local v6, "childItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 905
    const/4 v10, 0x1

    .line 909
    .end local v6    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v10}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 910
    return-void

    .line 895
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v10    # "preserveIconSpacing":Z
    :cond_2
    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$700(Landroid/widget/MzActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 902
    .restart local v6    # "childItem":Landroid/view/MenuItem;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    .restart local v10    # "preserveIconSpacing":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 914
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 915
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/MzActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Landroid/widget/MzActionMenuPresenter;->access$902(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    .line 916
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/MzActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/MzActionMenuPresenter;->mOpenSubMenuId:I

    .line 917
    return-void
.end method
