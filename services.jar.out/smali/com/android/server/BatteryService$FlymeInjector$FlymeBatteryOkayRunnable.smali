.class final Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeBatteryOkayRunnable"
.end annotation


# instance fields
.field private mBatteryService:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p1, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;->mBatteryService:Lcom/android/server/BatteryService;

    .line 938
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 944
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .local v0, "statusIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 946
    iget-object v1, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 943
    return-void
.end method
