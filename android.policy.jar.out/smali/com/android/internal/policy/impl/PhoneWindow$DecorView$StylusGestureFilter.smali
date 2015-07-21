.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusGestureFilter"
.end annotation


# static fields
.field private static final KEY_APP:I = 0x3ee

.field private static final KEY_BACK:I = 0x3ea

.field private static final KEY_HOME:I = 0x3e9

.field private static final KEY_MENU:I = 0x3eb

.field private static final KEY_NO_ACTION:I = 0x3e8

.field private static final KEY_RECENT:I = 0x3ed

.field private static final KEY_SEARCH:I = 0x3ec

.field private static final PRESS_LONG:I = 0x5

.field private static final SWIPE_DOWN:I = 0x2

.field private static final SWIPE_LEFT:I = 0x3

.field private static final SWIPE_MIN_DISTANCE:D = 25.0

.field private static final SWIPE_MIN_VELOCITY:D = 50.0

.field private static final SWIPE_RIGHT:I = 0x4

.field private static final SWIPE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StylusGestureFilter"

.field private static final TAP_DOUBLE:I = 0x6


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 1

    .prologue
    .line 2403
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2404
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->mDetector:Landroid/view/GestureDetector;

    .line 2405
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x6

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStylusAction(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)V

    .line 2451
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 2415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2416
    .local v1, "xDistance":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2418
    .local v2, "yDistance":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 2419
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 2420
    const/4 v0, 0x0

    .line 2422
    .local v0, "result":Z
    float-to-double v4, p3

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    float-to-double v4, v1

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    .line 2425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 2427
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v4, 0x3

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStylusAction(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)V

    .line 2432
    :goto_0
    const/4 v0, 0x1

    .line 2445
    :cond_0
    :goto_1
    return v0

    .line 2430
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v4, 0x4

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStylusAction(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)V

    goto :goto_0

    .line 2433
    :cond_2
    float-to-double v4, p4

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    float-to-double v4, v2

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    .line 2436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 2438
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStylusAction(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)V

    .line 2443
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 2441
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v4, 0x2

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStylusAction(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)V

    goto :goto_2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v1, 0x5

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStylusAction(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)V

    .line 2456
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$StylusGestureFilter;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
