.class Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;
.super Ljava/lang/Object;
.source "DisplayHardwareController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->animateDisplayColor([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 310
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 313
    .local v0, "value":[F
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->-get0(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 314
    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->-get1(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 315
    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->-get1(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 316
    const/4 v4, 0x2

    aget v4, v0, v4

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->-get1(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 313
    invoke-virtual {v1, v3}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayColorCalibration([I)Z

    .line 318
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;->-wrap0(Lorg/cyanogenmod/platform/internal/display/DisplayHardwareController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "value":[F
    :cond_0
    monitor-exit v2

    .line 309
    return-void

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
