.class public Lcom/android/server/shrinker/Shrinker;
.super Ljava/lang/Object;
.source "Shrinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/shrinker/Shrinker$Instance;
    }
.end annotation


# static fields
.field public static MY_PID:I


# instance fields
.field private mActive:Z

.field private mPackageList:Lcom/android/server/shrinker/RunningPackageList;

.field private mScanner:Lcom/android/server/shrinker/RootScanner;

.field private final mTaskList:Lcom/android/server/shrinker/RecentTasks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/shrinker/Shrinker;->MY_PID:I

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/server/shrinker/RunningPackageList;

    invoke-direct {v0}, Lcom/android/server/shrinker/RunningPackageList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    .line 18
    new-instance v0, Lcom/android/server/shrinker/RecentTasks;

    invoke-direct {v0}, Lcom/android/server/shrinker/RecentTasks;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mTaskList:Lcom/android/server/shrinker/RecentTasks;

    .line 19
    new-instance v0, Lcom/android/server/shrinker/RootScanner;

    invoke-direct {v0}, Lcom/android/server/shrinker/RootScanner;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mScanner:Lcom/android/server/shrinker/RootScanner;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/shrinker/Shrinker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/shrinker/Shrinker;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/shrinker/Shrinker;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/server/shrinker/Shrinker$Instance;->-get0()Lcom/android/server/shrinker/Shrinker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addProcess(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 34
    if-gtz p3, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/shrinker/RunningPackageList;->add(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/shrinker/Shrinker;->statusChanded()V

    .line 33
    return-void
.end method

.method public destoryWindow(IIILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "winId"    # I
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 65
    sget v1, Lcom/android/server/shrinker/Shrinker;->MY_PID:I

    if-eq p2, v1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/shrinker/RunningPackageList;->getProcess(II)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v0

    .line 67
    .local v0, "app":Lcom/android/server/shrinker/ProcessRecord;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p3}, Lcom/android/server/shrinker/ProcessRecord;->destoryWindow(I)V

    .line 64
    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 158
    array-length v2, p2

    if-le v2, v4, :cond_2

    const-string/jumbo v2, "-ignore"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 161
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {v1}, Lcom/android/server/shrinker/PackageStateInfo;->setIgnoreList(Ljava/util/List;)V

    .line 157
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 166
    :cond_2
    array-length v2, p2

    if-le v2, v4, :cond_3

    const-string/jumbo v2, "-priority"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    const-string/jumbo v2, "["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    aget-object v2, p2, v4

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/android/server/shrinker/PackageStateInfo;->description(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_3
    array-length v2, p2

    if-le v2, v4, :cond_6

    const-string/jumbo v2, "-restart"

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_5

    .line 173
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 174
    sget-object v2, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    aget-object v3, p2, v0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 175
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 178
    :cond_5
    invoke-static {v1}, Lcom/android/server/am/Ams_Interface;->startProcess(Ljava/util/List;)V

    goto :goto_1

    .line 180
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v2, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RunningPackageList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/server/shrinker/Shrinker;->mTaskList:Lcom/android/server/shrinker/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RecentTasks;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/android/server/shrinker/PackageStateInfo;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/android/server/am/Ams_Interface;->getHomePackage()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "home":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "home":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "home":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "com.meizu.flyme.launcher"

    goto :goto_0
.end method

.method public getPackageList()Lcom/android/server/shrinker/RunningPackageList;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    return-object v0
.end method

.method public getRunningAppList(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "optimize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v0, p1}, Lcom/android/server/shrinker/RunningPackageList;->getRunningAppList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getScanner()Lcom/android/server/shrinker/RootScanner;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mScanner:Lcom/android/server/shrinker/RootScanner;

    return-object v0
.end method

.method public hideWindow(IIILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "winId"    # I
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 57
    sget v1, Lcom/android/server/shrinker/Shrinker;->MY_PID:I

    if-eq p2, v1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/shrinker/RunningPackageList;->getProcess(II)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v0

    .line 59
    .local v0, "app":Lcom/android/server/shrinker/ProcessRecord;
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0, p3}, Lcom/android/server/shrinker/ProcessRecord;->hideWindow(I)V

    .line 56
    :cond_2
    return-void
.end method

.method public moveToBackground(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v1, p1}, Lcom/android/server/shrinker/RunningPackageList;->getPackage(Landroid/content/pm/ApplicationInfo;)Lcom/android/server/shrinker/PackageRecord;

    move-result-object v0

    .line 91
    .local v0, "r":Lcom/android/server/shrinker/PackageRecord;
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mTaskList:Lcom/android/server/shrinker/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/shrinker/RecentTasks;->moveToBackground(Lcom/android/server/shrinker/PackageRecord;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/shrinker/Shrinker;->statusChanded()V

    .line 89
    return-void
.end method

.method public moveToForeground(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v1, p1}, Lcom/android/server/shrinker/RunningPackageList;->getPackage(Landroid/content/pm/ApplicationInfo;)Lcom/android/server/shrinker/PackageRecord;

    move-result-object v0

    .line 101
    .local v0, "r":Lcom/android/server/shrinker/PackageRecord;
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mTaskList:Lcom/android/server/shrinker/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/shrinker/RecentTasks;->moveToForeground(Lcom/android/server/shrinker/PackageRecord;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/shrinker/Shrinker;->statusChanded()V

    .line 103
    iget-boolean v1, p0, Lcom/android/server/shrinker/Shrinker;->mActive:Z

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/shrinker/Shrinker;->mActive:Z

    .line 105
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v1}, Lcom/android/server/shrinker/RootScanner;->makeActive()V

    .line 99
    :cond_0
    return-void
.end method

.method public notifyPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "oldSbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x0

    .line 110
    if-eqz p2, :cond_1

    .line 111
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/shrinker/Shrinker;->notifyRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "index":I
    invoke-static {}, Lcom/android/server/am/Ams_Utils;->hasAppCloneFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 120
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/shrinker/PackageStateInfo;->notifyPosted(Ljava/lang/String;I)V

    .line 109
    .end local v0    # "index":I
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public notifyRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 127
    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, "index":I
    invoke-static {}, Lcom/android/server/am/Ams_Utils;->hasAppCloneFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/shrinker/PackageStateInfo;->notifyRemoved(Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method public pkgSize()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v0}, Lcom/android/server/shrinker/RunningPackageList;->size()I

    move-result v0

    return v0
.end method

.method public removeProcess(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 40
    if-gtz p3, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/shrinker/RunningPackageList;->remove(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/shrinker/PackageRecord;

    move-result-object v0

    .line 42
    .local v0, "r":Lcom/android/server/shrinker/PackageRecord;
    invoke-virtual {p0}, Lcom/android/server/shrinker/Shrinker;->statusChanded()V

    .line 43
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecord;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mTaskList:Lcom/android/server/shrinker/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/shrinker/RecentTasks;->removeTask(Lcom/android/server/shrinker/PackageRecord;)V

    .line 39
    :cond_1
    return-void
.end method

.method public setAdj(Landroid/content/pm/ApplicationInfo;IILandroid/content/pm/ApplicationInfo;I)V
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pid"    # I
    .param p3, "adj"    # I
    .param p4, "oomInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "oomPid"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/shrinker/RunningPackageList;->setAdj(Landroid/content/pm/ApplicationInfo;IILandroid/content/pm/ApplicationInfo;I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/shrinker/Shrinker;->statusChanded()V

    .line 80
    return-void
.end method

.method public setFreeze(Landroid/content/pm/ApplicationInfo;IZ)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pid"    # I
    .param p3, "freeze"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/shrinker/RunningPackageList;->setFreeze(Landroid/content/pm/ApplicationInfo;IZ)V

    .line 85
    return-void
.end method

.method public setIntercept(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/server/shrinker/PackageStateInfo;->setIntercept(Ljava/util/Map;)V

    .line 148
    return-void
.end method

.method public showWindow(IIILjava/lang/String;II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "winId"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 49
    sget v1, Lcom/android/server/shrinker/Shrinker;->MY_PID:I

    if-eq p2, v1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/android/server/shrinker/Shrinker;->mPackageList:Lcom/android/server/shrinker/RunningPackageList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/shrinker/RunningPackageList;->getProcess(II)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v0

    .line 51
    .local v0, "app":Lcom/android/server/shrinker/ProcessRecord;
    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0, p3, p5, p6}, Lcom/android/server/shrinker/ProcessRecord;->showWindow(III)V

    .line 48
    :cond_2
    return-void
.end method

.method public statusChanded()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v0}, Lcom/android/server/shrinker/RootScanner;->onStatusChanged()V

    .line 95
    return-void
.end method

.method public updateRecent()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/shrinker/Shrinker;->mTaskList:Lcom/android/server/shrinker/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/shrinker/RecentTasks;->updateRecent()V

    .line 140
    return-void
.end method
