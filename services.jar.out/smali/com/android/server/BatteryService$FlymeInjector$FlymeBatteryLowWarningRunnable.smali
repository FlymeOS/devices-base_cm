.class final Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;
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
    name = "FlymeBatteryLowWarningRunnable"
.end annotation


# instance fields
.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mRunLevel:I


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;I)V
    .locals 0
    .param p1, "batteryService"    # Lcom/android/server/BatteryService;
    .param p2, "runLevel"    # I

    .prologue
    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;->mBatteryService:Lcom/android/server/BatteryService;

    .line 901
    iput p2, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;->mRunLevel:I

    .line 902
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.BATTERY_LOW_WRANING_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "statusIntent":Landroid/content/Intent;
    const-string v1, "lowLevel"

    iget v2, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;->mRunLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    iget-object v1, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 909
    return-void
.end method
