.class final Lcom/android/server/BatteryService$MzInjector$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$MzInjector;->registerBootCompleted(Lcom/android/server/BatteryService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/server/BatteryService$MzInjector$1;->val$service:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 885
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/BatteryService$MzInjector;->mEnableScreen:Z

    .line 886
    iget-object v0, p0, Lcom/android/server/BatteryService$MzInjector$1;->val$service:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$MzInjector$1;->val$service:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->mzGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->mzInvokeMethodUpdate(Landroid/os/BatteryProperties;)V

    .line 887
    return-void
.end method
