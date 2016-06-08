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


# static fields
.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mRecentTaskChanged:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flymeBroadcaseRecentTasksChanged(Lcom/android/server/am/ActivityManagerService;)V
    .locals 16
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 19840
    sget-object v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mRecentTaskChanged:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 19841
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.recenttask.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mRecentTaskChanged:Landroid/content/Intent;

    .line 19843
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mRecentTaskChanged:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v14, 0x3e8

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/ActivityManagerService;->flymeInvokeMethodBroadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 19846
    return-void
.end method

.method static flymeSetup(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 19835
    sput-object p0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 19836
    return-void
.end method

.method static flymeShowUserSwitchDialog(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "userId"    # I

    .prologue
    .line 19908
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->flymeInvokeMethodStartUser(IZ)Z

    .line 19909
    return-void
.end method

.method static getHomeThumbnail(Lcom/android/server/am/ActivityManagerService;)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 19851
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 19852
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_0

    .line 19853
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 19854
    .local v1, "homeTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getHomeThumbnail()Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v2

    .line 19856
    .end local v1    # "homeTask":Lcom/android/server/am/TaskRecord;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isHomeTask(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 19861
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 19862
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 19863
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static removeTaskNotKillProcess(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 19892
    monitor-enter p0

    .line 19893
    :try_start_0
    const-string v2, "android.permission.REMOVE_TASKS"

    const-string v3, "removeTask()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 19898
    .local v0, "ident":J
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->flymeInvokeMethodRemoveTaskByIdLocked(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 19901
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 19903
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 19913
    sget-object v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 19914
    sget-object v0, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setPackageManager(Lcom/android/server/pm/PackageManagerService;)V

    .line 19916
    :cond_0
    return-void
.end method

.method static shouldKeepAppProcess(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 8
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 19868
    const-string v0, "com.android.dialer"

    .line 19869
    .local v0, "DIALER_PACKAGE":Ljava/lang/String;
    const-string v1, "com.android.mms"

    .line 19870
    .local v1, "MMS_PACKAGE":Ljava/lang/String;
    const-string v2, "com.android.settings"

    .line 19871
    .local v2, "SETTINGS_PACKAGE":Ljava/lang/String;
    const-string v3, "com.tencent.mm"

    .line 19874
    .local v3, "TENCENTMM_PACKAGE":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 19875
    .local v6, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_2

    .line 19876
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 19877
    .local v4, "component":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 19878
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 19879
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 19881
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 19885
    :cond_1
    const/4 v7, 0x1

    .line 19888
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method
