.class public Landroid/animation/LayoutTransition;
.super Ljava/lang/Object;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/LayoutTransition$TransitionListener;
    }
.end annotation


# static fields
.field private static ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field public static final APPEARING:I = 0x2

.field public static final CHANGE_APPEARING:I = 0x0

.field public static final CHANGE_DISAPPEARING:I = 0x1

.field public static final CHANGING:I = 0x4

.field private static DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field private static DEFAULT_DURATION:J = 0x0L

.field public static final DISAPPEARING:I = 0x3

.field private static final FLAG_APPEARING:I = 0x1

.field private static final FLAG_CHANGE_APPEARING:I = 0x4

.field private static final FLAG_CHANGE_DISAPPEARING:I = 0x8

.field private static final FLAG_CHANGING:I = 0x10

.field private static final FLAG_DISAPPEARING:I = 0x2

.field private static defaultChange:Landroid/animation/ObjectAnimator;

.field private static defaultChangeIn:Landroid/animation/ObjectAnimator;

.field private static defaultChangeOut:Landroid/animation/ObjectAnimator;

.field private static defaultFadeIn:Landroid/animation/ObjectAnimator;

.field private static defaultFadeOut:Landroid/animation/ObjectAnimator;

.field private static sAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDisappearingInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final currentAppearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentChangingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentDisappearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutChangeListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateParentHierarchy:Z

.field private mAppearingAnim:Landroid/animation/Animator;

.field private mAppearingDelay:J

.field private mAppearingDuration:J

.field private mAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAnim:Landroid/animation/Animator;

.field private mChangingAppearingAnim:Landroid/animation/Animator;

.field private mChangingAppearingDelay:J

.field private mChangingAppearingDuration:J

.field private mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAppearingStagger:J

.field private mChangingDelay:J

.field private mChangingDisappearingAnim:Landroid/animation/Animator;

.field private mChangingDisappearingDelay:J

.field private mChangingDisappearingDuration:J

.field private mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingDisappearingStagger:J

.field private mChangingDuration:J

.field private mChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingStagger:J

.field private mDisappearingAnim:Landroid/animation/Animator;

.field private mDisappearingDelay:J

.field private mDisappearingDuration:J

.field private mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionTypes:I

.field private final pendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private staggerDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 163
    const-wide/16 v0, 0x12c

    sput-wide v0, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    .line 196
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 198
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 199
    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 200
    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 201
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 202
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 203
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    .line 145
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    .line 146
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    .line 147
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    .line 148
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    .line 168
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    .line 169
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    .line 170
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    .line 171
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    .line 172
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    .line 180
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    .line 181
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    .line 182
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    .line 183
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    .line 184
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    .line 189
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    .line 190
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    .line 191
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    .line 208
    sget-object v6, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 209
    sget-object v6, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 210
    sget-object v6, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 211
    sget-object v6, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    .line 212
    sget-object v6, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    .line 222
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    .line 224
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    .line 226
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    .line 228
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    .line 240
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    .line 255
    const/16 v6, 0xf

    iput v6, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    .line 269
    iput-boolean v11, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    .line 278
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    if-nez v6, :cond_0

    .line 280
    const-string v6, "left"

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 281
    .local v1, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "top"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 282
    .local v5, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "right"

    new-array v8, v10, [I

    fill-array-data v8, :array_2

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 283
    .local v2, "pvhRight":Landroid/animation/PropertyValuesHolder;
    const-string v6, "bottom"

    new-array v8, v10, [I

    fill-array-data v8, :array_3

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 284
    .local v0, "pvhBottom":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "scrollX"

    new-array v8, v10, [I

    fill-array-data v8, :array_4

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 285
    .local v3, "pvhScrollX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "scrollY"

    new-array v8, v10, [I

    fill-array-data v8, :array_5

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .local v4, "pvhScrollY":Landroid/animation/PropertyValuesHolder;
    move-object v6, v7

    .line 286
    check-cast v6, Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    aput-object v5, v8, v11

    aput-object v2, v8, v10

    const/4 v9, 0x3

    aput-object v0, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    const/4 v9, 0x5

    aput-object v4, v8, v9

    invoke-static {v6, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    .line 288
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 289
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 290
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    .line 292
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 293
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    .line 295
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 296
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    const-string v6, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_6

    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    .line 299
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 300
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 301
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    const-string v6, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_7

    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    .line 303
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 304
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 305
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    .end local v0    # "pvhBottom":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "pvhLeft":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhRight":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "pvhScrollX":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhScrollY":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "pvhTop":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    .line 308
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    .line 309
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    .line 310
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    .line 311
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    .line 312
    return-void

    .line 280
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 281
    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 282
    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 283
    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 284
    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 285
    :array_5
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 298
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 302
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/animation/LayoutTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/animation/LayoutTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    return-wide v0
.end method

.method static synthetic access$1300(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/animation/LayoutTransition;)Z
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/animation/LayoutTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/animation/LayoutTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-wide v0
.end method

.method static synthetic access$314(Landroid/animation/LayoutTransition;J)J
    .locals 3
    .param p0, "x0"    # Landroid/animation/LayoutTransition;
    .param p1, "x1"    # J

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/animation/LayoutTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$600()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$700(Landroid/animation/LayoutTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/animation/LayoutTransition;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "changesLayout"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1263
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 1268
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1270
    :cond_2
    if-eqz p3, :cond_3

    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_3

    .line 1272
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1273
    invoke-virtual {p0, v5}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1275
    :cond_3
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_4

    .line 1276
    iget-object v3, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1278
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1279
    .local v1, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    invoke-interface {v1, p0, p1, p2, v6}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_1

    .line 1282
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_4
    if-eqz p3, :cond_5

    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_5

    .line 1283
    invoke-direct {p0, p1, p2, v6}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1285
    :cond_5
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 1286
    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method private hasListeners()Z
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "changesLayout"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 1368
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_2

    .line 1373
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1375
    :cond_2
    if-eqz p3, :cond_3

    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v6, :cond_3

    .line 1378
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1379
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 1381
    :cond_3
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_4

    .line 1382
    iget-object v3, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1384
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1385
    .local v1, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    invoke-interface {v1, p0, p1, p2, v5}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_1

    .line 1388
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_4
    if-eqz p3, :cond_5

    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v6, :cond_5

    .line 1390
    invoke-direct {p0, p1, p2, v5}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1392
    :cond_5
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_0

    .line 1393
    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method private runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1159
    iget-object v5, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1160
    .local v1, "currentAnimation":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    .line 1161
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1163
    :cond_0
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    if-nez v5, :cond_1

    .line 1164
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1165
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1167
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1168
    .local v3, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    const/4 v5, 0x2

    invoke-interface {v3, p0, p1, p2, v5}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 1173
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_1
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 1174
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1175
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1176
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1177
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v6, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    if-eq v5, v6, :cond_2

    .line 1178
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1180
    :cond_2
    instance-of v5, v0, Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_3

    move-object v5, v0

    .line 1181
    check-cast v5, Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 1183
    :cond_3
    new-instance v5, Landroid/animation/LayoutTransition$5;

    invoke-direct {v5, p0, p2, p1}, Landroid/animation/LayoutTransition$5;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1196
    iget-object v5, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1198
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_4
    return-void
.end method

.method private runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 20
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "changeReason"    # I

    .prologue
    .line 728
    const/4 v5, 0x0

    .line 729
    .local v5, "baseAnimator":Landroid/animation/Animator;
    const/4 v13, 0x0

    .line 731
    .local v13, "parentAnimator":Landroid/animation/Animator;
    packed-switch p3, :pswitch_data_0

    .line 749
    const-wide/16 v6, 0x0

    .line 753
    .local v6, "duration":J
    :goto_0
    if-nez v5, :cond_1

    .line 808
    :cond_0
    :goto_1
    return-void

    .line 733
    .end local v6    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    .line 734
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    .line 735
    .restart local v6    # "duration":J
    sget-object v13, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    .line 736
    goto :goto_0

    .line 738
    .end local v6    # "duration":J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    .line 739
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    .line 740
    .restart local v6    # "duration":J
    sget-object v13, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    .line 741
    goto :goto_0

    .line 743
    .end local v6    # "duration":J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    .line 744
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    .line 745
    .restart local v6    # "duration":J
    sget-object v13, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    .line 746
    goto :goto_0

    .line 758
    :cond_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/animation/LayoutTransition;->staggerDelay:J

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    .line 761
    .local v18, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    .line 767
    .local v17, "numChildren":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 768
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 771
    .local v8, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-eq v8, v0, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    .line 772
    invoke-direct/range {v2 .. v8}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    .line 767
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 775
    .end local v8    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    if-eqz v2, :cond_5

    .line 776
    move-object/from16 v16, p1

    .line 777
    .local v16, "tempParent":Landroid/view/ViewGroup;
    :goto_3
    if-eqz v16, :cond_5

    .line 778
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    .line 779
    .local v19, "parentParent":Landroid/view/ViewParent;
    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    move-object/from16 v11, v19

    .line 780
    check-cast v11, Landroid/view/ViewGroup;

    move-object/from16 v10, p0

    move/from16 v12, p3

    move-wide v14, v6

    invoke-direct/range {v10 .. v16}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    move-object/from16 v16, v19

    .line 782
    check-cast v16, Landroid/view/ViewGroup;

    goto :goto_3

    .line 784
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 793
    .end local v16    # "tempParent":Landroid/view/ViewGroup;
    .end local v19    # "parentParent":Landroid/view/ViewParent;
    :cond_5
    new-instance v2, Landroid/animation/LayoutTransition$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Landroid/animation/LayoutTransition$1;-><init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_1

    .line 731
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1207
    iget-object v6, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1208
    .local v1, "currentAnimation":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    .line 1209
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1211
    :cond_0
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    if-nez v6, :cond_1

    .line 1212
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1213
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1215
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1216
    .local v3, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    const/4 v6, 0x3

    invoke-interface {v3, p0, p1, p2, v6}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 1221
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_1
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 1222
    .local v0, "anim":Landroid/animation/Animator;
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1223
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1224
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v7, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    if-eq v6, v7, :cond_2

    .line 1225
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1227
    :cond_2
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1228
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v5

    .line 1229
    .local v5, "preAnimAlpha":F
    new-instance v6, Landroid/animation/LayoutTransition$6;

    invoke-direct {v6, p0, p2, v5, p1}, Landroid/animation/LayoutTransition$6;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;FLandroid/view/ViewGroup;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1243
    instance-of v6, v0, Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_3

    move-object v6, v0

    .line 1244
    check-cast v6, Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 1246
    :cond_3
    iget-object v6, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1248
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v5    # "preAnimAlpha":F
    :cond_4
    return-void
.end method

.method private setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
    .locals 14
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "changeReason"    # I
    .param p3, "baseAnimator"    # Landroid/animation/Animator;
    .param p4, "duration"    # J
    .param p6, "child"    # Landroid/view/View;

    .prologue
    .line 842
    iget-object v3, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v4

    .line 858
    .local v4, "anim":Landroid/animation/Animator;
    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 862
    invoke-virtual {v4}, Landroid/animation/Animator;->setupStartValues()V

    .line 865
    iget-object v3, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 866
    .local v11, "currentAnimation":Landroid/animation/Animator;
    if-eqz v11, :cond_3

    .line 867
    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    .line 868
    iget-object v3, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_3
    iget-object v3, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v6, 0x64

    add-long v6, v6, p4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 880
    .local v12, "pendingAnimRemover":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/animation/LayoutTransition$2;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, Landroid/animation/LayoutTransition$2;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;)V

    invoke-virtual {v12, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 886
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 890
    new-instance v2, Landroid/animation/LayoutTransition$3;

    move-object v3, p0

    move/from16 v5, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Landroid/animation/LayoutTransition$3;-><init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V

    .line 967
    .local v2, "listener":Landroid/view/View$OnLayoutChangeListener;
    new-instance v5, Landroid/animation/LayoutTransition$4;

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p6

    move/from16 v9, p2

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/animation/LayoutTransition$4;-><init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1005
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1007
    iget-object v3, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 878
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1329
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1330
    return-void
.end method

.method public addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/LayoutTransition$TransitionListener;

    .prologue
    .line 1440
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    .line 1443
    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 1081
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1082
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1084
    .local v1, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1085
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 1087
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 1089
    .end local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1090
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1092
    .restart local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1093
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 1095
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 1097
    .end local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1098
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1100
    .restart local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1101
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 1103
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_4
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 1105
    .end local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public cancel(I)V
    .locals 4
    .param p1, "transitionType"    # I

    .prologue
    .line 1116
    packed-switch p1, :pswitch_data_0

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1120
    :pswitch_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1121
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1123
    .local v1, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1124
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 1126
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 1130
    .end local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1131
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1133
    .restart local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1134
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 1136
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 1140
    .end local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1141
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1143
    .restart local v1    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1144
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_3

    .line 1146
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto/16 :goto_0

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public disableTransitionType(I)V
    .locals 1
    .param p1, "transitionType"    # I

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 374
    :pswitch_1
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 377
    :pswitch_2
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 380
    :pswitch_3
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 383
    :pswitch_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public enableTransitionType(I)V
    .locals 1
    .param p1, "transitionType"    # I

    .prologue
    .line 342
    packed-switch p1, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 344
    :pswitch_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 347
    :pswitch_1
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 350
    :pswitch_2
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 353
    :pswitch_3
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 356
    :pswitch_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public endChangingAnimations()V
    .locals 4

    .prologue
    .line 1040
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1042
    .local v1, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1043
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1044
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 1047
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 1048
    return-void
.end method

.method public getAnimator(I)Landroid/animation/Animator;
    .locals 1
    .param p1, "transitionType"    # I

    .prologue
    .line 695
    packed-switch p1, :pswitch_data_0

    .line 708
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 697
    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 699
    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 701
    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 703
    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 705
    :pswitch_4
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getDuration(I)J
    .locals 2
    .param p1, "transitionType"    # I

    .prologue
    .line 514
    packed-switch p1, :pswitch_data_0

    .line 527
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 516
    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    goto :goto_0

    .line 518
    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    goto :goto_0

    .line 520
    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    goto :goto_0

    .line 522
    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    goto :goto_0

    .line 524
    :pswitch_4
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p1, "transitionType"    # I

    .prologue
    .line 619
    packed-switch p1, :pswitch_data_0

    .line 632
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 621
    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 623
    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 625
    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 627
    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 629
    :pswitch_4
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getStagger(I)J
    .locals 2
    .param p1, "transitionType"    # I

    .prologue
    .line 564
    packed-switch p1, :pswitch_data_0

    .line 573
    :pswitch_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 566
    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    goto :goto_0

    .line 568
    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    goto :goto_0

    .line 570
    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getStartDelay(I)J
    .locals 2
    .param p1, "transitionType"    # I

    .prologue
    .line 455
    packed-switch p1, :pswitch_data_0

    .line 468
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 457
    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    goto :goto_0

    .line 459
    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    goto :goto_0

    .line 461
    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    goto :goto_0

    .line 463
    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    goto :goto_0

    .line 465
    :pswitch_4
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getTransitionListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1415
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1416
    return-void
.end method

.method public hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "newVisibility"    # I

    .prologue
    .line 1430
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1431
    return-void

    .line 1430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingLayout()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitionTypeEnabled(I)Z
    .locals 4
    .param p1, "transitionType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 397
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 399
    :pswitch_0
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 401
    :pswitch_1
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 403
    :pswitch_2
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 405
    :pswitch_3
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 407
    :pswitch_4
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public layoutChange(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1307
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1407
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1408
    return-void
.end method

.method public removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/LayoutTransition$TransitionListener;

    .prologue
    .line 1452
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1456
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAnimateParentHierarchy(Z)V
    .locals 0
    .param p1, "animateParentHierarchy"    # Z

    .prologue
    .line 828
    iput-boolean p1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    .line 829
    return-void
.end method

.method public setAnimator(ILandroid/animation/Animator;)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 666
    packed-switch p1, :pswitch_data_0

    .line 683
    :goto_0
    return-void

    .line 668
    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 671
    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 674
    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 677
    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 680
    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setDuration(IJ)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "duration"    # J

    .prologue
    .line 483
    packed-switch p1, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 485
    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    goto :goto_0

    .line 488
    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    goto :goto_0

    .line 491
    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    goto :goto_0

    .line 494
    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    goto :goto_0

    .line 497
    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 323
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    .line 324
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    .line 325
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    .line 326
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    .line 327
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    .line 328
    return-void
.end method

.method public setInterpolator(ILandroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 588
    packed-switch p1, :pswitch_data_0

    .line 605
    :goto_0
    return-void

    .line 590
    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 593
    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 596
    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 599
    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 602
    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setStagger(IJ)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "duration"    # J

    .prologue
    .line 540
    packed-switch p1, :pswitch_data_0

    .line 552
    :goto_0
    :pswitch_0
    return-void

    .line 542
    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    goto :goto_0

    .line 545
    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    goto :goto_0

    .line 548
    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setStartDelay(IJ)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "delay"    # J

    .prologue
    .line 424
    packed-switch p1, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 426
    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    goto :goto_0

    .line 429
    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    goto :goto_0

    .line 432
    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    goto :goto_0

    .line 435
    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    goto :goto_0

    .line 438
    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public showChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1337
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1338
    return-void
.end method

.method public showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "oldVisibility"    # I

    .prologue
    .line 1352
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 1353
    return-void

    .line 1352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startChangingAnimations()V
    .locals 6

    .prologue
    .line 1021
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1023
    .local v1, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1024
    .local v0, "anim":Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1025
    check-cast v3, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 1027
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 1029
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-void
.end method
