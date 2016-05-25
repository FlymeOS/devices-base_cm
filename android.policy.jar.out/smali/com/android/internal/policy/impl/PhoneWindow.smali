.class public Lcom/android/internal/policy/impl/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field private mBackgroundFallbackResource:I

.field private mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContentScene:Landroid/transition/Scene;

.field private mContext:Landroid/content/Context;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field private mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnableGestures:Z

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mNavigationBarColor:I

.field mOutsetBottom:Landroid/util/TypedValue;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field private mStatusBarColor:I

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 337
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 340
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    .line 160
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 161
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 235
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 236
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    .line 245
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 247
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 248
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    .line 249
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    .line 250
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedStatusBarColor:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 253
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 255
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 257
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 265
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 301
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 305
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 317
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 318
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 319
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 320
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 321
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 322
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 323
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 324
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 327
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 341
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContext:Landroid/content/Context;

    .line 342
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnableGestures:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnableGestures:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;
    .param p4, "x4"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ContextMenuBuilder;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/MenuDialogHelper;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindow;ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4349
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4350
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_1

    .line 4375
    :cond_0
    :goto_0
    return-void

    .line 4354
    :cond_1
    if-nez p3, :cond_3

    .line 4356
    if-nez p2, :cond_2

    .line 4357
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 4358
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 4362
    :cond_2
    if-eqz p2, :cond_3

    .line 4364
    iget-object p3, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 4369
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 4372
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4373
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 705
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    .prologue
    .line 1094
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1096
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    :cond_0
    monitor-exit p0

    return-void

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    .line 1105
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 1109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    :cond_0
    monitor-exit p0

    return-void

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 4260
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 4269
    :goto_0
    return-object v0

    .line 4262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4265
    :cond_1
    const v0, 0x102037d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 4266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 4267
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4269
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4091
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 4092
    if-nez p2, :cond_1

    .line 4093
    const/4 v2, 0x0

    .line 4111
    :cond_0
    :goto_0
    return-object v2

    .line 4095
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4099
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 4100
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 4101
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_4

    .line 4102
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4104
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 4107
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 4108
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_0

    .line 4109
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    goto :goto_0
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 4273
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 4274
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 4283
    :goto_0
    return-object v0

    .line 4276
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4277
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4279
    :cond_1
    const v0, 0x102037e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 4280
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 4281
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4283
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1873
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4242
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    .line 4247
    :goto_0
    return-object v0

    .line 4244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4245
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4247
    :cond_1
    const v0, 0x1020032

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    .prologue
    .line 1328
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1331
    :goto_0
    return v1

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    const/16 v1, 0x51

    goto :goto_0
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 4123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v5, 0x0

    .line 4138
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 4139
    if-nez p2, :cond_1

    .line 4140
    const/4 v2, 0x0

    .line 4160
    :cond_0
    :goto_0
    return-object v2

    .line 4142
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4146
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 4147
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 4148
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_4

    .line 4149
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4151
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 4154
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 4155
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 4156
    if-eqz p3, :cond_6

    move-object v2, p3

    :goto_1
    aput-object v2, v0, p1

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_1
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4288
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    .line 4293
    :goto_0
    return-object v0

    .line 4290
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 4293
    :cond_1
    const v0, 0x1020034

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 5
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 4064
    if-eq p1, p2, :cond_0

    .line 4077
    .end local p1    # "currentValue":Landroid/transition/Transition;
    :goto_0
    return-object p1

    .line 4067
    .restart local p1    # "currentValue":Landroid/transition/Transition;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 4068
    .local v2, "transitionId":I
    move-object v1, p2

    .line 4069
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_1

    const/high16 v3, 0x10f0000

    if-eq v2, v3, :cond_1

    .line 4070
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 4071
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 4072
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 4074
    const/4 v1, 0x0

    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    :cond_1
    move-object p1, v1

    .line 4077
    goto :goto_0
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    .prologue
    .line 1739
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1741
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1742
    return-object v0

    .line 1745
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1663
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1664
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1665
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1668
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1669
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1671
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1673
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1674
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1676
    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/16 v11, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 3928
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v7, :cond_0

    .line 3929
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 3930
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/high16 v8, 0x40000

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 3931
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7, v12}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 3932
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v7, :cond_0

    .line 3933
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3936
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v7, :cond_f

    .line 3937
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 3940
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 3942
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const v8, 0x102037f

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DecorContentParent;

    .line 3945
    .local v0, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v0, :cond_11

    .line 3946
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 3947
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 3948
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1

    .line 3949
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 3952
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 3953
    .local v3, "localFeatures":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v13, :cond_3

    .line 3954
    shl-int v7, v12, v1

    and-int/2addr v7, v3

    if-eqz v7, :cond_2

    .line 3955
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7, v1}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 3953
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3959
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 3961
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_10

    .line 3963
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 3970
    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3972
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 3980
    :cond_7
    invoke-direct {p0, v9, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    .line 3981
    .local v4, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v4, :cond_8

    iget-object v7, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v7, :cond_9

    .line 3982
    :cond_8
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    .line 4004
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v7, :cond_a

    .line 4005
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 4010
    :cond_a
    invoke-virtual {p0, v13}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4011
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v7, :cond_b

    .line 4012
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x1b

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 4015
    .local v6, "transitionRes":I
    if-eqz v6, :cond_14

    .line 4016
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v2

    .line 4017
    .local v2, "inflater":Landroid/transition/TransitionInflater;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v7}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 4024
    .end local v2    # "inflater":Landroid/transition/TransitionInflater;
    .end local v6    # "transitionRes":I
    :cond_b
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v8, 0x1c

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 4026
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x28

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 4028
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v8, 0x1d

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 4030
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x29

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 4032
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v8, 0x1e

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4034
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x2a

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4037
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v8, 0x1f

    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4039
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v9, 0x2b

    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4042
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v7, :cond_c

    .line 4043
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x21

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 4046
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v7, :cond_d

    .line 4047
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 4050
    :cond_d
    iget-wide v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_e

    .line 4051
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x25

    const/16 v9, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 4055
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v7, :cond_f

    .line 4056
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 4061
    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_f
    return-void

    .line 3964
    .restart local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v1    # "i":I
    .restart local v3    # "localFeatures":I
    :cond_10
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3966
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 3968
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto/16 :goto_1

    .line 3985
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    :cond_11
    const v7, 0x1020016

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 3986
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    .line 3987
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_13

    .line 3988
    const v7, 0x1020035

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3990
    .local v5, "titleContainer":Landroid/view/View;
    if-eqz v5, :cond_12

    .line 3991
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3995
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_9

    .line 3996
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3993
    :cond_12
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 3999
    .end local v5    # "titleContainer":Landroid/view/View;
    :cond_13
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4020
    .restart local v6    # "transitionRes":I
    :cond_14
    new-instance v7, Landroid/transition/TransitionManager;

    invoke-direct {v7}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    goto/16 :goto_3
.end method

.method private isTranslucent()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4422
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4423
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method private launchDefaultSearch()Z
    .locals 6

    .prologue
    .line 4385
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4386
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4387
    :cond_0
    const/4 v1, 0x0

    .line 4392
    .local v1, "result":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 4395
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->launchAssistAction(ILjava/lang/String;I)Z

    move-result v1

    .line 4398
    .end local v1    # "result":Z
    :cond_1
    return v1

    .line 4389
    :cond_2
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4390
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 4082
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4087
    :goto_0
    return-object v1

    .line 4084
    :catch_0
    move-exception v0

    .line 4085
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 18
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 722
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 730
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 731
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 733
    .local v15, "isXLarge":Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .line 736
    .local v14, "isHoneycombApp":Z
    :goto_2
    if-eqz v15, :cond_2

    if-nez v14, :cond_0

    .line 741
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 742
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 744
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .line 731
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 733
    .restart local v15    # "isXLarge":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 748
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 749
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 754
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 758
    const/4 v3, -0x2

    .line 759
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_d

    .line 760
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v4, :cond_b

    .line 762
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_0

    .line 770
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 774
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 775
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    .line 776
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 780
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    .line 783
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 784
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 789
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 792
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 793
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 794
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 796
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 803
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 816
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_a
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 818
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->y:I

    const/16 v7, 0x3eb

    const/high16 v8, 0x820000

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget v9, v9, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 825
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_f

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 827
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 832
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 834
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    goto/16 :goto_0

    .line 764
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 766
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_3

    .line 787
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_4

    .line 805
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_e

    .line 806
    const/4 v3, -0x1

    goto :goto_5

    .line 807
    :cond_e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 810
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 811
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 812
    const/4 v3, -0x1

    goto/16 :goto_5

    .line 829
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_f
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_6
.end method

.method private openPanelsAfterRestore()V
    .locals 4

    .prologue
    .line 2147
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 2149
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 2167
    :cond_0
    return-void

    .line 2154
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2155
    aget-object v2, v1, v0

    .line 2159
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    .line 2160
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2161
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_2

    .line 2162
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2163
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2154
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 1120
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 1121
    :cond_0
    const/4 v0, 0x0

    .line 1143
    :cond_1
    :goto_0
    return v0

    .line 1124
    :cond_2
    const/4 v0, 0x0

    .line 1128
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    .line 1130
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1133
    :cond_4
    if-eqz v0, :cond_1

    .line 1135
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1138
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v1, :cond_1

    .line 1139
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private registerSwipeCallbacks()V
    .locals 2

    .prologue
    .line 4297
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    .line 4299
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    .line 4305
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    .line 4335
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 7
    .param p1, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1195
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1198
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1199
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_4

    .line 1200
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1202
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1204
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1205
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1208
    :cond_2
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1212
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1214
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1215
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1244
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 1219
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1220
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1221
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1222
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1228
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1230
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_3

    .line 1235
    if-eqz p1, :cond_7

    iget-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v5, :cond_6

    move v1, v3

    .line 1237
    .local v1, "newExpandedMode":Z
    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1238
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1241
    iput-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1243
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0

    .end local v1    # "newExpandedMode":Z
    :cond_6
    move v1, v4

    .line 1235
    goto :goto_1

    :cond_7
    iget-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 4
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
    .line 2123
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2124
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2125
    .local v0, "curFeatureId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2126
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 2123
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2131
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2132
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_1

    .line 2139
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
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
    .line 2103
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 2104
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 2113
    :cond_0
    return-void

    .line 2108
    :cond_1
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2109
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 2110
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2108
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 1649
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1650
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1652
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1655
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 1657
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1659
    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    .line 488
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 489
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_0
.end method

.method private updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 4184
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 4215
    :cond_0
    :goto_0
    return-void

    .line 4188
    :cond_1
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 4190
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    .line 4194
    :cond_2
    const/4 v0, 0x0

    .line 4195
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_4

    .line 4196
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4197
    if-nez v0, :cond_3

    .line 4198
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 4199
    :cond_3
    if-nez v0, :cond_4

    .line 4200
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 4202
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_6

    .line 4203
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_0

    .line 4205
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4208
    :cond_6
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_7

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_0

    .line 4211
    :cond_7
    iput-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 4212
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 4213
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .prologue
    .line 4221
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 4238
    :cond_0
    :goto_0
    return-void

    .line 4225
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 4227
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    .line 4231
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 4232
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4233
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    .line 4236
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1572
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1573
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1575
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1576
    .local v1, "features":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_6

    .line 1577
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1

    .line 1578
    if-eqz v2, :cond_4

    .line 1579
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1580
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_0

    if-ge v3, v8, :cond_3

    :cond_0
    move v4, v5

    .line 1582
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1587
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_1
    :goto_1
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2

    .line 1588
    if-eqz v0, :cond_5

    .line 1589
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1646
    :cond_2
    :goto_2
    return-void

    .line 1580
    .restart local v3    # "level":I
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 1584
    .end local v3    # "level":I
    :cond_4
    const-string v6, "PhoneWindow"

    const-string v7, "Horizontal progress bar not located in current window decor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1591
    :cond_5
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1594
    :cond_6
    const/4 v6, -0x2

    if-ne p1, v6, :cond_a

    .line 1595
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_7

    .line 1596
    if-eqz v2, :cond_8

    .line 1597
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1602
    :cond_7
    :goto_3
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    .line 1603
    if-eqz v0, :cond_9

    .line 1604
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1599
    :cond_8
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1606
    :cond_9
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1609
    :cond_a
    const/4 v6, -0x3

    if-ne p1, v6, :cond_c

    .line 1610
    if-eqz v2, :cond_b

    .line 1611
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1613
    :cond_b
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1615
    :cond_c
    const/4 v6, -0x4

    if-ne p1, v6, :cond_e

    .line 1616
    if-eqz v2, :cond_d

    .line 1617
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1619
    :cond_d
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1621
    :cond_e
    if-ltz p1, :cond_11

    if-gt p1, v8, :cond_11

    .line 1625
    if-eqz v2, :cond_f

    .line 1626
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1631
    :goto_4
    if-ge p1, v8, :cond_10

    .line 1632
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1628
    :cond_f
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1634
    :cond_10
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1636
    :cond_11
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_2

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_2

    .line 1637
    if-eqz v2, :cond_12

    .line 1638
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1643
    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 1640
    :cond_12
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 471
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const-string v1, "PhoneWindow"

    const-string v2, "addContentView does not support content transitions"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 477
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 478
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 480
    :cond_2
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    .prologue
    .line 3924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 3925
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 907
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 918
    :goto_0
    return-void

    .line 911
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    .line 912
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 914
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 915
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 917
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public final closeAllPanels()V
    .locals 6

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1073
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1078
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    array-length v0, v3

    .line 1079
    .local v0, "N":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1080
    aget-object v2, v3, v1

    .line 1081
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 1082
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1079
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1078
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1086
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0
.end method

.method public final closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 841
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 850
    :goto_0
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 846
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    .line 848
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 865
    if-eqz p2, :cond_1

    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 872
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3

    .line 873
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_2

    .line 874
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 876
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_2

    .line 877
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 881
    :cond_2
    if-eqz p2, :cond_3

    .line 882
    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 886
    :cond_3
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 887
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 888
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 891
    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 893
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_4

    .line 896
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 897
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 900
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_0

    .line 901
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 902
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    goto :goto_0
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 4252
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4253
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 4254
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4256
    :cond_0
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 948
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 949
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    const/4 v0, 0x0

    .line 953
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 954
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 955
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 956
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 957
    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 960
    :cond_2
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 961
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 963
    :cond_3
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 964
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 967
    const/16 v2, 0x8

    if-eq p1, v2, :cond_4

    if-nez p1, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_0

    .line 969
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 970
    if-eqz v1, :cond_0

    .line 971
    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 972
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 945
    :cond_0
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1168
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1169
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1170
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1171
    aget-object v2, v3, v1

    .line 1172
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1176
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1169
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1170
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1176
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 3576
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 28
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 3597
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3609
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v25, 0x4

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    .line 3610
    const v25, 0x10100

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    xor-int/lit8 v26, v26, -0x1

    and-int v10, v25, v26

    .line 3612
    .local v10, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_26

    .line 3613
    const/16 v25, -0x2

    const/16 v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setLayout(II)V

    .line 3614
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3619
    :goto_0
    const/16 v25, 0x3

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_27

    .line 3620
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3626
    :cond_0
    :goto_1
    const/16 v25, 0x11

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 3627
    const/16 v25, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3630
    :cond_1
    const/16 v25, 0x10

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 3631
    const/16 v25, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3634
    :cond_2
    const/16 v25, 0x19

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 3635
    const/16 v25, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3638
    :cond_3
    const/16 v25, 0x9

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 3639
    const/16 v25, 0x400

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v26

    xor-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3642
    :cond_4
    const/16 v25, 0x17

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 3644
    const/high16 v25, 0x4000000

    const/high16 v26, 0x4000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3648
    :cond_5
    const/16 v25, 0x18

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 3650
    const/high16 v25, 0x8000000

    const/high16 v26, 0x8000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3654
    :cond_6
    const/16 v25, 0x16

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 3655
    const/high16 v25, 0x2000000

    const/high16 v26, 0x2000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3658
    :cond_7
    const/16 v25, 0xe

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 3659
    const/high16 v25, 0x100000

    const/high16 v26, 0x100000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3662
    :cond_8
    const/16 v26, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v25, v0

    const/16 v27, 0xb

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_28

    const/16 v25, 0x1

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 3665
    const/high16 v25, 0x800000

    const/high16 v26, 0x800000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3668
    :cond_9
    const/16 v25, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3669
    const/16 v25, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3670
    const/16 v25, 0x30

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 3671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_a

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 3672
    :cond_a
    const/16 v25, 0x30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3675
    :cond_b
    const/16 v25, 0x32

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_c

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3677
    :cond_c
    const/16 v25, 0x32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3680
    :cond_d
    const/16 v25, 0x33

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 3681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_e

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 3682
    :cond_e
    const/16 v25, 0x33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3685
    :cond_f
    const/16 v25, 0x31

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_10

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 3687
    :cond_10
    const/16 v25, 0x31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3690
    :cond_11
    const/16 v25, 0x1a

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 3691
    const/16 v25, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3693
    :cond_12
    const/16 v25, 0x2d

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 3694
    const/16 v25, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3697
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "window"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    .line 3699
    .local v24, "windowService":Landroid/view/WindowManager;
    if-eqz v24, :cond_16

    .line 3700
    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 3701
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v25

    if-eqz v25, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    if-eqz v25, :cond_29

    :cond_14
    const/16 v18, 0x1

    .line 3704
    .local v18, "shouldUseBottomOutset":Z
    :goto_3
    if-eqz v18, :cond_16

    const/16 v25, 0x34

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 3705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v25, v0

    if-nez v25, :cond_15

    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    .line 3706
    :cond_15
    const/16 v25, 0x34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3711
    .end local v8    # "display":Landroid/view/Display;
    .end local v18    # "shouldUseBottomOutset":Z
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3712
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v23, v0

    .line 3713
    .local v23, "targetSdk":I
    const/16 v25, 0xb

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_2a

    const/16 v20, 0x1

    .line 3714
    .local v20, "targetPreHoneycomb":Z
    :goto_4
    const/16 v25, 0xe

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_2b

    const/16 v21, 0x1

    .line 3715
    .local v21, "targetPreIcs":Z
    :goto_5
    const/16 v25, 0x15

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_2c

    const/16 v22, 0x1

    .line 3716
    .local v22, "targetPreL":Z
    :goto_6
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x112000c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 3718
    .local v19, "targetHcNeedsOptions":Z
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v25

    if-eqz v25, :cond_2d

    :cond_17
    const/4 v14, 0x1

    .line 3720
    .local v14, "noActionBar":Z
    :goto_7
    if-nez v20, :cond_18

    if-eqz v21, :cond_2e

    if-eqz v19, :cond_2e

    if-eqz v14, :cond_2e

    .line 3721
    :cond_18
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setNeedsMenuKey(I)V

    .line 3728
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-nez v25, :cond_19

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 3729
    if-nez v22, :cond_19

    const/16 v25, 0x22

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 3732
    const/high16 v25, -0x80000000

    const/high16 v26, -0x80000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3736
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedStatusBarColor:Z

    move/from16 v25, v0

    if-nez v25, :cond_1a

    .line 3737
    const/16 v25, 0x23

    const/high16 v26, -0x1000000

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    .line 3739
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedNavigationBarColor:Z

    move/from16 v25, v0

    if-nez v25, :cond_1b

    .line 3740
    const/16 v25, 0x24

    const/high16 v26, -0x1000000

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    .line 3743
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v25, v0

    if-nez v25, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v25, v0

    const/16 v26, 0xb

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1d

    .line 3745
    :cond_1c
    const/16 v25, 0x15

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 3748
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 3752
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 3754
    .local v15, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->hasSoftInputMode()Z

    move-result v25

    if-nez v25, :cond_1e

    .line 3755
    const/16 v25, 0xd

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3760
    :cond_1e
    const/16 v25, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 3763
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v25

    and-int/lit8 v25, v25, 0x2

    if-nez v25, :cond_1f

    .line 3764
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3766
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->haveDimAmount()Z

    move-result v25

    if-nez v25, :cond_20

    .line 3767
    const/16 v25, 0x0

    const/high16 v26, 0x3f000000    # 0.5f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v25

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3772
    :cond_20
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v25, v0

    if-nez v25, :cond_21

    .line 3773
    const/16 v25, 0x8

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3779
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v25

    if-nez v25, :cond_25

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-nez v25, :cond_24

    .line 3781
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v25, v0

    if-nez v25, :cond_22

    .line 3782
    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 3785
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v25, v0

    if-nez v25, :cond_23

    .line 3786
    const/16 v25, 0x2

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 3788
    :cond_23
    const/16 v25, 0x2e

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    .line 3796
    :cond_24
    const/16 v25, 0x26

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mElevation:F

    .line 3797
    const/16 v25, 0x27

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mClipToOutline:Z

    .line 3798
    const/16 v25, 0x7

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 3804
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v9

    .line 3806
    .local v9, "features":I
    and-int/lit16 v0, v9, 0x800

    move/from16 v25, v0

    if-eqz v25, :cond_2f

    .line 3807
    const v13, 0x10900ba

    .line 3863
    .local v13, "layoutResource":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startChanging()V

    .line 3865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 3866
    .local v12, "in":Landroid/view/View;
    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v25 .. v27}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3867
    check-cast v12, Landroid/view/ViewGroup;

    .end local v12    # "in":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    .line 3869
    const v25, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 3870
    .local v6, "contentParent":Landroid/view/ViewGroup;
    if-nez v6, :cond_39

    .line 3871
    new-instance v25, Ljava/lang/RuntimeException;

    const-string v26, "Window couldn\'t find content container view"

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3616
    .end local v6    # "contentParent":Landroid/view/ViewGroup;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "features":I
    .end local v13    # "layoutResource":I
    .end local v14    # "noActionBar":Z
    .end local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "targetHcNeedsOptions":Z
    .end local v20    # "targetPreHoneycomb":Z
    .end local v21    # "targetPreIcs":Z
    .end local v22    # "targetPreL":Z
    .end local v23    # "targetSdk":I
    .end local v24    # "windowService":Landroid/view/WindowManager;
    :cond_26
    const v25, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    goto/16 :goto_0

    .line 3621
    :cond_27
    const/16 v25, 0xf

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3623
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_1

    .line 3662
    :cond_28
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 3701
    .restart local v8    # "display":Landroid/view/Display;
    .restart local v24    # "windowService":Landroid/view/WindowManager;
    :cond_29
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 3713
    .end local v8    # "display":Landroid/view/Display;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v23    # "targetSdk":I
    :cond_2a
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 3714
    .restart local v20    # "targetPreHoneycomb":Z
    :cond_2b
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 3715
    .restart local v21    # "targetPreIcs":Z
    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 3718
    .restart local v19    # "targetHcNeedsOptions":Z
    .restart local v22    # "targetPreL":Z
    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 3723
    .restart local v14    # "noActionBar":Z
    :cond_2e
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setNeedsMenuKey(I)V

    goto/16 :goto_8

    .line 3808
    .restart local v9    # "features":I
    .restart local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2f
    and-int/lit8 v25, v9, 0x18

    if-eqz v25, :cond_31

    .line 3809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_30

    .line 3810
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3811
    .local v17, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v25

    const v26, 0x1160022

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3813
    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3818
    .end local v17    # "res":Landroid/util/TypedValue;
    .restart local v13    # "layoutResource":I
    :goto_a
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_9

    .line 3815
    .end local v13    # "layoutResource":I
    :cond_30
    const v13, 0x10900bc

    .restart local v13    # "layoutResource":I
    goto :goto_a

    .line 3820
    .end local v13    # "layoutResource":I
    :cond_31
    and-int/lit8 v25, v9, 0x24

    if-eqz v25, :cond_32

    and-int/lit16 v0, v9, 0x100

    move/from16 v25, v0

    if-nez v25, :cond_32

    .line 3824
    const v13, 0x10900b7

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3826
    .end local v13    # "layoutResource":I
    :cond_32
    and-int/lit16 v0, v9, 0x80

    move/from16 v25, v0

    if-eqz v25, :cond_34

    .line 3829
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_33

    .line 3830
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3831
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v25

    const v26, 0x1160023

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3833
    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3838
    .end local v17    # "res":Landroid/util/TypedValue;
    .restart local v13    # "layoutResource":I
    :goto_b
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_9

    .line 3835
    .end local v13    # "layoutResource":I
    :cond_33
    const v13, 0x10900b6

    .restart local v13    # "layoutResource":I
    goto :goto_b

    .line 3839
    .end local v13    # "layoutResource":I
    :cond_34
    and-int/lit8 v25, v9, 0x2

    if-nez v25, :cond_37

    .line 3842
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_35

    .line 3843
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3844
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v25

    const v26, 0x1160024

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3846
    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3847
    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .end local v13    # "layoutResource":I
    .end local v17    # "res":Landroid/util/TypedValue;
    :cond_35
    and-int/lit16 v0, v9, 0x100

    move/from16 v25, v0

    if-eqz v25, :cond_36

    .line 3848
    const/16 v25, 0x2f

    const v26, 0x10900b5

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3852
    .end local v13    # "layoutResource":I
    :cond_36
    const v13, 0x10900bb

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3855
    .end local v13    # "layoutResource":I
    :cond_37
    and-int/lit16 v0, v9, 0x400

    move/from16 v25, v0

    if-eqz v25, :cond_38

    .line 3856
    const v13, 0x10900b9

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3859
    .end local v13    # "layoutResource":I
    :cond_38
    const v13, 0x10900b8

    .restart local v13    # "layoutResource":I
    goto/16 :goto_9

    .line 3874
    .restart local v6    # "contentParent":Landroid/view/ViewGroup;
    :cond_39
    and-int/lit8 v25, v9, 0x20

    if-eqz v25, :cond_3a

    .line 3875
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v16

    .line 3876
    .local v16, "progress":Landroid/widget/ProgressBar;
    if-eqz v16, :cond_3a

    .line 3877
    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3881
    .end local v16    # "progress":Landroid/widget/ProgressBar;
    :cond_3a
    and-int/lit16 v0, v9, 0x800

    move/from16 v25, v0

    if-eqz v25, :cond_3b

    .line 3882
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->registerSwipeCallbacks()V

    .line 3887
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v25

    if-nez v25, :cond_3e

    .line 3889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v25, v0

    if-eqz v25, :cond_3f

    .line 3890
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3894
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3897
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v25, v0

    if-eqz v25, :cond_40

    .line 3898
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 3902
    .local v11, "frame":Landroid/graphics/drawable/Drawable;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 3904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mElevation:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setElevation(F)V

    .line 3905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mClipToOutline:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 3907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3c

    .line 3908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 3911
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v25, v0

    if-nez v25, :cond_3d

    .line 3912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 3914
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitleColor(I)V

    .line 3917
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v11    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->finishChanging()V

    .line 3919
    return-object v6

    .line 3892
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v5    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_c

    .line 3900
    :cond_40
    const/4 v11, 0x0

    .restart local v11    # "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_d
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 4518
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 4528
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1881
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v0, :cond_0

    .line 1994
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4469
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4480
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 5028
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4474
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4491
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4502
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4507
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4496
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 4552
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getStatusBarColor()I
    .locals 1

    .prologue
    .line 5014
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    .prologue
    .line 4533
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    goto :goto_0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 4408
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1359
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1360
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    .line 1386
    :goto_0
    return v2

    .line 1364
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    move v2, v4

    .line 1365
    goto :goto_0

    .line 1368
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1369
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    .line 1372
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_1
    move-object v2, v1

    .line 1376
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1378
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1380
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1381
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3

    .line 1382
    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3
    move v2, v3

    .line 1384
    goto :goto_0

    .line 1372
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_1

    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_5
    move v2, v4

    .line 1386
    goto :goto_0
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v7, 0x0

    .line 1306
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1307
    const/16 v2, 0x51

    iput v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1309
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1311
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1312
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    if-eqz v2, :cond_0

    .line 1313
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setElevation(F)V

    .line 1315
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1317
    const/4 v2, 0x1

    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 10
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1259
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1261
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1262
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1263
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1265
    const/4 v5, 0x0

    .line 1266
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1267
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1268
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1269
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1270
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1277
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1278
    if-nez v5, :cond_1

    .line 1279
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1280
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1282
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1285
    :cond_2
    if-eqz v5, :cond_3

    .line 1286
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1287
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1291
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1292
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1293
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1295
    return v8

    .line 1273
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1735
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1736
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 932
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 934
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 936
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 938
    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 4177
    invoke-direct {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 4178
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 1989
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 657
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    .line 658
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 659
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 660
    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 662
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 663
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 666
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_1

    .line 667
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 672
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    .line 675
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 678
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_2

    .line 679
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 681
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_3

    .line 682
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 692
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 688
    .restart local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1517
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1518
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1525
    .local v0, "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    .line 1526
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1527
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1528
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1532
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 1519
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1520
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_0

    .line 1530
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1542
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1543
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateProgressBars(I)V

    .line 1550
    :cond_1
    :goto_0
    return-void

    .line 1544
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 1545
    const v1, 0x1020035

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1546
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    .line 1547
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1805
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1810
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 1868
    .end local p1    # "featureId":I
    :cond_1
    :goto_1
    return v2

    .line 1805
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1813
    .restart local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/16 v3, 0x18

    if-ne p2, v3, :cond_3

    move v0, v2

    .line 1817
    .local v0, "direction":I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_4

    .line 1818
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3, v0, v2}, Landroid/media/session/MediaController;->adjustVolume(II)V

    goto :goto_1

    .line 1813
    .end local v0    # "direction":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 1820
    .restart local v0    # "direction":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_1

    .line 1827
    .end local v0    # "direction":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_1

    .line 1843
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_5

    .line 1844
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    move v2, v3

    .line 1848
    goto :goto_1

    .line 1852
    :sswitch_3
    if-gez p1, :cond_6

    move p1, v3

    .end local p1    # "featureId":I
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 1857
    .restart local p1    # "featureId":I
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1858
    if-ltz p1, :cond_0

    .line 1860
    if-eqz v1, :cond_1

    .line 1861
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 1810
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 984
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 986
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 988
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 990
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 991
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_0

    .line 992
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 996
    .end local v1    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_0
    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1893
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1895
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    if-eqz v0, :cond_0

    .line 1896
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1901
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1984
    .end local p1    # "featureId":I
    :cond_1
    :goto_1
    return v2

    .line 1893
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1906
    .restart local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_3

    .line 1907
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, v2, v6}, Landroid/media/session/MediaController;->adjustVolume(II)V

    :goto_2
    move v2, v3

    .line 1914
    goto :goto_1

    .line 1910
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v4, v5, v2, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_2

    .line 1921
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v2, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v2, v3

    .line 1922
    goto :goto_1

    .line 1937
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_1

    .line 1938
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 1939
    goto :goto_1

    .line 1946
    :sswitch_3
    if-gez p1, :cond_4

    move p1, v2

    .end local p1    # "featureId":I
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 1948
    goto :goto_1

    .line 1952
    .restart local p1    # "featureId":I
    :sswitch_4
    if-ltz p1, :cond_1

    .line 1953
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1954
    if-nez p1, :cond_5

    .line 1955
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1956
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v2, :cond_5

    .line 1959
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    move v2, v3

    .line 1960
    goto :goto_1

    .line 1963
    .end local v1    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    move v2, v3

    .line 1964
    goto :goto_1

    .line 1974
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1977
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1978
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    :cond_6
    move v2, v3

    .line 1980
    goto :goto_1

    .line 1901
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x54 -> :sswitch_5
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 1006
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-eqz v4, :cond_1

    .line 1007
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 1009
    invoke-direct {p0, p1, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1011
    .local v3, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    if-nez v3, :cond_2

    .line 1068
    .end local v3    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1016
    .restart local v3    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v1, 0x0

    .line 1017
    .local v1, "playSoundEffect":Z
    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1020
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1021
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1022
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v1

    .line 1058
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1061
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_9

    .line 1062
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 1025
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v1

    goto :goto_1

    .line 1028
    :cond_5
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_6

    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_7

    .line 1032
    :cond_6
    iget-boolean v1, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1035
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_1

    .line 1037
    :cond_7
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v4, :cond_3

    .line 1038
    const/4 v2, 0x1

    .line 1039
    .local v2, "show":Z
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_8

    .line 1042
    iput-boolean v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1043
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1046
    :cond_8
    if-eqz v2, :cond_3

    .line 1048
    const v4, 0xc351

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1051
    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1053
    const/4 v1, 0x1

    goto :goto_1

    .line 1064
    .end local v2    # "show":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_9
    const-string v4, "PhoneWindow"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1181
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1182
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1183
    .local v1, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1184
    iget v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 1187
    .end local v1    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 1192
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1336
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1337
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1341
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    if-eqz v0, :cond_0

    .line 1342
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1343
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1344
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_0

    .line 1345
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1339
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 709
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1149
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1150
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return v0

    .line 1153
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1157
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1160
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_0

    .line 1161
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v5

    .line 555
    :cond_1
    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_2

    move v5, v4

    .line 556
    goto :goto_0

    .line 559
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_3

    .line 561
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 564
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 566
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 567
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 570
    :cond_4
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_c

    :cond_5
    move v1, v4

    .line 573
    .local v1, "isActionBarMenu":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_6

    .line 576
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 579
    :cond_6
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    .line 581
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_e

    .line 582
    :cond_7
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_8

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    .line 588
    :cond_8
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_a

    .line 589
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_9

    .line 590
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    .line 592
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 599
    :cond_a
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 600
    if-eqz v0, :cond_b

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 602
    :cond_b
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 604
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_0

    .line 606
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .end local v1    # "isActionBarMenu":Z
    :cond_c
    move v1, v5

    .line 570
    goto :goto_1

    .line 612
    .restart local v1    # "isActionBarMenu":Z
    :cond_d
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 619
    :cond_e
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 623
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_f

    .line 624
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 625
    iput-object v8, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 628
    :cond_f
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 629
    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_10

    .line 632
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 634
    :cond_10
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 639
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    :goto_2
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 641
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_3
    iput-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 642
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 643
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 647
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 648
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 649
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move v5, v4

    .line 651
    goto/16 :goto_0

    .line 639
    :cond_13
    const/4 v3, -0x1

    goto :goto_2

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 641
    goto :goto_3
.end method

.method public requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 352
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "requestFeature() must be called before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v0

    .line 356
    .local v0, "features":I
    shl-int v2, v4, p1

    or-int v1, v0, v2

    .line 357
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit16 v2, v1, -0x34c2

    if-eqz v2, :cond_1

    .line 361
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 365
    const/4 v2, 0x0

    .line 385
    :goto_0
    return v2

    .line 367
    :cond_2
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 372
    :cond_3
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 373
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_4
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_5

    if-ne p1, v3, :cond_5

    .line 377
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 383
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_6
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 2053
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2059
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_2

    .line 2060
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2064
    :cond_2
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2065
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_3

    .line 2066
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2067
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2068
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2077
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_3
    :goto_1
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2078
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_4

    .line 2079
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2082
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_0

    .line 2083
    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2085
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    .line 2086
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2087
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 2070
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_5
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during save, but can\'t be found during restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2089
    .end local v2    # "needsFocus":Landroid/view/View;
    .restart local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v5, "PhoneWindow"

    const-string v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 2012
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2013
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return-object v2

    .line 2017
    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2018
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2019
    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2022
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2023
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2024
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2025
    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2035
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2036
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2037
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 2038
    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2041
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_0

    .line 2042
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2043
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2044
    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 5005
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5006
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5009
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5010
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 4513
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 4514
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    .prologue
    .line 4523
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 4524
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1414
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    if-eqz v1, :cond_2

    .line 1415
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 1416
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1417
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_1

    .line 1418
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v1, :cond_2

    .line 1421
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 1424
    :cond_2
    return-void

    .line 1421
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFallbackResource:I

    goto :goto_0
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4165
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 4166
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4167
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 4168
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 4172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 4173
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1406
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClipToOutline:Z

    .line 1407
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 1410
    :cond_0
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 348
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    const/16 v3, 0xc

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 424
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 425
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    .line 427
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 431
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 432
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 435
    :cond_1
    return-void

    .line 420
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 429
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 439
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v3, 0xc

    .line 447
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 448
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 453
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    new-instance v1, Landroid/transition/Scene;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 456
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 460
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 461
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 464
    :cond_1
    return-void

    .line 449
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 458
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1690
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    .line 1694
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1696
    :cond_2
    if-eqz p1, :cond_3

    .line 1697
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1698
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0

    .line 1700
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1702
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0
.end method

.method public setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1718
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    .line 1722
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto :goto_0
.end method

.method public final setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 1397
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mElevation:F

    .line 1398
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setElevation(F)V

    .line 1401
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1402
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4429
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 4430
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4439
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 4440
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1477
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1478
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1479
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1480
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1482
    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1458
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1459
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1460
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1461
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1462
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1463
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1465
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1469
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1470
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1471
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1472
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1474
    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1428
    if-eqz p2, :cond_1

    .line 1429
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1430
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_0

    .line 1431
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1432
    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1433
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1434
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1439
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1443
    if-eqz p2, :cond_2

    .line 1444
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1445
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1446
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1447
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1448
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1449
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1454
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1452
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "drawableAttr"    # I
    .param p4, "alphaAttr"    # I

    .prologue
    .line 3581
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3582
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3583
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3584
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3586
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3587
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 3588
    .local v0, "alpha":I
    if-ltz v0, :cond_1

    .line 3589
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .line 3592
    .end local v0    # "alpha":I
    :cond_1
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1488
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 1489
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1680
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    .line 1681
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1682
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1686
    :cond_0
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1729
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 1731
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1709
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    .line 1710
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1711
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1714
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 4413
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 4414
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 5033
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I

    .line 5034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 5035
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 5036
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5038
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4444
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 4445
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4434
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 4435
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4449
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4450
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4459
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4460
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4464
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4465
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4454
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4455
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 4547
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 4548
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 5019
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I

    .line 5020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mForcedStatusBarColor:Z

    .line 5021
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 5022
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5024
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 529
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 538
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 3
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 4539
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 4540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4542
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 4543
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 406
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 390
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 391
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 395
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 396
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 4403
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 4404
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 503
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1756
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 499
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 922
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 923
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 924
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1501
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1502
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1503
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1505
    :cond_0
    return-void
.end method
