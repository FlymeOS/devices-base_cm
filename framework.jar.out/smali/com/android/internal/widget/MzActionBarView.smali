.class public Lcom/android/internal/widget/MzActionBarView;
.super Lcom/android/internal/widget/MzAbsActionBarView;
.source "MzActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/MzDecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;,
        Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/MzActionBarView$HomeView;,
        Lcom/android/internal/widget/MzActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "MzActionBarView"


# instance fields
.field private mContextView:Lcom/android/internal/widget/MzActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field protected mDockTabAndMenu:Z

.field protected mEnableActionItemBackground:Z

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field protected mIsCollapsableByUser:Z

.field private mIsCollapsible:Z

.field protected mIsShowing:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarAtBottom:Z

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field protected mShowBackWhenOverlay:Z

.field public mShowTabsAtBottom:Z

.field protected mShowUp:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field protected mSplitChangedListener:Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    .line 148
    const v0, #android:string@action_bar_up_description#t

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDefaultUpDescription:I

    .line 152
    new-instance v0, Lcom/android/internal/widget/MzActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarView$1;-><init>(Lcom/android/internal/widget/MzActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 162
    new-instance v0, Lcom/android/internal/widget/MzActionBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarView$2;-><init>(Lcom/android/internal/widget/MzActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 174
    iput-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mShowUp:Z

    .line 175
    iput-boolean v11, p0, Lcom/android/internal/widget/MzActionBarView;->mIsShowing:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mShowBackWhenOverlay:Z

    .line 178
    iput-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    .line 179
    iput-boolean v11, p0, Lcom/android/internal/widget/MzActionBarView;->mEnableActionItemBackground:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarAtBottom:Z

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarView;->setBackgroundResource(I)V

    .line 189
    sget-object v0, Landroid/R$styleable;->ActionBar:[I

    const v1, #android:attr@actionBarStyle#t

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 192
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    .line 194
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 195
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 196
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 199
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 204
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v9, #android:layout@action_bar_home#t

    .line 206
    .local v9, "homeResId":I
    const v0, #android:layout@action_bar_up_container#t

    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 209
    const v0, #android:layout@action_bar_home#t

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzActionBarView$HomeView;

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    .line 228
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleStyleRes:I

    .line 229
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleStyleRes:I

    .line 230
    invoke-virtual {v7, v11, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressStyle:I

    .line 231
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressStyle:I

    .line 234
    const/16 v0, 0xf

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarPadding:I

    .line 235
    const/16 v0, 0x11

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    .line 237
    const/16 v0, 0x8

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setDisplayOptions(I)V

    .line 239
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 240
    .local v8, "customNavId":I
    if-eqz v8, :cond_0

    .line 241
    invoke-virtual {v10, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    .line 242
    iput v2, p0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    .line 243
    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setDisplayOptions(I)V

    .line 246
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarView;->mContentHeight:I

    .line 248
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    const v3, #android:id@home#t

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p0, v11}, Lcom/android/internal/widget/MzActionBarView;->setImportantForAccessibility(I)V

    .line 259
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MzActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/MzActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/MzActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/MzActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/MzActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/MzActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/MzActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarView;->initExpandHomeLayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/MzActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/MzActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 675
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 685
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 686
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 687
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 689
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:string@action_bar_home_subtitle_description_format#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    :goto_1
    return-object v1

    .line 678
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 679
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/MzActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 681
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:string@action_bar_home_description#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 692
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:string@action_bar_home_description_format#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 696
    goto :goto_1
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 536
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 545
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/MzActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, v2}, Landroid/widget/MzActionMenuPresenter;->updateMenuView(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initExpandHomeLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2272
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2273
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v0, #android:layout@action_bar_home#t

    .line 2274
    .local v0, "homeResId":I
    const v3, #android:layout@action_bar_home#t

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MzActionBarView$HomeView;

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    .line 2275
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setShowUp(Z)V

    .line 2276
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2277
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:string@action_bar_up_description#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2281
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2282
    .local v2, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 2283
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2285
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setEnabled(Z)V

    .line 2286
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setFocusable(Z)V

    .line 2287
    return-void
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 938
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 939
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 940
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, #android:layout@action_bar_title_item#t

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 941
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, #android:id@action_bar_title#t

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 942
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, #android:id@action_bar_subtitle#t

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 944
    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 954
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 955
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 960
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 961
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 962
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 965
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadDrawable(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2181
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2182
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 2183
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 2185
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2189
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 2190
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2194
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 2195
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 2197
    :try_start_1
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2201
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 2202
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2205
    :cond_3
    return-void

    .line 2198
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2186
    .restart local p1    # "context":Landroid/content/Context;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private onConfigurationChangedInner()V
    .locals 1

    .prologue
    .line 2208
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mInActionMode:Z

    if-eqz v0, :cond_0

    .line 2209
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    if-eqz v0, :cond_2

    .line 2210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setVisibility(I)V

    .line 2211
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setAlpha(F)V

    .line 2217
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2218
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarView;->updateUpView()V

    .line 2220
    :cond_1
    new-instance v0, Lcom/android/internal/widget/MzActionBarView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarView$3;-><init>(Lcom/android/internal/widget/MzActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 2228
    return-void

    .line 2213
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setVisibility(I)V

    .line 2214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setAlpha(F)V

    goto :goto_0
.end method

.method private removeMenuIfNeed()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 1968
    sget-object v8, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/widget/MzActionBarView;->mIsOverlay:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitWhenNarrow:Z

    if-nez v8, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    instance-of v8, v8, Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v8, :cond_0

    .line 1973
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/android/internal/widget/MzSplitActionBarContainer;

    .line 1974
    .local v5, "splitView":Lcom/android/internal/widget/MzSplitActionBarContainer;
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v8, :cond_0

    .line 1975
    invoke-virtual {v5}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MzScrollingTabContainerView;

    .line 1976
    .local v6, "tabContainer":Lcom/android/internal/widget/MzScrollingTabContainerView;
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v2

    .line 1977
    .local v2, "menuItemCount":I
    invoke-virtual {v6}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getTabItemCount()I

    move-result v7

    .line 1978
    .local v7, "tabItemCount":I
    if-lez v2, :cond_2

    .line 1979
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8, v10}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1980
    .local v0, "child1":Landroid/view/View;
    instance-of v8, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 1983
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuPresenter;->reflashMenu()V

    .line 1984
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v2

    .line 1987
    .end local v0    # "child1":Landroid/view/View;
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_3

    .line 1988
    iput-boolean v10, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    .line 1991
    :cond_3
    iget-boolean v8, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    if-eqz v8, :cond_5

    .line 1992
    add-int v8, v2, v7

    if-le v8, v11, :cond_0

    .line 1993
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1994
    .local v4, "parent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_4

    .line 1995
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1997
    :cond_4
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 1998
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setMenu(Landroid/view/ViewGroup;)V

    .line 1999
    iput-boolean v10, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    goto :goto_0

    .line 2002
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_0

    if-lez v2, :cond_0

    add-int v8, v2, v7

    if-gt v8, v11, :cond_0

    .line 2004
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2005
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    .line 2006
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2009
    :cond_6
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2010
    .local v1, "measureSpec":I
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v8, v1, v1}, Landroid/widget/MzActionMenuView;->measure(II)V

    .line 2011
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setMenu(Landroid/view/ViewGroup;)V

    .line 2012
    invoke-virtual {v6, p0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setActionbarView(Lcom/android/internal/widget/MzActionBarView;)V

    .line 2013
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    goto/16 :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 640
    if-eqz p2, :cond_0

    .line 641
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mWasHomeEnabled:Z

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 655
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 602
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 603
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 604
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 605
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 609
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 612
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->updateHomeAccessibility(Z)V

    .line 615
    return-void

    :cond_3
    move v0, v1

    .line 606
    goto :goto_0

    .line 609
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    .prologue
    .line 658
    if-nez p1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 665
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUpView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2049
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    if-nez v1, :cond_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2053
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mOrientatinPortrait:Z

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2054
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mShowUp:Z

    .line 2055
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mShowUp:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setShowUp(Z)V

    .line 2057
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mShowUp:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setShowUp(Z)V

    goto :goto_0

    .line 2061
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setShowUp(Z)V

    .line 2063
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    if-eqz v1, :cond_0

    .line 2065
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setShowUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 555
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 558
    :cond_0
    return-void

    .line 553
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 916
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1475
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1480
    if-nez p1, :cond_0

    .line 1481
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1483
    :cond_0
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 909
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 325
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 327
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, #android:id@progress_circular#t

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 330
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 317
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, #android:id@progress_horizontal#t

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 322
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 2176
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsible:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 2085
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIsShowing:Z

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 987
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return v3

    .line 991
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 992
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 996
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 997
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 998
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 999
    const/4 v3, 0x1

    goto :goto_0

    .line 997
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mzSetEmbeddedTabView(Lcom/android/internal/widget/MzScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabs"    # Lcom/android/internal/widget/MzScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->removeView(Landroid/view/View;)V

    .line 418
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    .line 419
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mIncludeTabs:Z

    .line 420
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 422
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 423
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 424
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 425
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 431
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 419
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 266
    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 267
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 271
    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarView;->initTitle()V

    .line 275
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeDescriptionRes:I

    if-eqz v1, :cond_2

    .line 276
    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->setNavigationContentDescription(I)V

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 281
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    .line 282
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 289
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarView;->onConfigurationChangedInner()V

    .line 291
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->onDetachedFromWindow()V

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideSubMenus()Z

    .line 309
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 921
    invoke-super {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->onFinishInflate()V

    .line 923
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 924
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 926
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 927
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 928
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 929
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 930
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 935
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 44
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1271
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1273
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->isLayoutRtl()Z

    move-result v13

    .line 1279
    .local v13, "isLayoutRtl":Z
    if-eqz v13, :cond_c

    const/16 v27, 0x1

    .line 1280
    .local v27, "direction":I
    :goto_1
    if-eqz v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingLeft()I

    move-result v16

    .line 1283
    .local v16, "menuStart":I
    :goto_2
    if-eqz v13, :cond_e

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v5, v3, v4

    .line 1284
    .local v5, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingTop()I

    move-result v6

    .line 1290
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v3}, Lcom/meizu/widget/KeyBackButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MzActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1293
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-object/from16 v32, v0

    .line 1295
    .local v32, "homeLayout":Lcom/android/internal/widget/MzActionBarView$HomeView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_10

    const/16 v38, 0x1

    .line 1297
    .local v38, "showTitle":Z
    :goto_5
    const/16 v39, 0x0

    .line 1298
    .local v39, "startOffset":I
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_3

    .line 1299
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_11

    .line 1300
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getStartOffset()I

    move-result v39

    .line 1313
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v39

    invoke-static {v5, v0, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v10

    move-object/from16 v8, p0

    move v11, v6

    move v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/MzActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1315
    move/from16 v0, v39

    invoke-static {v5, v0, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v5

    .line 1317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_4

    .line 1318
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1357
    :cond_4
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_5

    .line 1358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-nez v13, :cond_1d

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v14, p0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/widget/MzActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3}, Landroid/widget/MzActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v27

    add-int v16, v16, v3

    .line 1362
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    .line 1364
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v13, :cond_1e

    const/16 v19, 0x1

    :goto_9
    move-object/from16 v14, p0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/widget/MzActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v27

    add-int v16, v16, v3

    .line 1368
    :cond_6
    const/16 v25, 0x0

    .line 1369
    .local v25, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_1f

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1375
    :cond_7
    :goto_a
    if-eqz v25, :cond_b

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getLayoutDirection()I

    move-result v33

    .line 1377
    .local v33, "layoutDirection":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    .line 1378
    .local v34, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v34

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_20

    check-cast v34, Landroid/app/ActionBar$LayoutParams;

    .end local v34    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v20, v34

    .line 1380
    .local v20, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_b
    if-eqz v20, :cond_21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v29, v0

    .line 1381
    .local v29, "gravity":I
    :goto_c
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v35

    .line 1383
    .local v35, "navWidth":I
    const/16 v40, 0x0

    .line 1384
    .local v40, "topMargin":I
    const/16 v21, 0x0

    .line 1385
    .local v21, "bottomMargin":I
    if-eqz v20, :cond_8

    .line 1386
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v5

    .line 1387
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v27

    add-int v16, v16, v3

    .line 1388
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v40, v0

    .line 1389
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    .line 1392
    :cond_8
    const v3, 0x800007

    and-int v31, v29, v3

    .line 1394
    .local v31, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_25

    .line 1395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MzActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v35

    div-int/lit8 v23, v3, 0x2

    .line 1396
    .local v23, "centeredLeft":I
    if-eqz v13, :cond_23

    .line 1397
    add-int v24, v23, v35

    .line 1398
    .local v24, "centeredStart":I
    move/from16 v22, v23

    .line 1399
    .local v22, "centeredEnd":I
    move/from16 v0, v24

    if-le v0, v5, :cond_22

    .line 1400
    const/16 v31, 0x5

    .line 1417
    .end local v22    # "centeredEnd":I
    .end local v23    # "centeredLeft":I
    .end local v24    # "centeredStart":I
    :cond_9
    :goto_d
    const/16 v42, 0x0

    .line 1418
    .local v42, "xpos":I
    move/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1430
    :goto_e
    :pswitch_1
    and-int/lit8 v41, v29, 0x70

    .line 1432
    .local v41, "vgravity":I
    if-nez v29, :cond_a

    .line 1433
    const/16 v41, 0x10

    .line 1436
    :cond_a
    const/16 v43, 0x0

    .line 1437
    .local v43, "ypos":I
    sparse-switch v41, :sswitch_data_0

    .line 1451
    :goto_f
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 1452
    .local v26, "customWidth":I
    add-int v3, v42, v26

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v43

    move-object/from16 v0, v25

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1454
    move/from16 v0, v26

    invoke-static {v5, v0, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v5

    .line 1457
    .end local v20    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v21    # "bottomMargin":I
    .end local v26    # "customWidth":I
    .end local v29    # "gravity":I
    .end local v31    # "hgravity":I
    .end local v33    # "layoutDirection":I
    .end local v35    # "navWidth":I
    .end local v40    # "topMargin":I
    .end local v41    # "vgravity":I
    .end local v42    # "xpos":I
    .end local v43    # "ypos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v30, v3, 0x2

    .line 1462
    .local v30, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarAtBottom:Z

    if-eqz v3, :cond_28

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    sub-int v8, p5, p3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getMeasuredWidth()I

    move-result v9

    sub-int v10, p5, p3

    invoke-virtual {v3, v4, v8, v9, v10}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1279
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v16    # "menuStart":I
    .end local v25    # "customView":Landroid/view/View;
    .end local v27    # "direction":I
    .end local v30    # "halfProgressHeight":I
    .end local v32    # "homeLayout":Lcom/android/internal/widget/MzActionBarView$HomeView;
    .end local v38    # "showTitle":Z
    .end local v39    # "startOffset":I
    :cond_c
    const/16 v27, -0x1

    goto/16 :goto_1

    .line 1280
    .restart local v27    # "direction":I
    :cond_d
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v16, v3, v4

    goto/16 :goto_2

    .line 1283
    .restart local v16    # "menuStart":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingLeft()I

    move-result v5

    goto/16 :goto_3

    .line 1293
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-object/from16 v32, v0

    goto/16 :goto_4

    .line 1295
    .restart local v32    # "homeLayout":Lcom/android/internal/widget/MzActionBarView$HomeView;
    :cond_10
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 1301
    .restart local v38    # "showTitle":Z
    .restart local v39    # "startOffset":I
    :cond_11
    if-eqz v38, :cond_3

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/MzActionBarView;->mOrientatinPortrait:Z

    if-eqz v3, :cond_12

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getUpWidth()I

    move-result v39

    :goto_10
    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_action_bar_title_margin_left_land:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v39

    goto :goto_10

    .line 1322
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 1323
    if-eqz v38, :cond_13

    .line 1324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v5

    .line 1326
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    move v8, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MzActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1327
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1331
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v3, :cond_4

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_18

    :cond_14
    const/16 v28, 0x1

    .line 1337
    .local v28, "flag":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_19

    :cond_15
    const/4 v3, 0x1

    :goto_12
    and-int v28, v28, v3

    .line 1339
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-nez v3, :cond_17

    .line 1340
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    if-nez v3, :cond_1a

    :cond_16
    const/4 v3, 0x1

    :goto_13
    and-int v28, v28, v3

    .line 1343
    :cond_17
    if-eqz v28, :cond_1b

    .line 1344
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    sub-int v16, v16, v3

    .line 1345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/16 v19, 0x1

    move-object/from16 v14, p0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/widget/MzActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    sub-int v16, v16, v3

    .line 1346
    goto/16 :goto_7

    .line 1334
    .end local v28    # "flag":Z
    :cond_18
    const/16 v28, 0x0

    goto :goto_11

    .line 1337
    .restart local v28    # "flag":Z
    :cond_19
    const/4 v3, 0x0

    goto :goto_12

    .line 1340
    :cond_1a
    const/4 v3, 0x0

    goto :goto_13

    .line 1349
    :cond_1b
    if-eqz v38, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v5

    .line 1350
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-object/from16 v3, p0

    move v8, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MzActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1351
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/MzActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1358
    .end local v28    # "flag":Z
    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1364
    :cond_1e
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 1371
    .restart local v25    # "customView":Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v25, v0

    goto/16 :goto_a

    .line 1378
    .restart local v33    # "layoutDirection":I
    .restart local v34    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 1380
    .end local v34    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v20    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_21
    const v29, 0x800013

    goto/16 :goto_c

    .line 1401
    .restart local v21    # "bottomMargin":I
    .restart local v22    # "centeredEnd":I
    .restart local v23    # "centeredLeft":I
    .restart local v24    # "centeredStart":I
    .restart local v29    # "gravity":I
    .restart local v31    # "hgravity":I
    .restart local v35    # "navWidth":I
    .restart local v40    # "topMargin":I
    :cond_22
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 1402
    const/16 v31, 0x3

    goto/16 :goto_d

    .line 1405
    .end local v22    # "centeredEnd":I
    .end local v24    # "centeredStart":I
    :cond_23
    move/from16 v24, v23

    .line 1406
    .restart local v24    # "centeredStart":I
    add-int v22, v23, v35

    .line 1407
    .restart local v22    # "centeredEnd":I
    move/from16 v0, v24

    if-ge v0, v5, :cond_24

    .line 1408
    const/16 v31, 0x3

    goto/16 :goto_d

    .line 1409
    :cond_24
    move/from16 v0, v22

    move/from16 v1, v16

    if-le v0, v1, :cond_9

    .line 1410
    const/16 v31, 0x5

    goto/16 :goto_d

    .line 1413
    .end local v22    # "centeredEnd":I
    .end local v23    # "centeredLeft":I
    .end local v24    # "centeredStart":I
    :cond_25
    if-nez v29, :cond_9

    .line 1414
    const v31, 0x800003

    goto/16 :goto_d

    .line 1420
    .restart local v42    # "xpos":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MzActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v35

    div-int/lit8 v42, v3, 0x2

    .line 1421
    goto/16 :goto_e

    .line 1423
    :pswitch_5
    if-eqz v13, :cond_26

    move/from16 v42, v16

    .line 1424
    :goto_14
    goto/16 :goto_e

    :cond_26
    move/from16 v42, v5

    .line 1423
    goto :goto_14

    .line 1426
    :pswitch_6
    if-eqz v13, :cond_27

    sub-int v42, v5, v35

    :goto_15
    goto/16 :goto_e

    :cond_27
    sub-int v42, v16, v35

    goto :goto_15

    .line 1439
    .restart local v41    # "vgravity":I
    .restart local v43    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingTop()I

    move-result v37

    .line 1440
    .local v37, "paddedTop":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MzActionBarView;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MzActionBarView;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v36, v3, v4

    .line 1441
    .local v36, "paddedBottom":I
    sub-int v3, v36, v37

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v43, v3, 0x2

    .line 1442
    goto/16 :goto_f

    .line 1444
    .end local v36    # "paddedBottom":I
    .end local v37    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingTop()I

    move-result v3

    add-int v43, v3, v40

    .line 1445
    goto/16 :goto_f

    .line 1447
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v43, v3, v21

    goto/16 :goto_f

    .line 1468
    .end local v20    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v21    # "bottomMargin":I
    .end local v29    # "gravity":I
    .end local v31    # "hgravity":I
    .end local v33    # "layoutDirection":I
    .end local v35    # "navWidth":I
    .end local v40    # "topMargin":I
    .end local v41    # "vgravity":I
    .end local v42    # "xpos":I
    .end local v43    # "ypos":I
    .restart local v30    # "halfProgressHeight":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarPadding:I

    move/from16 v0, v30

    neg-int v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    move/from16 v0, v30

    invoke-virtual {v3, v4, v8, v9, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1418
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1437
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1009
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->removeMenuIfNeed()V

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getChildCount()I

    move-result v8

    .line 1013
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsible:Z

    move/from16 v47, v0

    if-eqz v47, :cond_7

    .line 1014
    const/16 v45, 0x0

    .line 1015
    .local v45, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 1016
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1017
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v47

    if-eqz v47, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    if-eq v7, v0, :cond_1

    .line 1020
    add-int/lit8 v45, v45, 0x1

    .line 1015
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1026
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsableByUser:Z

    move/from16 v47, v0

    if-eqz v47, :cond_4

    if-nez v45, :cond_4

    .line 1028
    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MzActionBarView;->setMeasuredDimension(II)V

    .line 1267
    .end local v26    # "i":I
    .end local v45    # "visibleChildren":I
    :cond_3
    :goto_1
    return-void

    .line 1032
    .restart local v26    # "i":I
    .restart local v45    # "visibleChildren":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v41

    .line 1033
    .local v41, "upChildCount":I
    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v41

    if-ge v0, v1, :cond_6

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1035
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_5

    .line 1036
    add-int/lit8 v45, v45, 0x1

    .line 1033
    :cond_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1040
    .end local v7    # "child":Landroid/view/View;
    :cond_6
    if-nez v45, :cond_7

    .line 1042
    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MzActionBarView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 1047
    .end local v26    # "i":I
    .end local v41    # "upChildCount":I
    .end local v45    # "visibleChildren":I
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v46

    .line 1048
    .local v46, "widthMode":I
    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_8

    .line 1049
    new-instance v47, Ljava/lang/IllegalStateException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " can only be used "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 1053
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1054
    .local v18, "heightMode":I
    const/high16 v47, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_9

    .line 1055
    new-instance v47, Ljava/lang/IllegalStateException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " can only be used "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string/jumbo v49, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 1059
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1061
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mContentHeight:I

    move/from16 v47, v0

    if-ltz v47, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mContentHeight:I

    move/from16 v31, v0

    .line 1064
    .local v31, "maxHeight":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingTop()I

    move-result v47

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingBottom()I

    move-result v48

    add-int v44, v47, v48

    .line 1065
    .local v44, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingLeft()I

    move-result v36

    .line 1066
    .local v36, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getPaddingRight()I

    move-result v37

    .line 1067
    .local v37, "paddingRight":I
    sub-int v17, v31, v44

    .line 1068
    .local v17, "height":I
    const/high16 v47, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1069
    .local v9, "childSpecHeight":I
    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1071
    .local v16, "exactHeightSpec":I
    sub-int v47, v10, v36

    sub-int v6, v47, v37

    .line 1072
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 1073
    .local v28, "leftOfCenter":I
    move/from16 v38, v28

    .line 1077
    .local v38, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    if-eqz v47, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/meizu/widget/KeyBackButton;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_a

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/MzActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1079
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v6, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1082
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x8

    if-eqz v47, :cond_1a

    const/16 v39, 0x1

    .line 1087
    .local v39, "showTitle":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1090
    .local v20, "homeLayout":Lcom/android/internal/widget/MzActionBarView$HomeView;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1092
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    if-gez v47, :cond_1c

    .line 1093
    const/high16 v47, -0x80000000

    move/from16 v0, v47

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1106
    .local v24, "homeWidthSpec":I
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MzActionBarView$HomeView;->measure(II)V

    .line 1108
    const/16 v23, 0x0

    .line 1109
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v48, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-eq v0, v1, :cond_c

    :cond_b
    if-eqz v39, :cond_d

    .line 1111
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 1112
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MzActionBarView$HomeView;->getStartOffset()I

    move-result v47

    add-int v22, v23, v47

    .line 1113
    .local v22, "homeOffsetWidth":I
    const/16 v47, 0x0

    sub-int v48, v6, v22

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1114
    const/16 v47, 0x0

    sub-int v48, v6, v22

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1117
    .end local v22    # "homeOffsetWidth":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_e

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v16

    move/from16 v3, v48

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/widget/MzActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1119
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/MzActionMenuView;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v38, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1122
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    if-eqz v47, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_f

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/MzActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1126
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v38, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1130
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    if-nez v47, :cond_10

    .line 1131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    move/from16 v47, v0

    packed-switch v47, :pswitch_data_0

    .line 1161
    :cond_10
    :goto_7
    const/4 v15, 0x0

    .line 1162
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1f

    .line 1163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1169
    :cond_11
    :goto_8
    if-eqz v15, :cond_15

    .line 1170
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1171
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v47, v0

    if-eqz v47, :cond_20

    move-object/from16 v47, v30

    check-cast v47, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v5, v47

    .line 1174
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v25, 0x0

    .line 1175
    .local v25, "horizontalMargin":I
    const/16 v43, 0x0

    .line 1176
    .local v43, "verticalMargin":I
    if-eqz v5, :cond_12

    .line 1177
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v47, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v48, v0

    add-int v25, v47, v48

    .line 1178
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v43, v47, v48

    .line 1184
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mContentHeight:I

    move/from16 v47, v0

    if-gtz v47, :cond_21

    .line 1185
    const/high16 v12, -0x80000000

    .line 1190
    .local v12, "customNavHeightMode":I
    :goto_a
    const/16 v47, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v48, v0

    if-ltz v48, :cond_13

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v48, v0

    move/from16 v0, v48

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_13
    sub-int v48, v17, v43

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1193
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    const/16 v48, -0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_23

    const/high16 v14, 0x40000000    # 2.0f

    .line 1195
    .local v14, "customNavWidthMode":I
    :goto_b
    const/16 v48, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    if-ltz v47, :cond_24

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    move/from16 v0, v47

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v47

    :goto_c
    sub-int v47, v47, v25

    move/from16 v0, v48

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1198
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_25

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v47, v0

    :goto_d
    and-int/lit8 v19, v47, 0x7

    .line 1203
    .local v19, "hgrav":I
    const/16 v47, 0x1

    move/from16 v0, v19

    move/from16 v1, v47

    if-ne v0, v1, :cond_14

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    const/16 v48, -0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_14

    .line 1204
    move/from16 v0, v28

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v47

    mul-int/lit8 v13, v47, 0x2

    .line 1207
    :cond_14
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1210
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v47

    add-int v47, v47, v25

    sub-int v6, v6, v47

    .line 1222
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v43    # "verticalMargin":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    .line 1223
    .local v34, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v47, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    sget v49, Lcom/flyme/internal/R$dimen;->mz_action_bar_title_margin_right:I

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v48

    sub-int v32, v47, v48

    .line 1224
    .local v32, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    if-eqz v47, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/meizu/widget/KeyBackButton;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_16

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v47

    sub-int v32, v32, v47

    .line 1227
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    add-int v48, v6, v23

    move/from16 v0, v48

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v48

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mContentHeight:I

    move/from16 v49, v0

    const/high16 v50, 0x40000000    # 2.0f

    invoke-static/range {v49 .. v50}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/MzActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    if-eqz v47, :cond_17

    .line 1231
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v28, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1234
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mContentHeight:I

    move/from16 v47, v0

    if-gtz v47, :cond_28

    .line 1235
    const/16 v33, 0x0

    .line 1236
    .local v33, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_26

    .line 1237
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 1238
    .local v42, "v":Landroid/view/View;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredHeight()I

    move-result v47

    add-int v35, v47, v44

    .line 1239
    .local v35, "paddedViewHeight":I
    move/from16 v0, v35

    move/from16 v1, v33

    if-le v0, v1, :cond_18

    .line 1240
    move/from16 v33, v35

    .line 1236
    :cond_18
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1061
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcom/android/internal/widget/MzActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "maxWidth":I
    .end local v33    # "measuredHeight":I
    .end local v34    # "metrics":Landroid/util/DisplayMetrics;
    .end local v35    # "paddedViewHeight":I
    .end local v36    # "paddingLeft":I
    .end local v37    # "paddingRight":I
    .end local v38    # "rightOfCenter":I
    .end local v39    # "showTitle":Z
    .end local v42    # "v":Landroid/view/View;
    .end local v44    # "verticalPadding":I
    :cond_19
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    goto/16 :goto_3

    .line 1082
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v31    # "maxHeight":I
    .restart local v36    # "paddingLeft":I
    .restart local v37    # "paddingRight":I
    .restart local v38    # "rightOfCenter":I
    .restart local v44    # "verticalPadding":I
    :cond_1a
    const/16 v39, 0x0

    goto/16 :goto_4

    .line 1087
    .restart local v39    # "showTitle":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_5

    .line 1095
    .restart local v20    # "homeLayout":Lcom/android/internal/widget/MzActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_6

    .line 1133
    .restart local v23    # "homeWidth":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    if-eqz v47, :cond_10

    .line 1134
    if-eqz v39, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    move/from16 v47, v0

    mul-int/lit8 v27, v47, 0x2

    .line 1135
    .local v27, "itemPaddingSize":I
    :goto_f
    const/16 v47, 0x0

    sub-int v48, v6, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1136
    const/16 v47, 0x0

    sub-int v48, v28, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v29

    .line 1141
    .local v29, "listNavWidth":I
    const/16 v47, 0x0

    sub-int v48, v6, v29

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1142
    const/16 v47, 0x0

    sub-int v48, v28, v29

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1143
    goto/16 :goto_7

    .line 1134
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_f

    .line 1146
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_10

    .line 1147
    if-eqz v39, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    move/from16 v47, v0

    mul-int/lit8 v27, v47, 0x2

    .line 1148
    .restart local v27    # "itemPaddingSize":I
    :goto_10
    const/16 v47, 0x0

    sub-int v48, v6, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1149
    const/16 v47, 0x0

    sub-int v48, v28, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-object/from16 v47, v0

    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Lcom/android/internal/widget/MzScrollingTabContainerView;->measure(II)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getMeasuredWidth()I

    move-result v40

    .line 1154
    .local v40, "tabWidth":I
    const/16 v47, 0x0

    sub-int v48, v6, v40

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1155
    const/16 v47, 0x0

    sub-int v48, v28, v40

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 1147
    .end local v27    # "itemPaddingSize":I
    .end local v40    # "tabWidth":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_10

    .line 1164
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x10

    if-eqz v47, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v47, v0

    if-eqz v47, :cond_11

    .line 1166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1171
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1187
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v43    # "verticalMargin":I
    :cond_21
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v47, v0

    const/16 v48, -0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_22

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_11
    goto/16 :goto_a

    .end local v12    # "customNavHeightMode":I
    :cond_22
    const/high16 v12, -0x80000000

    goto :goto_11

    .line 1193
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    .restart local v12    # "customNavHeightMode":I
    :cond_23
    const/high16 v14, -0x80000000

    goto/16 :goto_b

    .restart local v14    # "customNavWidthMode":I
    :cond_24
    move/from16 v47, v6

    .line 1195
    goto/16 :goto_c

    .line 1198
    .restart local v13    # "customNavWidth":I
    :cond_25
    const v47, 0x800013

    goto/16 :goto_d

    .line 1243
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v43    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "maxWidth":I
    .restart local v33    # "measuredHeight":I
    .restart local v34    # "metrics":Landroid/util/DisplayMetrics;
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/MzActionBarView;->setMeasuredDimension(II)V

    .line 1248
    .end local v26    # "i":I
    .end local v33    # "measuredHeight":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_27

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    move-object/from16 v47, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getMeasuredHeight()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/internal/widget/MzActionBarContextView;->setContentHeight(I)V

    .line 1252
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    if-eqz v47, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_3

    .line 1255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarAtBottom:Z

    move/from16 v47, v0

    if-eqz v47, :cond_29

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    move/from16 v0, v48

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    sget v50, Lcom/flyme/internal/R$dimen;->mz_action_bar_progress_height:I

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    const/high16 v50, 0x40000000    # 2.0f

    invoke-static/range {v49 .. v50}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1245
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/MzActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1263
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarPadding:I

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x2

    sub-int v48, v10, v48

    const/high16 v49, 0x40000000    # 2.0f

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarView;->getMeasuredHeight()I

    move-result v49

    const/high16 v50, -0x80000000

    invoke-static/range {v49 .. v50}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1502
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/MzActionBarView$SavedState;

    .line 1504
    .local v1, "state":Lcom/android/internal/widget/MzActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/MzAbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1506
    iget v2, v1, Lcom/android/internal/widget/MzActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1508
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/MzActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1509
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1510
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1514
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/MzActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1515
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->postShowOverflowMenu()V

    .line 1517
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1488
    invoke-super {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1489
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/MzActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1491
    .local v0, "state":Lcom/android/internal/widget/MzActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1492
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/MzActionBarView$SavedState;->expandedMenuItemId:I

    .line 1495
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/MzActionBarView$SavedState;->isOverflowOpen:Z

    .line 1497
    return-object v0
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2253
    invoke-super {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->onSmartBarConfigurationChanged()V

    .line 2254
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_smartbar_auto_hide"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2255
    .local v0, "splitActionbar":Z
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mCompulsorySplit:Z

    if-eq v2, v0, :cond_1

    .line 2256
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mCompulsorySplit:Z

    .line 2258
    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mCompulsorySplit:Z

    if-nez v2, :cond_2

    .line 2259
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    .line 2263
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->setSplitToolbar(Z)V

    .line 2265
    :cond_1
    return-void

    .line 2261
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0
.end method

.method public setActionBarSplitChangedListener(Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitChangedListener:Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;

    .line 2082
    return-void
.end method

.method public setActionItemBackgroundEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1956
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mEnableActionItemBackground:Z

    .line 1957
    return-void
.end method

.method public setCollapsableByUser(Z)V
    .locals 0
    .param p1, "collapsable"    # Z

    .prologue
    .line 2172
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsableByUser:Z

    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsible:Z

    .line 2173
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 2
    .param p1, "collapsible"    # Z

    .prologue
    .line 976
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsible:Z

    .line 979
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsible:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsableByUser:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mIsCollapsible:Z

    .line 981
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/MzActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/MzActionBarContextView;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    .line 973
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 561
    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 562
    .local v0, "showCustom":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 563
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 566
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->removeView(Landroid/view/View;)V

    .line 568
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    .line 569
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 570
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 572
    :cond_2
    return-void

    .line 561
    .end local v0    # "showCustom":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 1545
    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1548
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/MzActionBarView;->mDefaultUpDescription:I

    .line 1549
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1526
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 12
    .param p1, "options"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 700
    iget v9, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_6

    .line 701
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    .line 703
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_12

    .line 704
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 706
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 707
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_7

    move v4, v7

    .line 708
    .local v4, "setUp":Z
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setShowUp(Z)V

    .line 714
    if-eqz v4, :cond_0

    .line 715
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MzActionBarView;->setHomeButtonEnabled(Z)V

    .line 724
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_1

    .line 725
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_8

    .line 726
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarView;->initTitle()V

    .line 732
    :cond_1
    :goto_2
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_9

    move v5, v7

    .line 733
    .local v5, "showHome":Z
    :goto_3
    iget v9, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_a

    move v1, v7

    .line 734
    .local v1, "homeAsUp":Z
    :goto_4
    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    move v6, v7

    .line 735
    .local v6, "titleUp":Z
    :goto_5
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setShowIcon(Z)V

    .line 737
    if-nez v5, :cond_2

    if-eqz v6, :cond_c

    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_c

    move v2, v8

    .line 739
    .local v2, "homeVis":I
    :goto_6
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v9, v2}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setVisibility(I)V

    .line 741
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_3

    .line 742
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_d

    .line 743
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 749
    :cond_3
    :goto_7
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_4

    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_4

    .line 751
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_e

    .line 752
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 753
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 762
    :cond_4
    :goto_8
    if-eqz v5, :cond_5

    .line 763
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/internal/widget/MzActionBarView;->loadDrawable(Landroid/content/Context;)V

    .line 764
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_5

    .line 765
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_f

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_f

    move v3, v7

    .line 766
    .local v3, "logoVis":Z
    :goto_9
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    if-eqz v3, :cond_10

    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_a
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 769
    .end local v3    # "logoVis":Z
    :cond_5
    if-eqz v5, :cond_11

    if-eqz v1, :cond_11

    .line 770
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 772
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setClickable(Z)V

    .line 782
    :goto_b
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 788
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_c
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/MzActionBarView;->updateHomeAccessibility(Z)V

    .line 789
    return-void

    .line 700
    .end local v0    # "flagsChanged":I
    :cond_6
    iget v9, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_7
    move v4, v8

    .line 707
    goto/16 :goto_1

    .line 728
    :cond_8
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_9
    move v5, v8

    .line 732
    goto/16 :goto_3

    .restart local v5    # "showHome":Z
    :cond_a
    move v1, v8

    .line 733
    goto/16 :goto_4

    .restart local v1    # "homeAsUp":Z
    :cond_b
    move v6, v8

    .line 734
    goto/16 :goto_5

    .line 737
    .restart local v6    # "titleUp":Z
    :cond_c
    const/16 v2, 0x8

    goto/16 :goto_6

    .line 745
    .restart local v2    # "homeVis":I
    :cond_d
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/MzActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 755
    :cond_e
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 756
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_8

    :cond_f
    move v3, v8

    .line 765
    goto :goto_9

    .line 766
    .restart local v3    # "logoVis":Z
    :cond_10
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 775
    .end local v3    # "logoVis":Z
    :cond_11
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v9, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 777
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setClickable(Z)V

    goto :goto_b

    .line 784
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->invalidate()V

    goto :goto_c
.end method

.method public setDockTabAndMenu(Z)V
    .locals 0
    .param p1, "dockTabAndMenu"    # Z

    .prologue
    .line 2268
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    .line 2269
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 876
    iput-object p2, p0, Lcom/android/internal/widget/MzActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 877
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 881
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 889
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 0
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 412
    return-void
.end method

.method public setEnableBackButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2232
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mEnableBackButton:Z

    if-eq v0, p1, :cond_0

    .line 2233
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mEnableBackButton:Z

    .line 2234
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->updateSplitBackButton()V

    .line 2235
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->reflashMenu()V

    .line 2240
    :cond_0
    return-void
.end method

.method public setEnabledBackWhenOverlay(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mShowBackWhenOverlay:Z

    if-eq v0, p1, :cond_0

    .line 2071
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mShowBackWhenOverlay:Z

    .line 2072
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->updateSplitBackButton()V

    .line 2074
    :cond_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 636
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 637
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 806
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 807
    return-void

    .line 806
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 793
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    if-nez v0, :cond_3

    .line 803
    :cond_2
    :goto_0
    return-void

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 821
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 822
    return-void

    .line 821
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 815
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 818
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v4, 0x0

    .line 438
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v5, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v5, :cond_2

    .line 441
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 442
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_2
    move-object v0, p1

    .line 445
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 446
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 447
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v5, :cond_3

    .line 448
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v5}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 449
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    .line 450
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 453
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-nez v5, :cond_4

    .line 454
    new-instance v5, Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/MzActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    .line 455
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, p2}, Landroid/widget/MzActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 456
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const v6, #android:id@action_menu_presenter#t

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setId(I)V

    .line 457
    new-instance v5, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/MzActionBarView;Lcom/android/internal/widget/MzActionBarView$1;)V

    iput-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    .line 461
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarView;->mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, v4, v4}, Landroid/widget/MzActionMenuPresenter;->setBackButtonEnable(ZZ)V

    .line 467
    :cond_4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 473
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-eqz v5, :cond_8

    .line 475
    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, v9}, Landroid/widget/MzActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 481
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 484
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-boolean v6, p0, Lcom/android/internal/widget/MzActionBarView;->mEnableActionItemBackground:Z

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setActionItemBackgroundEnable(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->updateSplitBackButton()V

    .line 487
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, p0}, Landroid/widget/MzActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/MzActionMenuView;

    .line 488
    .local v2, "menuView":Landroid/widget/MzActionMenuView;
    invoke-virtual {v2}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 489
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    if-eq v3, p0, :cond_6

    .line 490
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 492
    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    .line 529
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v5, :cond_0

    .line 530
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    iget-boolean v6, p0, Lcom/android/internal/widget/MzActionBarView;->mInActionMode:Z

    if-eqz v6, :cond_7

    const/16 v4, 0x8

    :cond_7
    invoke-virtual {v5, v4}, Landroid/widget/MzActionMenuView;->setVisibility(I)V

    goto/16 :goto_0

    .line 494
    .end local v2    # "menuView":Landroid/widget/MzActionMenuView;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, v4}, Landroid/widget/MzActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 496
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6, v9}, Landroid/widget/MzActionMenuPresenter;->setWidthLimit(IZ)V

    .line 499
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    .line 502
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    .line 505
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 506
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 507
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->updateSplitBackButton()V

    .line 512
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v5, p0}, Landroid/widget/MzActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/MzActionMenuView;

    .line 513
    .restart local v2    # "menuView":Landroid/widget/MzActionMenuView;
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    .line 514
    invoke-virtual {v2}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 515
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v5, :cond_9

    .line 516
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 518
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getAnimatedVisibility()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/MzActionMenuView;->setVisibility(I)V

    .line 519
    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 522
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/MzActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuPrepared:Z

    .line 435
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1538
    iput p1, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeDescriptionRes:I

    .line 1539
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1540
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->updateHomeAccessibility(Z)V

    .line 1541
    return-void

    .line 1539
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1534
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarView;->updateHomeAccessibility(Z)V

    .line 1535
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setUpIndicator(I)V

    .line 1530
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView;->mHomeLayout:Lcom/android/internal/widget/MzActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1521
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 829
    iget v0, p0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    .line 830
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 831
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 832
    packed-switch v0, :pswitch_data_0

    .line 844
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 869
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/MzActionBarView;->mNavigationMode:I

    .line 870
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 872
    :cond_2
    return-void

    .line 834
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 835
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 839
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 846
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 847
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    const v4, #android:attr@actionDropDownStyle#t

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 849
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v3, #android:id@action_bar_spinner#t

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 850
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mContext:Landroid/content/Context;

    const v4, #android:attr@actionBarTabBarStyle#t

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 852
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 854
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 855
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 858
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 860
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 861
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 864
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 832
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 844
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setProgressBarShowAtBottom(Z)V
    .locals 1
    .param p1, "showAtBottom"    # Z

    .prologue
    .line 2243
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarAtBottom:Z

    if-eq v0, p1, :cond_0

    .line 2244
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mProgressBarAtBottom:Z

    .line 2245
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 2247
    :cond_0
    return-void
.end method

.method public setShowing(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .prologue
    .line 2089
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mIsShowing:Z

    .line 2090
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "splitActionBar"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 334
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_6

    .line 335
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 337
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 344
    :cond_0
    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-nez v1, :cond_7

    .line 346
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v4, -0x1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuView;->requestLayout()V

    .line 356
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 357
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/widget/MzActionBarView;->mIsShowing:Z

    if-eqz v4, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 364
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v1, :cond_5

    .line 365
    if-nez p1, :cond_9

    .line 366
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1, v5}, Landroid/widget/MzActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 385
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->setSplitToolbar(Z)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitChangedListener:Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;

    if-eqz v1, :cond_6

    .line 390
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitChangedListener:Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;->onSplitChanged(Z)V

    .line 394
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->updateSplitBackButton()V

    .line 396
    return-void

    .line 351
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v4, -0x2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    move v1, v3

    .line 357
    goto :goto_1

    .line 373
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1, v2}, Landroid/widget/MzActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/MzActionMenuPresenter;->setWidthLimit(IZ)V

    .line 378
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/MzActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 622
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 623
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 624
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/MzActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 630
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 632
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->updateHomeAccessibility(Z)V

    .line 633
    return-void

    :cond_2
    move v1, v3

    .line 626
    goto :goto_0

    :cond_3
    move v0, v2

    .line 627
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 630
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUserTitle:Z

    .line 586
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 587
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 299
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 599
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowAsActionMenu()Z
    .locals 1

    .prologue
    .line 1964
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarView;->mDockTabAndMenu:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showTabsAtBottom(Z)V
    .locals 3
    .param p1, "showAtBottom"    # Z

    .prologue
    .line 2146
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-eq v1, p1, :cond_2

    .line 2147
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    .line 2148
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v1, :cond_1

    .line 2149
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2150
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2151
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2153
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-nez v1, :cond_3

    .line 2154
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2155
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2156
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2164
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->updateSplitBackButton()V

    .line 2166
    :cond_2
    return-void

    .line 2159
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzActionBarView;->addView(Landroid/view/View;)V

    .line 2160
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public updateSplitBackButton()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2093
    sget-object v7, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2097
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitActionBar:Z

    .line 2098
    .local v2, "splitActionBar":Z
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    instance-of v7, v7, Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v7, :cond_0

    .line 2099
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    check-cast v3, Lcom/android/internal/widget/MzSplitActionBarContainer;

    .line 2100
    .local v3, "splitView":Lcom/android/internal/widget/MzSplitActionBarContainer;
    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mOrientatinPortrait:Z

    if-nez v7, :cond_5

    .line 2101
    invoke-virtual {v3, v5, v5}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonEnable(ZZ)V

    .line 2102
    move v1, v2

    .line 2104
    .local v1, "barVisible":Z
    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mIsOverlay:Z

    if-eqz v7, :cond_2

    .line 2105
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarView;->getWindowSystemUiVisibility()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_3

    :goto_1
    and-int/2addr v1, v4

    .line 2108
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2109
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v4, :cond_0

    .line 2110
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v4, v5, v5}, Landroid/widget/MzActionMenuPresenter;->setBackButtonEnable(ZZ)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 2105
    goto :goto_1

    :cond_4
    move v4, v6

    .line 2108
    goto :goto_2

    .line 2113
    .end local v1    # "barVisible":Z
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mEnableBackButton:Z

    if-eqz v7, :cond_9

    if-eqz v2, :cond_9

    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v7, :cond_9

    move v0, v4

    .line 2116
    .local v0, "addToMenu":Z
    :goto_3
    iget-object v7, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v7, :cond_6

    .line 2117
    iget-object v8, p0, Lcom/android/internal/widget/MzActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mIsOverlay:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mShowBackWhenOverlay:Z

    if-nez v7, :cond_a

    move v7, v4

    :goto_4
    invoke-virtual {v8, v0, v7}, Landroid/widget/MzActionMenuPresenter;->setBackButtonEnable(ZZ)V

    .line 2120
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mIsOverlay:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mShowBackWhenOverlay:Z

    if-eqz v7, :cond_8

    .line 2121
    :cond_7
    if-eqz v0, :cond_b

    move v7, v5

    :goto_5
    iget-boolean v8, p0, Lcom/android/internal/widget/MzActionBarView;->mShowTabsAtBottom:Z

    if-nez v8, :cond_c

    :goto_6
    invoke-virtual {v3, v7, v4}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonEnable(ZZ)V

    .line 2124
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/widget/MzActionBarView;->mIsOverlay:Z

    if-nez v4, :cond_e

    .line 2131
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mIsShowing:Z

    if-eqz v7, :cond_d

    :goto_7
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "addToMenu":Z
    :cond_9
    move v0, v5

    .line 2113
    goto :goto_3

    .restart local v0    # "addToMenu":Z
    :cond_a
    move v7, v5

    .line 2117
    goto :goto_4

    .line 2121
    :cond_b
    iget-boolean v7, p0, Lcom/android/internal/widget/MzActionBarView;->mEnableBackButton:Z

    goto :goto_5

    :cond_c
    move v4, v5

    goto :goto_6

    :cond_d
    move v5, v6

    .line 2131
    goto :goto_7

    .line 2135
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarView;->mIsShowing:Z

    .line 2136
    .restart local v1    # "barVisible":Z
    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    :goto_8
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_f
    move v5, v6

    goto :goto_8
.end method
