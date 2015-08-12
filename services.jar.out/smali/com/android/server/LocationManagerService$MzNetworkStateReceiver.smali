.class final Lcom/android/server/LocationManagerService$MzNetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MzNetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MzNetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/LocationManagerService$1;

    .prologue
    .line 2768
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$MzNetworkStateReceiver;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2771
    iget-object v1, p0, Lcom/android/server/LocationManagerService$MzNetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->mzGetFieldLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2772
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$MzNetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "choose_network_provider_mode"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2774
    .local v0, "network_provider_mode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2775
    monitor-exit v2

    .line 2783
    :goto_0
    return-void

    .line 2777
    :cond_0
    const-string v1, "android.intent.action.CAMPED_NETWORK_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2778
    iget-object v1, p0, Lcom/android/server/LocationManagerService$MzNetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/LocationManagerService;->doCampedNetworkStateChanged(Landroid/content/Intent;)V

    .line 2782
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "network_provider_mode":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2779
    .restart local v0    # "network_provider_mode":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2780
    iget-object v1, p0, Lcom/android/server/LocationManagerService$MzNetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->doSimStateChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
