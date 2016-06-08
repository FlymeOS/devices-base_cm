.class Lcom/android/server/GestureManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GestureManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureManagerService;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "GestureManager"

    const-string v2, "onReceive(), ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/server/GestureManagerService;->access$100(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$000(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v1}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I
    invoke-static {v1}, Lcom/android/server/GestureManagerService;->access$300(Lcom/android/server/GestureManagerService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 163
    const-string v1, "GestureManager"

    const-string v2, "onReceive(), ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/server/GestureManagerService;->access$100(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$000(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GestureManagerService$2;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$400(Lcom/android/server/GestureManagerService;)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method
