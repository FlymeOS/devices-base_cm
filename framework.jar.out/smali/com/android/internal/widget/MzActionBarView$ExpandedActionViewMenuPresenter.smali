.class Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "MzActionBarView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/MzActionBarView;)V
    .locals 0

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/MzActionBarView;Lcom/android/internal/widget/MzActionBarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/MzActionBarView;
    .param p2, "x1"    # Lcom/android/internal/widget/MzActionBarView$1;

    .prologue
    .line 1796
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/MzActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1893
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-static {v0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1897
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->removeView(Landroid/view/View;)V

    .line 1904
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1905
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$800(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1907
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iput-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1908
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1500(Lcom/android/internal/widget/MzActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1909
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$900(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setVisibility(I)V

    .line 1911
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1500(Lcom/android/internal/widget/MzActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1912
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1000(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1913
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # invokes: Lcom/android/internal/widget/MzActionBarView;->initTitle()V
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1600(Lcom/android/internal/widget/MzActionBarView;)V

    .line 1918
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1100(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1100(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    .line 1919
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1200(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1200(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1920
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1300(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1300(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1925
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1927
    :cond_7
    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1928
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mWasHomeEnabled:Z
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarView;->access$1700(Lcom/android/internal/widget/MzActionBarView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->setHomeButtonEnabled(Z)V

    .line 1929
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 1930
    invoke-virtual {p2, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1932
    const/4 v0, 0x1

    return v0

    .line 1915
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1000(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1858
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-static {v0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1860
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1862
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # invokes: Lcom/android/internal/widget/MzActionBarView;->initExpandHomeLayout()V
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$600(Lcom/android/internal/widget/MzActionBarView;)V

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$700(Lcom/android/internal/widget/MzActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarView;->access$700(Lcom/android/internal/widget/MzActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1868
    :cond_1
    iput-object p2, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1869
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    if-eq v0, v1, :cond_2

    .line 1870
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 1872
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarView;->access$800(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 1873
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$800(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarView;->access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1875
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$900(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1000(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1000(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1877
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1100(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1100(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    .line 1878
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1200(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1200(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1879
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1300(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$1300(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # invokes: Lcom/android/internal/widget/MzActionBarView;->setHomeButtonEnabled(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/android/internal/widget/MzActionBarView;->access$1400(Lcom/android/internal/widget/MzActionBarView;ZZ)V

    .line 1881
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 1882
    invoke-virtual {p2, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1884
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_8

    .line 1885
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1888
    :cond_8
    return v5
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1853
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1937
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1811
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1806
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1807
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1849
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1947
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1942
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1844
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1840
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1817
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1818
    const/4 v1, 0x0

    .line 1820
    .local v1, "found":Z
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1821
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1822
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1823
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1824
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1825
    const/4 v1, 0x1

    .line 1831
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1833
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1836
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1822
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
