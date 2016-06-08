.class final Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeBootCompletedReceiver"
.end annotation


# instance fields
.field private mBatteryService:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 883
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 884
    iput-object p1, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;->mBatteryService:Lcom/android/server/BatteryService;

    .line 885
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 889
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/BatteryService$FlymeInjector;->mEnableScreen:Z

    .line 890
    iget-object v0, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;->mBatteryService:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->flymeInvokeMethodUpdate(Landroid/os/BatteryProperties;)V

    .line 891
    return-void
.end method
