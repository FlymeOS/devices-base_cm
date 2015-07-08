.class public Lcom/android/internal/widget/MzActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "MzActionBarOverlayLayout.java"

# interfaces
.implements Lcom/android/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/internal/widget/ActionBarOverlayLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private final mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContent:Landroid/view/View;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$5;

    const-string v1, "actionBarHideOffset"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->ATTRS:[I

    return-void

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowVisibility:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 90
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 97
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 111
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 126
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowVisibility:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 90
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 97
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 111
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 126
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 179
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/MzActionBarOverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/widget/MzActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/MzActionBarOverlayLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Lcom/android/internal/widget/MzActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Lcom/android/internal/widget/MzActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/MzActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 685
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    .line 297
    .local v1, "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 299
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 301
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 302
    const/4 v0, 0x1

    .line 303
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 305
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 306
    const/4 v0, 0x1

    .line 307
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 309
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 310
    const/4 v0, 0x1

    .line 311
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 313
    :cond_3
    return v0
.end method

.method private applyInsetsForFlyme(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v10

    .line 938
    .local v10, "vis":I
    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_0

    and-int/lit16 v0, v10, 0x400

    if-eqz v0, :cond_0

    move v8, v3

    .line 940
    .local v8, "stable":Z
    :goto_0
    const/4 v7, 0x0

    .line 941
    .local v7, "changed":Z
    if-eqz v8, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 943
    .local v9, "statebarHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v9, v2, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setPadding(IIII)V

    .line 944
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 945
    const/4 v7, 0x1

    .line 950
    .end local v9    # "statebarHeight":I
    :goto_1
    return v7

    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_0
    move v8, v5

    .line 938
    goto :goto_0

    .line 947
    .restart local v7    # "changed":Z
    .restart local v8    # "stable":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarContainer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setPadding(IIII)V

    .line 948
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    goto :goto_1
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 614
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 615
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .line 617
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 616
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 617
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 619
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

.method private haltActionBarHideOffsetAnimations()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 659
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 665
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcom/android/internal/widget/MzActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarHeight:I

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 191
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    .line 192
    return-void

    :cond_0
    move v1, v3

    .line 185
    goto :goto_0

    :cond_1
    move v2, v3

    .line 188
    goto :goto_1
.end method

.method private mzSetActionBarVisibility(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "windowAttributes"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v2, 0x8

    .line 925
    if-eqz p1, :cond_2

    .line 926
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->setVisibility(I)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarContainer;->setVisibility(I)V

    .line 929
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 932
    :cond_2
    return-void
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 674
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 675
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 669
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 680
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v9

    .line 690
    .local v9, "finalY":I
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 822
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 375
    instance-of v0, p1, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method protected computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 963
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    const/4 v0, 0x1

    .line 976
    :cond_0
    :goto_0
    return v0

    .line 968
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->fitsSystemWindows()Z

    move-result v1

    if-nez v1, :cond_0

    .line 973
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 974
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 876
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 877
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 534
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarContainer;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarContainer;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 537
    .local v0, "top":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 539
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 541
    .end local v0    # "top":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 535
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 360
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 370
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 365
    new-instance v0, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 708
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 786
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 792
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 846
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 714
    sparse-switch p1, :sswitch_data_0

    .line 725
    :goto_0
    return-void

    .line 716
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initProgress()V

    goto :goto_0

    .line 719
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    .line 722
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 714
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 828
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 10
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v9

    .line 321
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_3

    move v8, v3

    .line 322
    .local v8, "stable":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 329
    .local v2, "systemInsets":Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->applyInsetsForFlyme(Landroid/graphics/Rect;)Z

    move-result v7

    .line 331
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    move-object v0, p0

    move v5, v4

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    const/4 v7, 0x1

    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 347
    :cond_1
    if-eqz v7, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestLayout()V

    .line 355
    :cond_2
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v0

    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_3
    move v8, v4

    .line 321
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 259
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 197
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 198
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 504
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 505
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 507
    .local v9, "parentRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 508
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 510
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 511
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    .line 515
    .local v6, "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 516
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 518
    .local v4, "height":I
    iget v12, v6, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 520
    .local v1, "childLeft":I
    iget-object v12, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    if-ne v0, v12, :cond_1

    .line 521
    sub-int v12, v7, v4

    iget v13, v6, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v12, v13

    .line 526
    .local v2, "childTop":I
    :goto_1
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 510
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 523
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_1
    iget v12, v6, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 529
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 382
    const/4 v11, 0x0

    .line 383
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 384
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 386
    .local v9, "childState":I
    const/16 v16, 0x0

    .line 387
    .local v16, "topInset":I
    const/4 v8, 0x0

    .line 389
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    .line 391
    .local v10, "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v1, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    .line 401
    .restart local v10    # "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 408
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v17

    .line 409
    .local v17, "vis":I
    move/from16 v0, v17

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    const/4 v14, 0x1

    .line 411
    .local v14, "stable":Z
    :goto_0
    if-eqz v14, :cond_6

    .line 414
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarHeight:I

    move/from16 v16, v0

    .line 415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v15

    .line 417
    .local v15, "tabs":Landroid/view/View;
    if-eqz v15, :cond_1

    .line 419
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarHeight:I

    add-int v16, v16, v1

    .line 431
    .end local v15    # "tabs":Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v13

    .line 432
    .local v13, "split":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v1, v1, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_2

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v1, Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarView;->isShowing()Z

    move-result v13

    .line 435
    :cond_2
    if-eqz v13, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_7

    .line 443
    const/4 v8, 0x0

    .line 460
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 462
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_9

    if-nez v14, :cond_9

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v16

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 469
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    new-instance v2, Landroid/view/WindowInsets;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 479
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;

    .line 481
    .restart local v10    # "lp":Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MzActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 495
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 498
    return-void

    .line 409
    .end local v13    # "split":Z
    .end local v14    # "stable":Z
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 422
    .restart local v14    # "stable":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v16

    goto/16 :goto_1

    .line 448
    .restart local v13    # "split":Z
    :cond_7
    if-eqz v14, :cond_8

    .line 449
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarHeight:I

    goto/16 :goto_2

    .line 451
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v8

    goto/16 :goto_2

    .line 466
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v16

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v0, 0x1

    .line 590
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 591
    :cond_0
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 598
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAnimatingForFling:Z

    goto :goto_0

    .line 596
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 569
    iget v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 570
    iget v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 571
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 558
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 560
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 561
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 564
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 550
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScroll:Z

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 576
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_0

    .line 577
    iget v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 578
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    .line 583
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 586
    :cond_1
    return-void

    .line 580
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 265
    iget v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v5, p1

    .line 266
    .local v1, "diff":I
    iput p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 267
    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_3

    move v0, v3

    .line 268
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_4

    move v2, v3

    .line 269
    .local v2, "stable":Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_1

    .line 273
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v2, :cond_5

    :goto_2
    invoke-interface {v5, v3}, Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 274
    if-nez v0, :cond_0

    if-nez v2, :cond_6

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 277
    :cond_1
    :goto_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 282
    :cond_2
    return-void

    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_3
    move v0, v4

    .line 267
    goto :goto_0

    .restart local v0    # "barVisible":Z
    :cond_4
    move v2, v4

    .line 268
    goto :goto_1

    .restart local v2    # "stable":Z
    :cond_5
    move v3, v4

    .line 273
    goto :goto_2

    .line 275
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 287
    iput p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowVisibility:I

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 291
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 604
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 605
    const v0, 0x102037a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    .line 607
    const v0, 0x102037b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 608
    const v0, 0x102037d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    .line 611
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 870
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 871
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 864
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 865
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 645
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v2

    .line 646
    .local v2, "topHeight":I
    const/4 v3, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 647
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/MzActionBarContainer;

    neg-int v4, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setTranslationY(F)V

    .line 648
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 650
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 651
    .local v1, "fOffset":F
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 652
    .local v0, "bOffset":I
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setTranslationY(F)V

    .line 654
    .end local v0    # "bOffset":I
    .end local v1    # "fOffset":F
    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 206
    iget v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 207
    iget v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 208
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    .line 212
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setDefaultIcon()V
    .locals 3

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 912
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v1, v1, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 915
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 916
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 919
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 232
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 626
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 627
    if-nez p1, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->stopNestedScroll()V

    .line 629
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 633
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v0, v0, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 801
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 806
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v0, v0, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 809
    :cond_0
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 814
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v0, v0, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 817
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 858
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 859
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 852
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 853
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mOverlayMode:Z

    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 224
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 235
    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    .line 247
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setUiOptions(I)V
    .locals 8
    .param p1, "uiOptions"    # I

    .prologue
    const/4 v5, 0x1

    .line 729
    const/4 v2, 0x0

    .line 730
    .local v2, "splitActionBar":Z
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_6

    move v3, v5

    .line 732
    .local v3, "splitWhenNarrow":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 736
    :cond_0
    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 737
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 739
    sget-object v6, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 740
    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v6, v6, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v0, Lcom/android/internal/widget/MzActionBarView;

    .line 742
    .local v0, "actionBarView":Lcom/android/internal/widget/MzActionBarView;
    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    .line 744
    iget-boolean v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mOverlayMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/MzActionBarView;->setOverlay(Z)V

    .line 746
    .end local v0    # "actionBarView":Lcom/android/internal/widget/MzActionBarView;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 747
    .local v4, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz v5, :cond_8

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_8

    .line 749
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 758
    :cond_3
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mzSetActionBarVisibility(Landroid/view/WindowManager$LayoutParams;)V

    .line 763
    .end local v4    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 764
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-interface {v5, v6}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 765
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5, v2}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 766
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5, v3}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 768
    const v5, 0x102037c

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MzActionBarContextView;

    .line 770
    .local v1, "cab":Lcom/android/internal/widget/MzActionBarContextView;
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/MzActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 771
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarContextView;->setSplitToolbar(Z)V

    .line 772
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 774
    iget-boolean v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mOverlayMode:Z

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/MzActionBarContextView;->setOverlay(Z)V

    .line 781
    .end local v1    # "cab":Lcom/android/internal/widget/MzActionBarContextView;
    :cond_5
    :goto_3
    return-void

    .line 730
    .end local v3    # "splitWhenNarrow":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .restart local v0    # "actionBarView":Lcom/android/internal/widget/MzActionBarView;
    .restart local v3    # "splitWhenNarrow":Z
    :cond_7
    move v5, v3

    .line 742
    goto :goto_1

    .line 751
    .end local v0    # "actionBarView":Lcom/android/internal/widget/MzActionBarView;
    .restart local v4    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_3

    .line 752
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 753
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 754
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 755
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    goto :goto_2

    .line 776
    .end local v4    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    if-eqz v2, :cond_5

    .line 777
    const-string v5, "ActionBarOverlayLayout"

    const-string v6, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attr"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 956
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 696
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 697
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 703
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->pullChildren()V

    .line 840
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
