.class public Lcom/android/internal/widget/WaveView;
.super Landroid/view/View;
.source "WaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELAY_INCREMENT:J = 0xfL

.field private static final DELAY_INCREMENT2:J = 0xcL

.field private static final DURATION:J = 0x12cL

.field private static final FINAL_DELAY:J = 0xc8L

.field private static final FINAL_DURATION:J = 0xc8L

.field private static final GRAB_HANDLE_RADIUS_SCALE_ACCESSIBILITY_DISABLED:F = 0.5f

.field private static final GRAB_HANDLE_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.0f

.field private static final RESET_TIMEOUT:J = 0xbb8L

.field private static final RING_DELAY:J = 0x514L

.field private static final SHORT_DELAY:J = 0x64L

.field private static final STATE_ATTEMPTING:I = 0x3

.field private static final STATE_READY:I = 0x1

.field private static final STATE_RESET_LOCK:I = 0x0

.field private static final STATE_START_ATTEMPT:I = 0x2

.field private static final STATE_UNLOCK_ATTEMPT:I = 0x4

.field private static final STATE_UNLOCK_SUCCESS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WaveView"

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WAVE_COUNT:I = 0x14

.field private static final WAVE_DELAY:J = 0x64L

.field private static final WAVE_DURATION:J = 0x7d0L


# instance fields
.field private final mAddWaveAction:Ljava/lang/Runnable;

.field private mCurrentWave:I

.field private mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerDown:Z

.field private mFinishWaves:Z

.field private mGrabbedState:I

.field private mLightWaves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLockCenterX:F

.field private mLockCenterY:F

.field private mLockState:I

.field private final mLockTimerActions:Ljava/lang/Runnable;

.field private mMouseX:F

.field private mMouseY:F

.field private mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

.field private mRingRadius:F

.field private mSnapRadius:I

.field private mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCount:I

.field private mWaveTimerDelay:J

.field private mWavesRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/WaveView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    .line 93
    iput-boolean v2, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 94
    const/high16 v0, 0x43360000    # 182.0f

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    .line 95
    const/16 v0, 0x88

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    .line 96
    iput v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    .line 97
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    .line 98
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    .line 106
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 107
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    .line 419
    new-instance v0, Lcom/android/internal/widget/WaveView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$1;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    .line 436
    new-instance v0, Lcom/android/internal/widget/WaveView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$2;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    .line 122
    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->initDrawables()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/WaveView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/WaveView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/WaveView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/WaveView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/WaveView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/WaveView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide p1
.end method

.method static synthetic access$614(Lcom/android/internal/widget/WaveView;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/WaveView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/WaveView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/WaveView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    return v0
.end method

.method private announceUnlockHandle()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    const v1, 0x1040672

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 575
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->sendAccessibilityEvent(I)V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 577
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 609
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WaveView;->vibrate(J)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 613
    :cond_0
    return-void
.end method

.method private getScaledGrabHandleRadius()F
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 566
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private initDrawables()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x3dcccccd    # 0.1f

    .line 173
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080755

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    .line 174
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 175
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 176
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 177
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 178
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 179
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080753

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    .line 182
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 183
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 184
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 185
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 186
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 187
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080754

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    .line 190
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 191
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 192
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 193
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 194
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 195
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const v3, 0x1080756

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 198
    .local v2, "wave":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    if-ge v1, v3, :cond_0

    .line 199
    new-instance v0, Lcom/android/internal/widget/DrawableHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 200
    .local v0, "holder":Lcom/android/internal/widget/DrawableHolder;
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "holder":Lcom/android/internal/widget/DrawableHolder;
    :cond_0
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 620
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 621
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    .line 622
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 626
    :cond_0
    return-void
.end method

.method private tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/DrawableHolder;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 545
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/DrawableHolder;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 546
    .local v2, "dy":F
    float-to-double v4, v1

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 547
    .local v0, "dist":F
    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->getScaledGrabHandleRadius()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    .line 548
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    .line 549
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 550
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 551
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->announceUnlockHandle()V

    .line 556
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    const/4 v0, 0x1

    .line 583
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    .local v0, "hapticEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/internal/widget/WaveView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_1
    monitor-exit p0

    return-void

    .line 583
    .end local v0    # "hapticEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private waveUpdateFrame(FFZ)V
    .locals 38
    .param p1, "mouseX"    # F
    .param p2, "mouseY"    # F
    .param p3, "fingerDown"    # Z

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    sub-float v4, p1, v4

    float-to-double v0, v4

    move-wide/from16 v30, v0

    .line 207
    .local v30, "distX":D
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    sub-float v4, p2, v4

    float-to-double v0, v4

    move-wide/from16 v32, v0

    .line 208
    .local v32, "distY":D
    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 209
    .local v2, "dragDistance":I
    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v36

    .line 210
    .local v36, "touchA":D
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    float-to-double v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    float-to-double v12, v4

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    double-to-float v11, v6

    .line 211
    .local v11, "ringX":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    float-to-double v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    float-to-double v12, v4

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    double-to-float v0, v6

    move/from16 v19, v0

    .line 213
    .local v19, "ringY":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    packed-switch v4, :pswitch_data_0

    .line 397
    .end local v11    # "ringX":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 400
    return-void

    .line 216
    .restart local v11    # "ringX":F
    :pswitch_0
    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    .line 217
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DrawableHolder;

    .line 219
    .local v3, "holder":Lcom/android/internal/widget/DrawableHolder;
    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 217
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 221
    .end local v3    # "holder":Lcom/android/internal/widget/DrawableHolder;
    :cond_0
    const/16 v29, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "x"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    .end local v11    # "ringX":F
    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "y"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "scaleX"

    const v11, 0x3dcccccd    # 0.1f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "scaleY"

    const v11, 0x3dcccccd    # 0.1f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "alpha"

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "scaleX"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "scaleY"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "x"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "y"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "scaleX"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "scaleY"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 268
    .end local v29    # "i":I
    .restart local v11    # "ringX":F
    :pswitch_1
    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    goto/16 :goto_0

    .line 273
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/high16 v7, 0x43360000    # 182.0f

    add-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "scaleX"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 285
    .end local v11    # "ringX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "scaleY"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "scaleX"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "scaleY"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "alpha"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 292
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 297
    .restart local v11    # "ringX":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    if-le v2, v4, :cond_3

    .line 298
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    .line 299
    if-eqz p3, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "x"

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "y"

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "scaleX"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "scaleY"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    .line 307
    :cond_2
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 311
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    if-nez v4, :cond_4

    .line 312
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    .line 313
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "x"

    const/16 v28, 0x1

    move/from16 v27, p1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "y"

    const/16 v28, 0x1

    move/from16 v27, p2

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "scaleX"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "scaleY"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    .line 327
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    if-le v2, v4, :cond_7

    .line 328
    const/16 v34, 0x0

    .local v34, "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v34

    if-ge v0, v4, :cond_5

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DrawableHolder;

    .line 330
    .local v5, "wave":Lcom/android/internal/widget/DrawableHolder;
    const-wide/16 v6, 0x3e8

    add-int/lit8 v4, v34, 0x6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    sub-int/2addr v4, v10

    int-to-long v12, v4

    mul-long/2addr v6, v12

    const-wide/16 v12, 0xa

    div-long v8, v6, v12

    .line 331
    .local v8, "delay":J
    const-wide/16 v6, 0xc8

    const-string v10, "x"

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 332
    const-wide/16 v14, 0xc8

    const-string v18, "y"

    const/16 v20, 0x1

    move-object v13, v5

    move-wide/from16 v16, v8

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 333
    const-wide/16 v22, 0xc8

    const-string v26, "scaleX"

    const v27, 0x3dcccccd    # 0.1f

    const/16 v28, 0x1

    move-object/from16 v21, v5

    move-wide/from16 v24, v8

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 334
    const-wide/16 v22, 0xc8

    const-string v26, "scaleY"

    const v27, 0x3dcccccd    # 0.1f

    const/16 v28, 0x1

    move-object/from16 v21, v5

    move-wide/from16 v24, v8

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 335
    const-wide/16 v22, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v21, v5

    move-wide/from16 v24, v8

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 328
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 337
    .end local v5    # "wave":Lcom/android/internal/widget/DrawableHolder;
    .end local v8    # "delay":J
    :cond_5
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_6

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 337
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 341
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "x"

    const/16 v28, 0x0

    move/from16 v27, v11

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0xc8

    const-wide/16 v16, 0x0

    const-string v18, "y"

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "scaleX"

    const v27, 0x3dcccccd    # 0.1f

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "scaleY"

    const v27, 0x3dcccccd    # 0.1f

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "y"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleX"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "scaleY"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v6, "alpha"

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "x"

    const/16 v28, 0x1

    move/from16 v27, v11

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0xc8

    const-wide/16 v16, 0x0

    const-string v18, "y"

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "scaleX"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "scaleY"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "alpha"

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "scaleX"

    const/high16 v27, 0x40400000    # 3.0f

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "scaleY"

    const/high16 v27, 0x40400000    # 3.0f

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0x0

    const-string v26, "x"

    const/16 v28, 0x0

    move/from16 v27, v11

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v14, 0xc8

    const-wide/16 v16, 0x0

    const-string v18, "y"

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "scaleX"

    const/high16 v27, 0x40400000    # 3.0f

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "scaleY"

    const/high16 v27, 0x40400000    # 3.0f

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    const-wide/16 v24, 0xc8

    const-string v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v28}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/WaveView;->dispatchTriggerEvent(I)V

    .line 382
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 384
    .end local v29    # "i":I
    .end local v34    # "n":I
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 390
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 404
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 405
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 656
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 410
    iget v1, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v2, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v3, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 417
    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 479
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 493
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 481
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 484
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 487
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 147
    .local v4, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 148
    .local v1, "heightSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 149
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 153
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 161
    .local v3, "width":I
    :goto_0
    if-ne v1, v7, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/WaveView;->setMeasuredDimension(II)V

    .line 170
    return-void

    .line 155
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_0
    if-ne v4, v8, :cond_1

    .line 156
    move v3, v5

    .restart local v3    # "width":I
    goto :goto_0

    .line 158
    .end local v3    # "width":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_0

    .line 163
    :cond_2
    if-ne v1, v8, :cond_3

    .line 164
    move v0, v2

    .restart local v0    # "height":I
    goto :goto_1

    .line 166
    .end local v0    # "height":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 127
    int-to-float v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    .line 128
    int-to-float v0, p2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 130
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 499
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 534
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 535
    if-eqz v1, :cond_0

    :goto_1
    return v2

    .line 504
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 505
    iput-boolean v2, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 506
    invoke-direct {p0, p1}, Lcom/android/internal/widget/WaveView;->tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V

    .line 507
    const/4 v1, 0x1

    .line 508
    goto :goto_0

    .line 511
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/WaveView;->tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V

    .line 512
    const/4 v1, 0x1

    .line 513
    goto :goto_0

    .line 517
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 518
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    invoke-direct {p0, v6}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    .line 525
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v5, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    .line 526
    const/4 v1, 0x1

    .line 527
    goto :goto_0

    .line 530
    :pswitch_3
    iput-boolean v6, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 531
    const/4 v1, 0x1

    goto :goto_0

    .line 535
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 662
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/WaveView$OnTriggerListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    .line 602
    return-void
.end method
