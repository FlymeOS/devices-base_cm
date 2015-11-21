.class Lcom/android/server/power/PowerManagerService$BinderService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$BinderService;->runPostProximityCheck(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3305
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 3322
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x5

    .line 3308
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->cleanupProximityLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)V

    .line 3309
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3310
    const-string v1, "PowerManagerService"

    const-string v2, "The proximity sensor took too long, wake event already triggered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_0
    :goto_0
    return-void

    .line 3313
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3314
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 3315
    .local v0, "distance":F
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 3317
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
