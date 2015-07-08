.class final Lcom/android/server/BatteryService$MzInjector$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$MzInjector;->onBatteryLow(Lcom/android/server/BatteryService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runlevel:I

.field final synthetic val$service:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(ILcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 930
    iput p1, p0, Lcom/android/server/BatteryService$MzInjector$2;->val$runlevel:I

    iput-object p2, p0, Lcom/android/server/BatteryService$MzInjector$2;->val$service:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.BATTERY_LOW_WRANING_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v0, "statusIntent":Landroid/content/Intent;
    const-string v1, "lowLevel"

    iget v2, p0, Lcom/android/server/BatteryService$MzInjector$2;->val$runlevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    iget-object v1, p0, Lcom/android/server/BatteryService$MzInjector$2;->val$service:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 937
    return-void
.end method
