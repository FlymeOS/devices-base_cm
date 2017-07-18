.class public Lcom/android/internal/util/cm/ActionUtils;
.super Ljava/lang/Object;
.source "ActionUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/internal/util/cm/ActionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/cm/ActionUtils;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ActionUtils;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 124
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v6, 0x5

    .line 125
    const/4 v7, 0x2

    .line 124
    invoke-interface {v0, v6, v7, p1}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v5

    .line 127
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 128
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 129
    .local v4, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 130
    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v7, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    :cond_0
    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v6

    .line 139
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    return-object v8
.end method

.method public static killForegroundApp(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 37
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ActionUtils;->killForegroundAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/util/cm/ActionUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not kill foreground app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    return v1
.end method

.method private static killForegroundAppInternal(Landroid/content/Context;I)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.launcher"

    .line 49
    .local v4, "defaultHomePackage":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.category.HOME"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 52
    .local v8, "res":Landroid/content/pm/ResolveInfo;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_0

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "android"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 56
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 57
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 58
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 59
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 62
    .local v9, "uid":I
    const/16 v10, 0x2710

    if-lt v9, v10, :cond_1

    const/16 v10, 0x4e1f

    if-gt v9, v10, :cond_1

    .line 63
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 64
    const/16 v11, 0x64

    .line 63
    if-ne v10, v11, :cond_1

    .line 65
    iget-object v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v10, v10

    if-lez v10, :cond_5

    .line 66
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_1
    if-ge v10, v12, :cond_1

    aget-object v6, v11, v10

    .line 67
    .local v6, "pkg":Ljava/lang/String;
    const-string/jumbo v13, "com.android.systemui"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 66
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v9    # "uid":I
    :cond_3
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 69
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v9    # "uid":I
    :cond_4
    const/4 v10, -0x2

    invoke-interface {v0, v6, v10}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 70
    const/4 v10, 0x1

    return v10

    .line 74
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_5
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v10, 0x1

    return v10

    .line 79
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "defaultHomePackage":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "res":Landroid/content/pm/ResolveInfo;
    .end local v9    # "uid":I
    :catch_0
    move-exception v7

    .line 82
    :cond_6
    const/4 v10, 0x0

    return v10
.end method

.method private static resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 143
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v4, "android.intent.category.HOME"

    .line 143
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 146
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 147
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method public static switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 93
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ActionUtils;->switchToLastAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/util/cm/ActionUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    return v1
.end method

.method private static switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ActionUtils;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 104
    .local v1, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v4, :cond_1

    .line 105
    :cond_0
    return v5

    .line 108
    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 111
    .local v0, "am":Landroid/app/IActivityManager;
    const v4, 0x10a0030

    .line 112
    const v5, 0x10a0031

    .line 110
    invoke-static {p0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 115
    .local v2, "opts":Landroid/app/ActivityOptions;
    iget v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v0, v4, v6, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 117
    const/4 v4, 0x1

    return v4
.end method
