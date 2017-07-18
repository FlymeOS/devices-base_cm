.class public Landroid/app/AppImportanceMonitor;
.super Ljava/lang/Object;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppImportanceMonitor$AppEntry;,
        Landroid/app/AppImportanceMonitor$1;
    }
.end annotation


# static fields
.field static final MSG_UPDATE:I = 0x1


# instance fields
.field final mApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AppImportanceMonitor$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mProcessObserver:Landroid/app/IProcessObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    .line 46
    new-instance v5, Landroid/app/AppImportanceMonitor$1;

    invoke-direct {v5, p0}, Landroid/app/AppImportanceMonitor$1;-><init>(Landroid/app/AppImportanceMonitor;)V

    iput-object v5, p0, Landroid/app/AppImportanceMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 74
    iput-object p1, p0, Landroid/app/AppImportanceMonitor;->mContext:Landroid/content/Context;

    .line 75
    new-instance v5, Landroid/app/AppImportanceMonitor$2;

    invoke-direct {v5, p0, p2}, Landroid/app/AppImportanceMonitor$2;-><init>(Landroid/app/AppImportanceMonitor;Landroid/os/Looper;)V

    iput-object v5, p0, Landroid/app/AppImportanceMonitor;->mHandler:Landroid/os/Handler;

    .line 87
    const-string/jumbo v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 89
    .local v0, "am":Landroid/app/ActivityManager;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/AppImportanceMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    .line 94
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 95
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 96
    .local v1, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 90
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public getImportance(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 102
    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppImportanceMonitor$AppEntry;

    .line 103
    .local v0, "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    if-nez v0, :cond_0

    .line 104
    const/16 v1, 0x3e8

    return v1

    .line 106
    :cond_0
    iget v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    return v1
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "importance"    # I
    .param p3, "oldImportance"    # I

    .prologue
    .line 112
    return-void
.end method

.method updateImportanceLocked(IIIZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "importance"    # I
    .param p4, "repChange"    # Z

    .prologue
    .line 116
    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppImportanceMonitor$AppEntry;

    .line 117
    .local v0, "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/app/AppImportanceMonitor$AppEntry;

    .end local v0    # "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    invoke-direct {v0, p1}, Landroid/app/AppImportanceMonitor$AppEntry;-><init>(I)V

    .line 119
    .restart local v0    # "ent":Landroid/app/AppImportanceMonitor$AppEntry;
    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_0
    const/16 v1, 0x3e8

    if-lt p3, v1, :cond_1

    .line 122
    iget-object v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    :goto_0
    invoke-virtual {p0, v0, p4}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(Landroid/app/AppImportanceMonitor$AppEntry;Z)V

    .line 115
    return-void

    .line 124
    :cond_1
    iget-object v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method updateImportanceLocked(Landroid/app/AppImportanceMonitor$AppEntry;Z)V
    .locals 7
    .param p1, "ent"    # Landroid/app/AppImportanceMonitor$AppEntry;
    .param p2, "repChange"    # Z

    .prologue
    .line 130
    const/16 v0, 0x3e8

    .line 131
    .local v0, "appImp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 132
    iget-object v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 133
    .local v3, "procImp":I
    if-ge v3, v0, :cond_0

    .line 134
    move v0, v3

    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "procImp":I
    :cond_1
    iget v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    if-eq v0, v4, :cond_3

    .line 138
    iget v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    shl-int/lit8 v4, v4, 0x10

    or-int v2, v0, v4

    .line 139
    .local v2, "impCode":I
    iput v0, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    .line 140
    const/16 v4, 0x3e8

    if-lt v0, v4, :cond_2

    .line 141
    iget-object v4, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/AppImportanceMonitor$AppEntry;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 143
    :cond_2
    if-eqz p2, :cond_3

    .line 144
    iget-object v4, p0, Landroid/app/AppImportanceMonitor;->mHandler:Landroid/os/Handler;

    iget v5, p1, Landroid/app/AppImportanceMonitor$AppEntry;->uid:I

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 129
    .end local v2    # "impCode":I
    :cond_3
    return-void
.end method
