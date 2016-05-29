.class public Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;
.super Landroid/app/Dialog;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MzGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MzGlobalActionsDialog"
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x1f4L

.field private static final ANIM_IN_DURATION:J = 0x12cL

.field private static final BUTTON_ANIM_DURATION:J = 0x12cL

.field private static final DISMISS_DIAlOG_DELAYED_TIME:I = 0x320

.field private static final MESSAGE_MZ_DISMISS:I = 0x0

.field private static final MESSAGE_MZ_FADEOUT:I = 0x1


# instance fields
.field ai:Landroid/view/animation/AccelerateInterpolator;

.field private d:Landroid/view/Display;

.field di:Landroid/view/animation/DecelerateInterpolator;

.field private dm:Landroid/util/DisplayMetrics;

.field private mAttached:Z

.field private mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonView:Landroid/view/View;

.field mButtons:Landroid/widget/LinearLayout;

.field mContainer:Landroid/widget/LinearLayout;

.field private mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeInSet:Landroid/animation/AnimatorSet;

.field private mFadeOutSet:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimtor:Landroid/animation/ObjectAnimator;

.field mMzRecevier:Landroid/content/BroadcastReceiver;

.field private mOutAnimtor:Landroid/animation/ObjectAnimator;

.field mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

.field mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

.field private newConfig:I

.field private oldConfig:I

.field private params:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MzGlobalActions;

.field private window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzGlobalActions;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/MzGlobalActions;

    .line 99
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 125
    new-instance v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    .line 392
    new-instance v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$6;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mAttached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mOutAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mInAnimtor:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private prepareAnimators()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const/4 v4, 0x2

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const-string v1, "blurAlpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const-string v1, "blurAlpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    const-string v1, "Alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeInSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$7;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 520
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainerFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonRFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtonSFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$8;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 554
    return-void

    .line 460
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 465
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 470
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 475
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 480
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 485
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 161
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 162
    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 164
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 165
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 167
    .local v3, "screen_w":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 168
    .local v2, "screen_h":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 169
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 170
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 171
    .local v1, "rot":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 176
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    return-void

    .line 174
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private showPortrit()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 187
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    .line 188
    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 190
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->d:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 192
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 193
    .local v2, "screen_w":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->dm:Landroid/util/DisplayMetrics;

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 194
    .local v1, "screen_h":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 195
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 196
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 197
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 199
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 201
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v4, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 205
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 211
    sget v1, Lcom/flyme/internal/R$layout;->mz_globalaction_system_dialog:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->setContentView(I)V

    .line 212
    sget v1, Lcom/flyme/internal/R$id;->mz_globalaction_layout:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    .line 213
    sget v1, Lcom/flyme/internal/R$id;->mz_globalaction_buttons:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mButtons:Landroid/widget/LinearLayout;

    .line 214
    sget-object v1, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    const/16 v2, 0x7e0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "MzGlobalActions"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 225
    sget-object v1, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    sget-object v1, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 227
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->di:Landroid/view/animation/DecelerateInterpolator;

    .line 228
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->ai:Landroid/view/animation/AccelerateInterpolator;

    .line 229
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x202

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$2;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$3;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 328
    sget v1, Lcom/flyme/internal/R$id;->mz_shutdown:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    .line 329
    sget v1, Lcom/flyme/internal/R$id;->mz_restart:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/MzCustomCircleButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    .line 330
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$string;->global_action_power_restart:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$color;->mz_global_restart_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setCustomColor(I)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$string;->global_action_shut_down:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$color;->mz_global_shutdown_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setCustomColor(I)V

    .line 338
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    new-instance v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$4;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    new-instance v2, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .local v0, "mzFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "com.meizu.font.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mMzRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->prepareAnimators()V

    .line 390
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 450
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mFadeOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 456
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 432
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 434
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setEnabled(Z)V

    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setEnabled(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mShutdownView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setAlpha(F)V

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->mRestartView:Lcom/android/internal/policy/impl/MzCustomCircleButton;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setAlpha(F)V

    .line 438
    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 439
    .local v0, "Config":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->showLandscape()V

    .line 444
    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->oldConfig:I

    .line 445
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;->showPortrit()V

    goto :goto_0
.end method
