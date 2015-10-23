.class public Lcom/android/internal/widget/MzScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "MzScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mActionBarView:Lcom/android/internal/widget/MzActionBarView;

.field private mAllowCollapse:Z

.field private mBackButton:Lcom/meizu/widget/KeyBackButton;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mContentHeight:I

.field private mEnableBackButton:Z

.field private mExtraPadding:I

.field private mExtraPaddingFor4:I

.field private mItemPadding:I

.field mMaxTabWidth:I

.field private mMeasureWithLargestChild:Z

.field private mMenuView:Landroid/view/ViewGroup;

.field private mSelectedTabIndex:I

.field private mShowAtBottom:Z

.field private mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

.field private mSplitActionBar:Z

.field mStackedTabMaxWidth:I

.field private mTabCellWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;

.field private mTabHeight:I

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabWidth:I

.field protected final mVisAnimListener:Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;

    .line 85
    iput-boolean v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    .line 86
    iput-boolean v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSplitActionBar:Z

    .line 87
    iput v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    .line 88
    iput v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabWidth:I

    .line 89
    iput v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    .line 90
    iput v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 92
    iput v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabHeight:I

    .line 94
    iput-boolean v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 103
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 105
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 106
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setContentHeight(I)V

    .line 107
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 109
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setClipChildren(Z)V

    .line 116
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setClipToPadding(Z)V

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/MzScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzScrollingTabContainerView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/MzScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzScrollingTabContainerView;
    .param p1, "x1"    # Landroid/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private addBackButton(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 927
    :cond_0
    return-void
.end method

.method private addExtraViews(Z)V
    .locals 3
    .param p1, "add"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1224
    if-nez p1, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1239
    :cond_1
    :goto_0
    return-void

    .line 1232
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_3

    .line 1233
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 289
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 291
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 275
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 276
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 281
    iget-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMeasureWithLargestChild:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 282
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 283
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 285
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 386
    new-instance v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 387
    .local v0, "tabView":Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 403
    return-object v0

    .line 392
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 395
    new-instance v1, Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Lcom/android/internal/widget/MzScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 401
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    goto :goto_1
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTabs(II)V
    .locals 18
    .param p1, "t"    # I
    .param p2, "b"    # I

    .prologue
    .line 968
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 969
    .local v3, "childCount":I
    add-int v14, p1, p2

    div-int/lit8 v9, v14, 0x2

    .line 970
    .local v9, "midVertical":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    .line 971
    .local v12, "tabRight":I
    const/4 v2, 0x0

    .line 972
    .local v2, "child":Landroid/view/View;
    const/4 v11, 0x0

    .line 973
    .local v11, "startLeft":I
    const/4 v6, 0x0

    .line 974
    .local v6, "endRight":I
    const/4 v4, 0x0

    .line 975
    .local v4, "childLeft":I
    const/4 v5, 0x0

    .line 976
    .local v5, "childRight":I
    const/4 v7, 0x0

    .line 977
    .local v7, "height":I
    const/4 v13, 0x0

    .line 979
    .local v13, "top":I
    sget-object v14, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 980
    if-lez v3, :cond_3

    const/4 v14, 0x5

    if-gt v3, v14, :cond_3

    .line 981
    const/4 v14, 0x1

    if-eq v3, v14, :cond_0

    const/4 v14, 0x5

    if-ne v3, v14, :cond_2

    .line 982
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    div-int v1, v14, v3

    .line 983
    .local v1, "cellWidth":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 984
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 985
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 986
    add-int/lit8 v14, v8, 0x1

    mul-int v6, v14, v1

    .line 987
    add-int v14, v11, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v14, v15

    .line 988
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 989
    const/4 v14, 0x1

    if-ne v3, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 990
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 994
    :goto_1
    move v11, v6

    .line 983
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 992
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 996
    .end local v1    # "cellWidth":I
    .end local v8    # "index":I
    :cond_2
    const/4 v14, 0x2

    if-ne v3, v14, :cond_5

    .line 997
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v14, :cond_4

    .line 999
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1000
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1001
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1002
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1006
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1007
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1008
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1146
    :cond_3
    :goto_2
    return-void

    .line 1011
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1012
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v10, v14, 0x2

    .line 1013
    .local v10, "perMaxWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1014
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1015
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1016
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1020
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1021
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1022
    add-int v14, v12, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1023
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1026
    .end local v10    # "perMaxWidth":I
    :cond_5
    const/4 v14, 0x3

    if-ne v3, v14, :cond_7

    .line 1027
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v14, :cond_6

    .line 1029
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1030
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1031
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1032
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1036
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1037
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v12, v14

    div-int/lit8 v4, v14, 0x2

    .line 1038
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1039
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1044
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1045
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1048
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1049
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v10, v14, 0x3

    .line 1050
    .restart local v10    # "perMaxWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1051
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1052
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1053
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1057
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1058
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v12, v14

    div-int/lit8 v4, v14, 0x2

    .line 1059
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1060
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1064
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1065
    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1066
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1067
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1069
    .end local v10    # "perMaxWidth":I
    :cond_7
    const/4 v14, 0x4

    if-ne v3, v14, :cond_3

    .line 1070
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_3
    if-ge v8, v3, :cond_3

    .line 1071
    div-int/lit8 v14, v3, 0x2

    if-ge v8, v14, :cond_8

    .line 1072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1073
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1074
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mItemPadding:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v15, v8

    add-int v4, v14, v15

    .line 1075
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1076
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1070
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1078
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1079
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1080
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    add-int/lit8 v15, v3, -0x1

    sub-int/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mItemPadding:I

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int v15, v15, v16

    sub-int v5, v14, v15

    .line 1082
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1083
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v5, v14

    add-int v15, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v14, v0, v5, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1089
    .end local v8    # "index":I
    :cond_9
    if-lez v3, :cond_3

    const/4 v14, 0x5

    if-gt v3, v14, :cond_3

    .line 1090
    const/4 v14, 0x1

    if-eq v3, v14, :cond_a

    const/4 v14, 0x5

    if-ne v3, v14, :cond_b

    .line 1091
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    div-int v1, v14, v3

    .line 1092
    .restart local v1    # "cellWidth":I
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_5
    if-ge v8, v3, :cond_3

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1094
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1095
    add-int/lit8 v14, v8, 0x1

    mul-int v6, v14, v1

    .line 1096
    add-int v14, v11, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v14, v15

    .line 1097
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1098
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1099
    move v11, v6

    .line 1092
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1101
    .end local v1    # "cellWidth":I
    .end local v8    # "index":I
    :cond_b
    const/4 v14, 0x2

    if-ne v3, v14, :cond_c

    .line 1103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1104
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1105
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1106
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1110
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1111
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1112
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1113
    :cond_c
    const/4 v14, 0x3

    if-ne v3, v14, :cond_d

    .line 1115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1116
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1117
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1118
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1122
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1123
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v12, v14

    div-int/lit8 v4, v14, 0x2

    .line 1124
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1125
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1129
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1130
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1131
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1132
    :cond_d
    const/4 v14, 0x4

    if-ne v3, v14, :cond_3

    .line 1133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPaddingFor4:I

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    div-int v1, v14, v3

    .line 1134
    .restart local v1    # "cellWidth":I
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_6
    if-ge v8, v3, :cond_3

    .line 1135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1136
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1137
    add-int/lit8 v14, v8, 0x1

    mul-int v6, v14, v1

    .line 1138
    add-int v14, v11, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPaddingFor4:I

    add-int v4, v14, v15

    .line 1139
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1140
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1141
    move v11, v6

    .line 1134
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method

.method private measureTabandMenuView(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1200
    iget-object v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1201
    .local v1, "childCount":I
    iget-boolean v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v5, :cond_1

    .line 1202
    const/4 v0, 0x0

    .line 1203
    .local v0, "child":Landroid/view/View;
    const/4 v4, 0x0

    .line 1204
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1205
    iget-object v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1207
    if-eqz v4, :cond_0

    .line 1208
    iget v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1204
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1212
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "index":I
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1213
    iget-object v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1215
    .local v3, "menuWidthSpec":I
    iget-object v5, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 1217
    .end local v3    # "menuWidthSpec":I
    :cond_2
    return-void
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addExtraViews(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Lcom/android/internal/widget/MzScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    iput-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return v4

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 218
    invoke-direct {p0, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addExtraViews(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 911
    if-eqz p1, :cond_0

    .line 912
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 913
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 917
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private removeMenuIfNeed()V
    .locals 5

    .prologue
    .line 1277
    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/MzActionBarView;

    if-nez v3, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1279
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-ne v1, v3, :cond_0

    .line 1280
    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1281
    .local v0, "menuItemCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getTabItemCount()I

    move-result v2

    .line 1282
    .local v2, "tabItemCount":I
    add-int v3, v0, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 1283
    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1284
    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 1285
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setMenu(Landroid/view/ViewGroup;)V

    .line 1286
    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/MzActionBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarView;->setDockTabAndMenu(Z)V

    goto :goto_0
.end method

.method private updateSmartBarConfiguration()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 1187
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    .line 1188
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    .line 1189
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPaddingFor4()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 1190
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mItemPadding:I

    .line 1192
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 424
    iget-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v1, :cond_0

    .line 425
    add-int/lit8 p2, p2, 0x1

    .line 429
    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    move-result-object v0

    .line 430
    .local v0, "tabView":Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 435
    :cond_1
    if-eqz p3, :cond_2

    .line 436
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 438
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 441
    :cond_3
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 407
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    move-result-object v0

    .line 408
    .local v0, "tabView":Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 413
    :cond_0
    if-eqz p2, :cond_1

    .line 414
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 416
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 419
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 344
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 345
    .local v2, "tabCount":I
    iget-boolean v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 346
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, "first":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "last":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 366
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 355
    .local v3, "tabView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 358
    :cond_1
    new-instance v4, Lcom/android/internal/widget/MzScrollingTabContainerView$1;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 365
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 321
    :cond_0
    if-nez p1, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setAlpha(F)V

    .line 325
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 326
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 327
    sget-object v1, Lcom/android/internal/widget/MzScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 339
    :goto_0
    return-void

    .line 332
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 333
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 334
    sget-object v1, Lcom/android/internal/widget/MzScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public getTabItemCount()I
    .locals 3

    .prologue
    .line 872
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 873
    const/4 v0, 0x0

    .line 879
    :cond_0
    :goto_0
    return v0

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 876
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_0

    .line 877
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isShowAtBottom()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 375
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 304
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setContentHeight(I)V

    .line 307
    iget-boolean v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_action_button_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setContentHeight(I)V

    .line 314
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 315
    return-void

    .line 310
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabHeight:I

    if-lez v1, :cond_0

    .line 311
    iget v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 383
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1249
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1250
    .local v4, "superResult":Z
    move v3, v4

    .line 1251
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1252
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1266
    :cond_0
    :goto_0
    return v3

    .line 1254
    :pswitch_0
    if-eqz v4, :cond_0

    .line 1255
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 1256
    .local v5, "tabCount":I
    iget-boolean v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v6, :cond_0

    if-lez v5, :cond_0

    .line 1257
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1258
    .local v1, "first":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1259
    .local v2, "last":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 1260
    const/4 v3, 0x0

    goto :goto_0

    .line 1252
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    .line 490
    .local v0, "tabView":Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 491
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 955
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 957
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSplitActionBar:Z

    if-eqz v0, :cond_0

    .line 958
    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->layoutTabs(II)V

    .line 960
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 123
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 124
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_3

    move v2, v6

    .line 125
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setFillViewport(Z)V

    .line 127
    iget-object v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 128
    .local v1, "childCount":I
    if-le v1, v6, :cond_5

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_5

    .line 130
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_4

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    .line 135
    :goto_1
    iget v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    .line 140
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 142
    iget-boolean v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v8, :cond_1

    if-nez v1, :cond_1

    .line 143
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 147
    :cond_1
    if-nez v2, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_6

    move v0, v6

    .line 149
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_8

    .line 151
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 152
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_7

    .line 153
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->performCollapse()V

    .line 161
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 162
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 166
    .local v3, "newWidth":I
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->measureTabandMenuView(II)V

    .line 169
    if-eqz v2, :cond_2

    if-eq v4, v3, :cond_2

    .line 171
    iget v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setTabSelected(I)V

    .line 173
    :cond_2
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_3
    move v2, v7

    .line 124
    goto :goto_0

    .line 133
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 137
    :cond_5
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_6
    move v0, v7

    .line 147
    goto :goto_3

    .line 155
    .restart local v0    # "canCollapse":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 158
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->updateSmartBarConfiguration()V

    .line 1179
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 1180
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 482
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 485
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_0

    .line 464
    add-int/lit8 p1, p1, 0x1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 472
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 475
    :cond_2
    return-void
.end method

.method public setActionbarView(Lcom/android/internal/widget/MzActionBarView;)V
    .locals 0
    .param p1, "actionBarView"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/MzActionBarView;

    .line 1274
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mAllowCollapse:Z

    .line 186
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1165
    if-eqz p1, :cond_0

    .line 1166
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 1168
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 888
    sget-object v0, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    .line 892
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_3

    .line 893
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_2

    .line 894
    new-instance v0, Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 895
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 898
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addBackButton(Landroid/view/View;)V

    .line 899
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeMenuIfNeed()V

    goto :goto_0

    .line 900
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mContentHeight:I

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 269
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 852
    iput p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabHeight:I

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setContentHeight(I)V

    .line 854
    return-void
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 861
    iput-boolean p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 862
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 865
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ViewGroup;

    .prologue
    .line 933
    if-eqz p1, :cond_0

    .line 934
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 935
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 939
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 942
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    .line 943
    return-void
.end method

.method public setShowAtBottom(ZZ)V
    .locals 5
    .param p1, "atBottom"    # Z
    .param p2, "splitActionBar"    # Z

    .prologue
    .line 809
    iget-boolean v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-ne v4, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSplitActionBar:Z

    if-ne v4, p2, :cond_1

    .line 837
    :cond_0
    return-void

    .line 812
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    .line 813
    iput-boolean p2, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSplitActionBar:Z

    .line 814
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 815
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/flyme/internal/R$dimen;->mz_action_button_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabWidth:I

    .line 817
    sget v4, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_cell_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabCellWidth:I

    .line 819
    sget v4, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPadding:I

    .line 821
    sget v4, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_padding_for_4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 823
    sget v4, Lcom/flyme/internal/R$dimen;->mz_split_action_item_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mItemPadding:I

    .line 825
    sget v4, Lcom/flyme/internal/R$dimen;->mz_action_button_min_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setContentHeight(I)V

    .line 827
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->updateSmartBarConfiguration()V

    .line 828
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 829
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 830
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 831
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 832
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    if-eqz v4, :cond_2

    .line 833
    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 830
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setTabSelected(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 227
    iput p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mSelectedTabIndex:I

    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isCollapsed()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_1

    if-ltz p1, :cond_1

    .line 231
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 232
    iget-boolean v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lt v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    add-int/lit8 p1, p1, 0x1

    .line 242
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 243
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 244
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_4

    move v2, v4

    .line 246
    .local v2, "isSelected":Z
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 247
    if-eqz v2, :cond_3

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToTab(I)V

    .line 243
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "isSelected":Z
    :cond_4
    move v2, v5

    .line 245
    goto :goto_2

    .line 251
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_6

    if-ltz p1, :cond_6

    .line 252
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 257
    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 259
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v0, :cond_0

    .line 1154
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_0

    .line 447
    add-int/lit8 p1, p1, 0x1

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->update()V

    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 455
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->requestLayout()V

    .line 458
    :cond_2
    return-void
.end method
