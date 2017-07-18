.class public final Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlymeActivityManagerServiceInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector$KillProcessBackground;
    }
.end annotation


# static fields
.field static final KILL_PROCESS_GROUP_MSG:I = 0x3e8

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field static mKillProcessHandler:Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector$KillProcessBackground;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFlymeAppLocked(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;)V
    .locals 9
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 21114
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 21115
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 21116
    .local v3, "ssp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 21118
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v3, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21121
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string/jumbo v4, "com.meizu.alphame"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 21122
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 21113
    :cond_0
    return-void

    .line 21119
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static adjustFlymeShrinkerGround(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 3
    .param p0, "component"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "resumed"    # Z

    .prologue
    .line 21007
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 21008
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    .line 21009
    if-eqz p1, :cond_1

    .line 21010
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/shrinker/Shrinker;->moveToForeground(Landroid/content/pm/ApplicationInfo;)V

    .line 21006
    :cond_0
    :goto_0
    return-void

    .line 21012
    :cond_1
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/shrinker/Shrinker;->moveToBackground(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0
.end method

.method static applyFlymeOomAdjLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 21139
    invoke-static {p0}, Lcom/android/server/am/Ams_Interface;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 21137
    return-void
.end method

.method static flymeSetup(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 21001
    sput-object p0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 21003
    new-instance v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector$KillProcessBackground;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector$KillProcessBackground;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mKillProcessHandler:Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector$KillProcessBackground;

    .line 21000
    return-void
.end method

.method static flymeShowUserSwitchDialog(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "userId"    # I

    .prologue
    .line 21086
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->flymeInvokeMethodStartUser(IZ)Z

    .line 21084
    return-void
.end method

.method static getHomeThumbnail(Lcom/android/server/am/ActivityManagerService;)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 21029
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 21030
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_0

    .line 21031
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 21032
    .local v1, "homeTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getHomeThumbnail()Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v2

    return-object v2

    .line 21034
    .end local v1    # "homeTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-object v4
.end method

.method static isFlymeMayForbitPackage(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 21019
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymePackageManagerService;

    .line 21020
    .local v0, "fps":Lcom/android/server/pm/FlymePackageManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/FlymePackageManagerService;->getMayForbitPackage()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21021
    const/4 v1, 0x1

    return v1

    .line 21023
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static isFlymePackageShouldRestart(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21108
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 21109
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 21110
    .local v1, "ssp":Ljava/lang/String;
    const-string/jumbo v2, "com.meizu.alphame"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static isFlymePackageShouldRestart(Landroid/os/Message;)Z
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 21102
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 21103
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "pkg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21104
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "com.meizu.alphame"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static isHomeTask(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 21039
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 21040
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 21041
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static isSystemUid()Z
    .locals 2

    .prologue
    .line 21127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 21128
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static modifyFlymeOomAdj(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 21133
    invoke-static {p0}, Lcom/android/server/am/Ams_Interface;->modifyOomAdj(Lcom/android/server/am/ProcessRecord;)V

    .line 21131
    return-void
.end method

.method static removeTaskNotKillProcess(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 21070
    monitor-enter p0

    .line 21071
    :try_start_0
    const-string/jumbo v2, "android.permission.REMOVE_TASKS"

    const-string/jumbo v3, "removeTask()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 21076
    .local v0, "ident":J
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->flymeInvokeMethodRemoveTaskByIdLocked(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 21079
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 21076
    return v2

    .line 21078
    :catchall_0
    move-exception v2

    .line 21079
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21078
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21070
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 21091
    sget-object v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 21092
    sget-object v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setPackageManager(Lcom/android/server/pm/PackageManagerService;)V

    .line 21090
    :cond_0
    return-void
.end method

.method static shouldKeepAppProcess(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 8
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 21046
    const-string/jumbo v0, "com.android.dialer"

    .line 21047
    .local v0, "DIALER_PACKAGE":Ljava/lang/String;
    const-string/jumbo v1, "com.android.mms"

    .line 21048
    .local v1, "MMS_PACKAGE":Ljava/lang/String;
    const-string/jumbo v2, "com.android.settings"

    .line 21049
    .local v2, "SETTINGS_PACKAGE":Ljava/lang/String;
    const-string/jumbo v3, "com.tencent.mm"

    .line 21052
    .local v3, "TENCENTMM_PACKAGE":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 21053
    .local v6, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_2

    .line 21054
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 21055
    .local v4, "component":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 21056
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 21057
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 21059
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 21060
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 21059
    if-nez v7, :cond_1

    .line 21061
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 21059
    if-nez v7, :cond_1

    .line 21062
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 21059
    if-eqz v7, :cond_2

    .line 21063
    :cond_1
    const/4 v7, 0x1

    return v7

    .line 21066
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v7, 0x0

    return v7
.end method

.method static updateFlymeOomAdjLocked(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 21145
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/Ams_Interface;->updateOomAdjLocked(Ljava/util/ArrayList;)V

    .line 21143
    return-void
.end method
