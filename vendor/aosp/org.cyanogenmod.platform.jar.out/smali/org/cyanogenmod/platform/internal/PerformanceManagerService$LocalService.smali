.class final Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"

# interfaces
.implements Lcyanogenmod/power/PerformanceManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 328
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    return-void
.end method


# virtual methods
.method public activityResumed(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "activityName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 356
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-set0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)V

    .line 352
    return-void
.end method

.method public cpuBoost(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V

    .line 331
    return-void
.end method

.method public launchBoost(ILjava/lang/String;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 337
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    const-string/jumbo v0, "PerformanceManager"

    const-string/jumbo v2, "System is not ready, dropping launch boost request"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 340
    return-void

    :cond_0
    monitor-exit v1

    .line 344
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 346
    :cond_1
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 348
    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v3, p1, v2, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    return-void
.end method
