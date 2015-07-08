.class public Lcom/android/internal/app/ActionBarImpl;
.super Landroid/app/ActionBar;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ActionBarImpl$TabImpl;,
        Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"


# instance fields
.field mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

.field private mActionModeHeaderHidden:Z

.field private mActionView:Lcom/android/internal/widget/MzActionBarView;

.field private mActivity:Landroid/app/Activity;

.field private mAnimationDuration:I

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/MzActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomTabsHeight:I

.field private mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDelayUpdateTabs:Ljava/lang/Runnable;

.field private mDialog:Landroid/app/Dialog;

.field private mDisableBackButton:Z

.field private mDisplayHomeAsUpSet:Z

.field private mEmbedTabsWhenNarrow:Z

.field final mHandler:Landroid/os/Handler;

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mLastOreientation:I

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

.field private mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowTabsAtBottom:Z

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/ActionBarImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 107
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 127
    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 129
    iput-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    .line 134
    iput-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 145
    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    .line 146
    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    .line 147
    const/16 v3, 0x96

    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    .line 150
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v3, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 192
    new-instance v3, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 213
    new-instance v3, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1685
    new-instance v3, Lcom/android/internal/app/ActionBarImpl$4;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$4;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    .line 1941
    iput-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    .line 223
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    .line 224
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 225
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "decor":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    .line 227
    .local v1, "overlayMode":Z
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    .line 228
    if-nez v1, :cond_0

    .line 229
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    .line 233
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->disableBackButton(Z)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 127
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 129
    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 145
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    .line 146
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    .line 147
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 192
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 213
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1685
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$4;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    .line 1941
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    .line 238
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mDialog:Landroid/app/Dialog;

    .line 239
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 127
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 129
    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 145
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    .line 146
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    .line 147
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 192
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 213
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1685
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$4;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    .line 1941
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    .line 247
    sget-boolean v0, Lcom/android/internal/app/ActionBarImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzDecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ActionBarImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzSplitActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ActionBarImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private animateToHide(Z)V
    .locals 9
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    .line 1838
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/MzActionBarContainer;->setAlpha(F)V

    .line 1839
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1840
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1841
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1842
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1843
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1844
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1846
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1848
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setAlpha(F)V

    .line 1849
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1851
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v4, :cond_2

    .line 1852
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1853
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    .line 1858
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v4, 0x10c0006

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1860
    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1861
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1862
    iput-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1863
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1864
    return-void

    .line 1855
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v3

    goto :goto_1

    .line 1840
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1844
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1849
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateToShow(Z)V
    .locals 8
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    .line 1802
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1803
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1804
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1805
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1806
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1807
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1809
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1810
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setVisibility(I)V

    .line 1811
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1814
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v4, :cond_2

    .line 1815
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    .line 1818
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v4, 0x10c0006

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1820
    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1828
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1829
    iput-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1830
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1831
    return-void

    .line 1815
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v3

    goto :goto_0

    .line 1803
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1807
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1811
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 878
    if-eqz p2, :cond_1

    .line 883
    :cond_0
    :goto_0
    return v0

    .line 880
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 881
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 568
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeAllTabs()V

    .line 571
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 572
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 671
    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 672
    .local v3, "tabi":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 674
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 675
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 678
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 679
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 681
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 682
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 683
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    :cond_1
    return-void
.end method

.method private disableBackButton(Z)V
    .locals 5
    .param p1, "init"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1951
    const/4 v0, 0x1

    .line 1953
    .local v0, "disableBackButton":Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1956
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    if-eq v1, v0, :cond_0

    .line 1957
    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    .line 1958
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_2

    .line 1959
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-nez v0, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MzActionBarView;->setEnableBackButton(Z)V

    .line 1961
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_3

    .line 1962
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-nez v0, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 1964
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v1, :cond_4

    .line 1965
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-nez v0, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MzActionBarContextView;->setEnableBackButton(Z)V

    .line 1967
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    if-eqz v1, :cond_0

    .line 1968
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    if-nez v0, :cond_8

    :goto_4
    invoke-interface {v1, v2}, Landroid/app/ActionBar$OnBackButtonEnableChangeListener;->onBackButtonEnableChange(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1959
    goto :goto_1

    :cond_6
    move v1, v3

    .line 1962
    goto :goto_2

    :cond_7
    move v1, v3

    .line 1965
    goto :goto_3

    :cond_8
    move v2, v3

    .line 1968
    goto :goto_4
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 412
    :cond_0
    new-instance v0, Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "tabScroller":Lcom/android/internal/widget/MzScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/MzDecorToolbar;->mzSetEmbeddedTabView(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    .line 440
    :goto_1
    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    if-lez v1, :cond_1

    .line 441
    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setHeight(I)V

    .line 443
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mMeasureWithLargestChild:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setMeasureWithLargestChildEnable(Z)V

    .line 446
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    .line 449
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarView;->showTabsAtBottom(Z)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 419
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 430
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 431
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_1

    .line 424
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    .line 433
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_1
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 306
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 307
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .line 309
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 308
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 309
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 311
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 831
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 832
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 833
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 836
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 838
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 252
    const v5, 0x1020379

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzActionBarOverlayLayout;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .line 254
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v5, :cond_0

    .line 255
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 257
    :cond_0
    const v5, 0x102037b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzDecorToolbar;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    .line 258
    const v5, 0x102037c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzActionBarContextView;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    .line 260
    const v5, 0x102037a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzActionBarContainer;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    .line 262
    const v5, 0x102037d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzSplitActionBarContainer;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    .line 265
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    if-nez v5, :cond_2

    .line 266
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 270
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/MzDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 271
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/MzDecorToolbar;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_0
    iput v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    .line 275
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/MzDecorToolbar;->getDisplayOptions()I

    move-result v2

    .line 276
    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_8

    move v4, v6

    .line 277
    .local v4, "homeAsUp":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 278
    iput-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 281
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 282
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_9

    :cond_4
    move v5, v6

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 283
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 285
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Landroid/R$styleable;->ActionBar:[I

    const v10, 0x10102ce

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 288
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x15

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    invoke-virtual {p0, v6}, Lcom/android/internal/app/ActionBarImpl;->setHideOnContentScrollEnabled(Z)V

    .line 291
    :cond_5
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 292
    .local v3, "elevation":I
    if-eqz v3, :cond_6

    .line 293
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setElevation(F)V

    .line 295
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->initExt(Landroid/view/View;)V

    .line 303
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_7
    move v5, v7

    .line 271
    goto :goto_0

    .restart local v2    # "current":I
    :cond_8
    move v4, v7

    .line 276
    goto :goto_1

    .restart local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_9
    move v5, v7

    .line 282
    goto :goto_2
.end method

.method private initExt(Landroid/view/View;)V
    .locals 2
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    .line 1872
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$integer;->config_statusbarAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    .line 1874
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    instance-of v0, v0, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    check-cast v0, Lcom/android/internal/widget/MzActionBarView;

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    .line 1876
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    new-instance v1, Lcom/android/internal/app/ActionBarImpl$5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ActionBarImpl$5;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->setActionBarSplitChangedListener(Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;)V

    .line 1882
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    .line 1883
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateBackButtonDrawable()V

    .line 1885
    :cond_0
    return-void
.end method

.method private onConfigurationChangedExt(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1775
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v2, :cond_1

    .line 1776
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/MzActionBarView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1777
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v2, :cond_0

    .line 1778
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/MzActionBarContextView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1780
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    .line 1783
    :cond_1
    const/4 v0, 0x1

    .line 1784
    .local v0, "oreientation":I
    if-eqz p1, :cond_2

    if-eqz p1, :cond_5

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v2, :cond_5

    .line 1786
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1787
    .local v1, "resConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_3

    .line 1788
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1793
    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    .line 1794
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    .line 1795
    return-void

    .line 1780
    .end local v0    # "oreientation":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1791
    .restart local v0    # "oreientation":I
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 7
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    .line 343
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_0

    .line 344
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 345
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 346
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 352
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_6

    .line 353
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5, v6}, Lcom/android/internal/widget/MzDecorToolbar;->mzSetEmbeddedTabView(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    .line 358
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 359
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    .line 360
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_1

    .line 361
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setShowAtBottom(ZZ)V

    .line 363
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    move v0, v2

    .line 384
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_3

    .line 385
    if-eqz v0, :cond_a

    .line 390
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 391
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-nez v6, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    .line 396
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v4, :cond_3

    .line 397
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 403
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_b

    if-eqz v0, :cond_b

    move v4, v2

    :goto_4
    invoke-interface {v5, v4}, Lcom/android/internal/widget/MzDecorToolbar;->setCollapsible(Z)V

    .line 404
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_c

    if-eqz v0, :cond_c

    :goto_5
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 405
    return-void

    .line 365
    .end local v0    # "isInTabMode":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    .line 366
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_5

    .line 367
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v5, v6, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setShowAtBottom(ZZ)V

    .line 369
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_0

    .line 373
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    .line 376
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    .line 377
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_7

    .line 378
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v5, v6, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setShowAtBottom(ZZ)V

    .line 381
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-interface {v5, v6}, Lcom/android/internal/widget/MzDecorToolbar;->mzSetEmbeddedTabView(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_0

    :cond_8
    move v0, v3

    .line 383
    goto :goto_1

    .line 393
    .restart local v0    # "isInTabMode":Z
    :cond_9
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    .line 400
    :cond_a
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v4, v3

    .line 403
    goto :goto_4

    :cond_c
    move v2, v3

    .line 404
    goto :goto_5
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 806
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 807
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 808
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 811
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 813
    :cond_1
    return-void
.end method

.method private updateBackButtonDrawable()V
    .locals 2

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1708
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v0, :cond_1

    .line 1713
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarContextView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1716
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v0, :cond_2

    .line 1717
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1720
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_3

    .line 1721
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1724
    :cond_3
    return-void
.end method

.method private updateEmbededTabs()V
    .locals 2

    .prologue
    .line 1668
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_0

    .line 1669
    const/4 v0, 0x0

    .line 1670
    .local v0, "hasEmbeddedTabs":Z
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mEmbedTabsWhenNarrow:Z

    if-eqz v1, :cond_1

    .line 1671
    const/4 v0, 0x1

    .line 1677
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 1679
    .end local v0    # "hasEmbeddedTabs":Z
    :cond_0
    return-void

    .line 1672
    .restart local v0    # "hasEmbeddedTabs":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1673
    const/4 v0, 0x0

    goto :goto_0

    .line 1675
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    goto :goto_0
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 889
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 892
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 893
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 895
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doShow(Z)V

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 899
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 690
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 695
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 710
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 711
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 712
    if-eqz p3, :cond_0

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 715
    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 700
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 701
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 702
    if-eqz p2, :cond_0

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 705
    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1040
    if-eqz p1, :cond_1

    .line 1041
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->showForActionMode()V

    .line 1046
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/internal/widget/MzDecorToolbar;->animateToVisibility(I)V

    .line 1047
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MzActionBarContextView;->animateToVisibility(I)V

    .line 1050
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionModeHeaderHidden:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 1051
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToVisibility(I)V

    .line 1061
    :cond_0
    :goto_4
    return-void

    .line 1043
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->hideForActionMode()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1046
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1047
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1052
    goto :goto_3

    .line 1055
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v0, :cond_0

    .line 1057
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz p1, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToVisibility(I)V

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->collapseActionView()V

    .line 1121
    const/4 v0, 0x1

    .line 1123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 456
    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 457
    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 459
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 488
    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 497
    :cond_0
    return-void

    .line 491
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    .line 493
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 494
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 2
    .param p1, "fromSystem"    # Z

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 983
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 1016
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->animateToHide(Z)V

    .line 1031
    :cond_2
    :goto_0
    return-void

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    .line 1026
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v0

    goto :goto_1
.end method

.method public doShow(Z)V
    .locals 5
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 906
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setVisibility(I)V

    .line 911
    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_4

    .line 951
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->animateToShow(Z)V

    .line 973
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 974
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 976
    :cond_3
    return-void

    .line 955
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzActionBarContainer;->setAlpha(F)V

    .line 956
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarContainer;->setTranslationY(F)V

    .line 957
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 958
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 960
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v0, :cond_6

    .line 961
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setAlpha(F)V

    .line 962
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTranslationY(F)V

    .line 963
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setVisibility(I)V

    .line 965
    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 968
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_2

    .line 969
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v0

    goto :goto_1
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    .line 795
    return-void
.end method

.method public getActionModeHeaderHidden()Z
    .locals 1

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionModeHeaderHidden:Z

    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1468
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1464
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1466
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1450
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1456
    :cond_0
    :goto_0
    return v0

    .line 1452
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1454
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 1064
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1065
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1066
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1067
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1069
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1071
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 1072
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 1077
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 1074
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 826
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 828
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 841
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 842
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    .line 843
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 845
    :cond_0
    return-void
.end method

.method public isBackButtonEnabled()Z
    .locals 1

    .prologue
    .line 1989
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getHeight()I

    move-result v0

    .line 1036
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 719
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->onConfigurationChangedExt(Landroid/content/res/Configuration;)V

    .line 337
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1111
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 462
    iput p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 463
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->cleanupTabs()V

    .line 561
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->removeTabAt(I)V

    .line 725
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 729
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v3

    .line 736
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeTabAt(I)V

    .line 737
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 738
    .local v2, "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    if-eqz v2, :cond_2

    .line 739
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 742
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 743
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 744
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 734
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 747
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 748
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isShowAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 1640
    :cond_0
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 755
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 781
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_1
    :goto_0
    return-void

    .line 759
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/MzDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .line 762
    .local v0, "trans":Landroid/app/FragmentTransaction;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_5

    .line 763
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 764
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToTab(I)V

    .line 778
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 779
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 759
    .end local v0    # "trans":Landroid/app/FragmentTransaction;
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    goto :goto_1

    .line 768
    .restart local v0    # "trans":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_6
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setTabSelected(I)V

    .line 769
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_7

    .line 770
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 772
    :cond_7
    check-cast p1, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 773
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 774
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_2
.end method

.method public setActionBarViewCollapsable(Z)V
    .locals 1
    .param p1, "collapsable"    # Z

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setCollapsableByUser(Z)V

    .line 1572
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 1573
    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 1561
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionModeHeaderHidden:Z

    .line 1562
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setActionModeHeaderHidden(Z)V

    .line 1563
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setActionModeHeaderHidden(Z)V

    .line 1564
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1696
    if-eqz p1, :cond_0

    .line 1697
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 1698
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateBackButtonDrawable()V

    .line 1700
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 604
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 503
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1435
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1439
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1441
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1543
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayHomeAsUpEnabled(Z)V

    .line 1545
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 517
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 518
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 588
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setDisplayOptions(I)V

    .line 592
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 596
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 597
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/MzDecorToolbar;->setDisplayOptions(I)V

    .line 600
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 527
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 528
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 512
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 513
    return-void

    .line 512
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 522
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 523
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 507
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 508
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setElevation(F)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setElevation(F)V

    .line 322
    :cond_0
    return-void
.end method

.method public setEmbeddedTabsWhenNarrow(Z)V
    .locals 1
    .param p1, "embedTabsWhenNarrow"    # Z

    .prologue
    .line 1603
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mEmbedTabsWhenNarrow:Z

    if-eq v0, p1, :cond_0

    .line 1604
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mEmbedTabsWhenNarrow:Z

    .line 1605
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    .line 1607
    :cond_0
    return-void
.end method

.method public setEnableBackButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1891
    sget-object v1, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1895
    const/4 v0, 0x1

    .line 1897
    .local v0, "disableBackButton":Z
    if-eqz v0, :cond_1

    .line 1910
    .end local v0    # "disableBackButton":Z
    :cond_0
    :goto_0
    return-void

    .line 1900
    .restart local v0    # "disableBackButton":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_2

    .line 1901
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzActionBarView;->setEnableBackButton(Z)V

    .line 1903
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_3

    .line 1904
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 1906
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v1, :cond_0

    .line 1907
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setEnableBackButton(Z)V

    goto :goto_0
.end method

.method public setEnabledBackWhenOverlay(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setEnabledBackWhenOverlay(Z)V

    .line 1650
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 869
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 874
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 849
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mHideOnContentScroll:Z

    .line 854
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 855
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationContentDescription(I)V

    .line 1103
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1098
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationIcon(I)V

    .line 1093
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setHomeButtonEnabled(Z)V

    .line 533
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setIcon(I)V

    .line 1516
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1521
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/MzDecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1446
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setLogo(I)V

    .line 1530
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1535
    return-void
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1615
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setMeasureWithLargestChildEnable(Z)V

    .line 1616
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setMeasureWithLargestChildEnable(Z)V

    .line 1619
    :cond_0
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1479
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1480
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1487
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 1492
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationMode(I)V

    .line 1493
    packed-switch p1, :pswitch_data_1

    .line 1503
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-ne p1, v6, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcom/android/internal/widget/MzDecorToolbar;->setCollapsible(Z)V

    .line 1504
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-ne p1, v6, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1505
    return-void

    .line 1482
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 1483
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1484
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1495
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 1496
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    .line 1497
    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1498
    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 1499
    iput v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1503
    goto :goto_2

    :cond_3
    move v2, v3

    .line 1504
    goto :goto_3

    .line 1480
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1493
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnBackButtonEnableChangeListener(Landroid/app/ActionBar$OnBackButtonEnableChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    .line 1983
    return-void
.end method

.method public setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1917
    if-eqz p1, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v0, :cond_1

    .line 1923
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1926
    :cond_1
    return-void
.end method

.method public setProgressBarShowAtBottom(Z)V
    .locals 1
    .param p1, "showAtBottom"    # Z

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setProgressBarShowAtBottom(Z)V

    .line 1936
    :cond_0
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 557
    :goto_0
    return-void

    .line 551
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 474
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 477
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 614
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 608
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method public setTabsHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 1592
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setTabsHeight(I)V

    .line 1593
    iput p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    .line 1594
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setHeight(I)V

    .line 1596
    :cond_0
    return-void
.end method

.method public setTabsShowAtBottom(Z)V
    .locals 1
    .param p1, "showAtBottom"    # Z

    .prologue
    .line 1580
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    .line 1581
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->showTabsAtBottom(Z)V

    .line 1584
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    .line 1585
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 538
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 576
    return-void
.end method

.method public setTopBarHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 1658
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setTopBarHeight(I)V

    .line 1659
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setHeight(I)V

    .line 1662
    :cond_0
    return-void
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$VisibilityAnimationListener;

    .prologue
    .line 1627
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V

    .line 1628
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V

    .line 1630
    :cond_0
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 581
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 800
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 801
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 803
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 637
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 642
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContextView;->killMode()V

    .line 643
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 644
    .local v0, "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 646
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 647
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 648
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    .line 650
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarContextView;->sendAccessibilityEvent(I)V

    .line 658
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    .line 661
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzActionBarView;->setInActionMode(Z)V

    .line 662
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzActionBarContextView;->setInActionMode(Z)V

    .line 667
    .end local v0    # "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
