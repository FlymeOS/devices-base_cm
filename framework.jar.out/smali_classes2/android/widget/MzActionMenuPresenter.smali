.class public Landroid/widget/MzActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "MzActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MzActionMenuPresenter$1;,
        Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/MzActionMenuPresenter$OverflowPopup;,
        Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/MzActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

.field private mActionItemWidthLimit:I

.field private mBackButton:Lcom/meizu/widget/KeyBackButton;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mConfigurationChanged:Z

.field private mEnableActionItemBackground:Z

.field private mEnableBackButton:Z

.field private mExpandedActionViewsExclusive:Z

.field private mExtraPadding:I

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field private mNotAddWhenNoActions:Z

.field mOpenSubMenuId:I

.field private mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverFlowButtonDrawableSet:Z

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

.field private mPopupCallback:Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 114
    sget v0, Lcom/flyme/internal/R$layout;->mz_action_menu_layout:I

    sget v1, Lcom/flyme/internal/R$layout;->mz_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 88
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 98
    new-instance v0, Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$1;)V

    iput-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;

    .line 102
    iput v2, p0, Landroid/widget/MzActionMenuPresenter;->mExtraPadding:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mEnableActionItemBackground:Z

    .line 104
    iput-boolean v2, p0, Landroid/widget/MzActionMenuPresenter;->mEnableBackButton:Z

    .line 106
    iput-boolean v2, p0, Landroid/widget/MzActionMenuPresenter;->mNotAddWhenNoActions:Z

    .line 109
    iput-boolean v2, p0, Landroid/widget/MzActionMenuPresenter;->mConfigurationChanged:Z

    .line 111
    iput-boolean v2, p0, Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawableSet:Z

    .line 116
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$OverflowPopup;)Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$400(Landroid/widget/MzActionMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/MzActionMenuPresenter;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$500(Landroid/widget/MzActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawableSet:Z

    return v0
.end method

.method static synthetic access$600(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/MzActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Landroid/widget/MzActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 384
    iget-object v3, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 385
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 395
    :cond_0
    :goto_0
    return-object v0

    .line 387
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 388
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 389
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 388
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 395
    goto :goto_0
.end method

.method private updateMenuViewForMeizu(Z)V
    .locals 7
    .param p1, "hasOverflow"    # Z

    .prologue
    .line 1029
    const/4 v1, 0x0

    .line 1030
    .local v1, "addBackButton":Z
    iget-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mEnableBackButton:Z

    if-eqz v4, :cond_0

    .line 1031
    iget-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mNotAddWhenNoActions:Z

    if-eqz v4, :cond_6

    .line 1032
    if-eqz p1, :cond_4

    .line 1033
    const/4 v1, 0x1

    .line 1045
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 1046
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v4, :cond_1

    .line 1047
    new-instance v4, Lcom/meizu/widget/KeyBackButton;

    iget-object v5, p0, Landroid/widget/MzActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 1048
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v5, p0, Landroid/widget/MzActionMenuPresenter;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    :cond_1
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v4}, Lcom/meizu/widget/KeyBackButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1051
    .local v3, "parent":Landroid/view/ViewGroup;
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v3, v4, :cond_2

    .line 1052
    if-eqz v3, :cond_2

    .line 1053
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1056
    :cond_2
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v2, Landroid/widget/MzActionMenuView;

    .line 1057
    .local v2, "menuView":Landroid/widget/MzActionMenuView;
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/MzActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    .end local v2    # "menuView":Landroid/widget/MzActionMenuView;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    return-void

    .line 1035
    :cond_4
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1037
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1038
    const/4 v1, 0x1

    goto :goto_0

    .line 1035
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1042
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateSmartBarConfiguration()V
    .locals 2

    .prologue
    .line 1024
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    .line 1025
    .local v0, "smartBarConfig":Lcom/meizu/widget/SmartBarConfiguration;
    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v1

    iput v1, p0, Landroid/widget/MzActionMenuPresenter;->mExtraPadding:I

    .line 1026
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 251
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 253
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/widget/MzActionMenuView;

    .local v1, "menuView":Landroid/widget/MzActionMenuView;
    move-object v0, p2

    .line 254
    check-cast v0, Lcom/android/internal/view/menu/MzActionMenuItemView;

    .line 255
    .local v0, "actionItemView":Lcom/android/internal/view/menu/MzActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 257
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mPopupCallback:Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 258
    new-instance v2, Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mPopupCallback:Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;

    .line 260
    :cond_0
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mPopupCallback:Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;)V

    .line 264
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V

    .line 266
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 445
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 446
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 354
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 482
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 483
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 484
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 485
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 486
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 488
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 489
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 490
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 491
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 492
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    .line 493
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 494
    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 495
    add-int/lit8 v22, v22, 0x1

    .line 501
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 504
    const/16 v17, 0x0

    .line 492
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 497
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 499
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 510
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    sget-object v27, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-nez v27, :cond_4

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuPresenter;->mExtraPadding:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    .line 513
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mEnableBackButton:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 514
    add-int/lit8 v17, v17, -0x1

    .line 519
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    if-nez v10, :cond_6

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 521
    :cond_6
    add-int/lit8 v17, v17, -0x1

    .line 523
    :cond_7
    sub-int v17, v17, v22

    .line 527
    add-int v17, v17, v22

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 530
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 532
    const/4 v4, 0x0

    .line 533
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 534
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    .line 535
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 537
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    if-eqz v7, :cond_c

    div-int v27, v5, v7

    :goto_2
    add-int v4, v28, v27

    .line 540
    if-lez v7, :cond_8

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 547
    .end local v5    # "cellSizeRemaining":I
    :cond_8
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_21

    .line 548
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 550
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/MzActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 552
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_9

    .line 553
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/MzActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 555
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 556
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/MzActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 561
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 562
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 563
    if-nez v8, :cond_a

    .line 564
    move/from16 v8, v18

    .line 566
    :cond_a
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 567
    .local v9, "groupId":I
    if-eqz v9, :cond_b

    .line 568
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 570
    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 573
    if-lez v17, :cond_e

    .line 574
    add-int/lit8 v17, v17, -0x1

    .line 547
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 537
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v5    # "cellSizeRemaining":I
    :cond_c
    const/16 v27, 0x0

    goto :goto_2

    .line 559
    .end local v5    # "cellSizeRemaining":I
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v24    # "v":Landroid/view/View;
    :cond_d
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 576
    .restart local v9    # "groupId":I
    .restart local v18    # "measuredWidth":I
    :cond_e
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_5

    .line 579
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_f
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_20

    .line 582
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 583
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 584
    .local v12, "inGroup":Z
    if-gtz v17, :cond_10

    if-eqz v12, :cond_18

    :cond_10
    if-lez v26, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    if-lez v7, :cond_18

    :cond_11
    const/4 v13, 0x1

    .line 587
    .local v13, "isAction":Z
    :goto_6
    if-eqz v13, :cond_15

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/MzActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 589
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MzActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_12

    .line 590
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/MzActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 592
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_19

    .line 593
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/MzActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 595
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 596
    if-nez v6, :cond_13

    .line 597
    const/4 v13, 0x0

    .line 602
    .end local v6    # "cells":I
    :cond_13
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 603
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 604
    if-nez v8, :cond_14

    .line 605
    move/from16 v8, v18

    .line 608
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 609
    if-ltz v26, :cond_1a

    const/16 v27, 0x1

    :goto_8
    and-int v13, v13, v27

    .line 616
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_15
    :goto_9
    if-eqz v13, :cond_1d

    if-eqz v9, :cond_1d

    .line 617
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 631
    :cond_16
    if-eqz v13, :cond_17

    add-int/lit8 v17, v17, -0x1

    .line 633
    :cond_17
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 584
    .end local v13    # "isAction":Z
    :cond_18
    const/4 v13, 0x0

    goto :goto_6

    .line 600
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_19
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 609
    .restart local v18    # "measuredWidth":I
    :cond_1a
    const/16 v27, 0x0

    goto :goto_8

    .line 612
    :cond_1b
    add-int v27, v26, v8

    if-lez v27, :cond_1c

    const/16 v27, 0x1

    :goto_a
    and-int v13, v13, v27

    goto :goto_9

    :cond_1c
    const/16 v27, 0x0

    goto :goto_a

    .line 618
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_1d
    if-eqz v12, :cond_16

    .line 620
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 621
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_16

    .line 622
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 623
    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1f

    .line 625
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1e

    add-int/lit8 v17, v17, 0x1

    .line 626
    :cond_1e
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 621
    :cond_1f
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 636
    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_20
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 639
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_21
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    :cond_0
    instance-of v3, p2, Lcom/android/internal/view/menu/MzActionMenuItemView;

    if-nez v3, :cond_1

    .line 228
    const/4 p2, 0x0

    .line 231
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-boolean v3, p0, Landroid/widget/MzActionMenuPresenter;->mEnableActionItemBackground:Z

    if-nez v3, :cond_3

    .line 237
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move-object v2, p3

    .line 241
    check-cast v2, Landroid/widget/MzActionMenuView;

    .line 242
    .local v2, "menuParent":Landroid/widget/MzActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 243
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/MzActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 244
    invoke-virtual {v2, v1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_4
    return-object v0

    .line 233
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Landroid/widget/MzActionMenuView;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    move-object v1, v0

    .line 217
    check-cast v1, Landroid/widget/MzActionMenuView;

    invoke-virtual {v1, p0}, Landroid/widget/MzActionMenuView;->setPresenter(Landroid/widget/MzActionMenuPresenter;)V

    .line 218
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 425
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 436
    :goto_0
    return v1

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    .line 432
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 434
    goto :goto_0

    .line 436
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 457
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 125
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    .line 129
    :cond_0
    iget-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Landroid/widget/MzActionMenuPresenter;->mWidthLimit:I

    .line 134
    :cond_1
    iget-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 135
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Landroid/widget/MzActionMenuPresenter;->mMaxItems:I

    .line 138
    :cond_2
    iget v3, p0, Landroid/widget/MzActionMenuPresenter;->mWidthLimit:I

    .line 139
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_5

    .line 140
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    .line 141
    new-instance v4, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/widget/MzActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 142
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 143
    .local v2, "spec":I
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 145
    .end local v2    # "spec":I
    :cond_3
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 151
    :goto_0
    iget-boolean v4, p0, Landroid/widget/MzActionMenuPresenter;->mEnableBackButton:Z

    if-eqz v4, :cond_6

    .line 152
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v4, :cond_4

    .line 153
    new-instance v4, Lcom/meizu/widget/KeyBackButton;

    iget-object v5, p0, Landroid/widget/MzActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 154
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v5, p0, Landroid/widget/MzActionMenuPresenter;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 156
    .restart local v2    # "spec":I
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v4, v2, v2}, Lcom/meizu/widget/KeyBackButton;->measure(II)V

    .line 158
    .end local v2    # "spec":I
    :cond_4
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v4}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 162
    :goto_1
    invoke-direct {p0}, Landroid/widget/MzActionMenuPresenter;->updateSmartBarConfiguration()V

    .line 165
    iput v3, p0, Landroid/widget/MzActionMenuPresenter;->mActionItemWidthLimit:I

    .line 167
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/MzActionMenuPresenter;->mMinCellSize:I

    .line 170
    iput-object v7, p0, Landroid/widget/MzActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 171
    return-void

    .line 147
    :cond_5
    iput-object v7, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0

    .line 160
    :cond_6
    iput-object v7, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    goto :goto_1
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter;->dismissPopupMenus()Z

    .line 645
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 646
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/MzActionMenuPresenter;->mMaxItems:I

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 183
    :cond_1
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0, v1}, Landroid/widget/MzActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 184
    iput-boolean v2, p0, Landroid/widget/MzActionMenuPresenter;->mConfigurationChanged:Z

    .line 186
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 657
    move-object v1, p1

    check-cast v1, Landroid/widget/MzActionMenuPresenter$SavedState;

    .line 658
    .local v1, "saved":Landroid/widget/MzActionMenuPresenter$SavedState;
    iget v3, v1, Landroid/widget/MzActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 659
    iget-object v3, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Landroid/widget/MzActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 660
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 662
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 665
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 650
    new-instance v0, Landroid/widget/MzActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/MzActionMenuPresenter$SavedState;-><init>()V

    .line 651
    .local v0, "state":Landroid/widget/MzActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/MzActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/MzActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 652
    return-object v0
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0}, Landroid/widget/MzActionMenuPresenter;->updateSmartBarConfiguration()V

    .line 1021
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 6
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-nez v4, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 361
    :cond_1
    move-object v1, p1

    .line 362
    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v4, v5, :cond_2

    .line 363
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 365
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/MzActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 367
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 368
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 371
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuPresenter;->mOpenSubMenuId:I

    .line 372
    new-instance v2, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    .line 373
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 376
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v3}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->adjustWindowPositionForMz(Z)V

    .line 378
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 379
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move v2, v3

    .line 380
    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 669
    if-eqz p1, :cond_0

    .line 671
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public reflashMenu()V
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1088
    :cond_0
    return-void
.end method

.method public removeOverflowButton()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 996
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-object v1

    .line 998
    :cond_1
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 999
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v0, v2, :cond_0

    .line 1000
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1001
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public setActionItemBackgroundEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 982
    iput-boolean p1, p0, Landroid/widget/MzActionMenuPresenter;->mEnableActionItemBackground:Z

    .line 983
    return-void
.end method

.method public setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ActionMode$OnActionItemDragListener;

    .prologue
    .line 975
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    .line 976
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 1012
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "notAddWhenNoActions"    # Z

    .prologue
    .line 991
    iput-boolean p1, p0, Landroid/widget/MzActionMenuPresenter;->mEnableBackButton:Z

    .line 992
    iput-boolean p2, p0, Landroid/widget/MzActionMenuPresenter;->mNotAddWhenNoActions:Z

    .line 993
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Landroid/widget/MzActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 212
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 206
    iput p1, p0, Landroid/widget/MzActionMenuPresenter;->mMaxItems:I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mMaxItemsSet:Z

    .line 208
    return-void
.end method

.method public setMenuView(Landroid/widget/MzActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Landroid/widget/MzActionMenuView;

    .prologue
    .line 678
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 679
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/MzActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 680
    return-void
.end method

.method public setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1073
    if-eqz p1, :cond_0

    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawableSet:Z

    .line 1075
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1076
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->restoreDrawable()V

    .line 1082
    :cond_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 197
    sget-object v0, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iput-boolean p1, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflowSet:Z

    goto :goto_0
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 189
    iput p1, p0, Landroid/widget/MzActionMenuPresenter;->mWidthLimit:I

    .line 190
    iput-boolean p2, p0, Landroid/widget/MzActionMenuPresenter;->mStrictWidthLimit:Z

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MzActionMenuPresenter;->mWidthLimitSet:Z

    .line 192
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 270
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 403
    iget-boolean v1, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    new-instance v0, Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/MzActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 406
    .local v0, "popup":Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    .line 408
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 412
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 416
    .end local v0    # "popup":Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 13
    .param p1, "cleared"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 277
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v9}, Lcom/meizu/widget/KeyBackButton;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v12, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v9, v12, :cond_0

    .line 278
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/widget/MzActionMenuPresenter;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    :cond_0
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 282
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 283
    invoke-static {v5}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 285
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 287
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 289
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_3

    .line 290
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 291
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 292
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 293
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v8

    .line 294
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_2

    .line 295
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 292
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_3
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_b

    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 303
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 304
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    .line 305
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 306
    .restart local v1    # "count":I
    if-ne v1, v10, :cond_d

    .line 307
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v9

    if-nez v9, :cond_c

    move v2, v10

    .line 313
    .end local v1    # "count":I
    :cond_4
    :goto_2
    if-eqz v2, :cond_f

    .line 314
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v9, :cond_5

    .line 315
    new-instance v9, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v10, p0, Landroid/widget/MzActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 317
    :cond_5
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 322
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v7, v9, :cond_6

    iget-boolean v9, p0, Landroid/widget/MzActionMenuPresenter;->mConfigurationChanged:Z

    if-eqz v9, :cond_a

    .line 324
    :cond_6
    if-eqz v7, :cond_7

    .line 325
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    :cond_7
    iget-boolean v9, p0, Landroid/widget/MzActionMenuPresenter;->mConfigurationChanged:Z

    if-eqz v9, :cond_8

    .line 331
    new-instance v9, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    iget-object v10, p0, Landroid/widget/MzActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 332
    iput-boolean v11, p0, Landroid/widget/MzActionMenuPresenter;->mConfigurationChanged:Z

    .line 334
    :cond_8
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v9, v9, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    if-eqz v9, :cond_9

    .line 335
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v9, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->restoreDrawable()V

    .line 338
    :cond_9
    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/widget/MzActionMenuView;

    .line 339
    .local v4, "menuView":Landroid/widget/MzActionMenuView;
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/widget/MzActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/MzActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .end local v4    # "menuView":Landroid/widget/MzActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_a
    :goto_3
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/widget/MzActionMenuView;

    iget-boolean v10, p0, Landroid/widget/MzActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v9, v10}, Landroid/widget/MzActionMenuView;->setOverflowReserved(Z)V

    .line 348
    invoke-direct {p0, v2}, Landroid/widget/MzActionMenuPresenter;->updateMenuViewForMeizu(Z)V

    .line 350
    return-void

    .line 300
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_b
    const/4 v6, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_c
    move v2, v11

    .line 307
    goto :goto_2

    .line 309
    :cond_d
    if-lez v1, :cond_e

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_e
    move v2, v11

    goto :goto_4

    .line 341
    .end local v1    # "count":I
    :cond_f
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v9, :cond_a

    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v9, v10, :cond_a

    .line 342
    iget-object v9, p0, Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Landroid/widget/MzActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method
