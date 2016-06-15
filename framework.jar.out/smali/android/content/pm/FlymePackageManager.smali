.class public Landroid/content/pm/FlymePackageManager;
.super Ljava/lang/Object;
.source "FlymePackageManager.java"


# static fields
.field private static volatile mFpm:Landroid/content/pm/FlymePackageManager;


# instance fields
.field private mService:Landroid/content/pm/IFlymePackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 31
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IFlymePackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IFlymePackageManager;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Landroid/content/pm/FlymePackageManager;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/pm/FlymePackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/FlymePackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v3, "sB":Ljava/lang/StringBuffer;
    const-string v0, "/data/media/"

    .line 48
    .local v0, "locBegin":Ljava/lang/String;
    const-string v2, "/storage/emulated/"

    .line 49
    .local v2, "locTmp":Ljava/lang/String;
    const-string v4, "/data/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    if-eqz p2, :cond_0

    const-string v4, "/storage/emulated/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const-string v4, "/storage/emulated/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "locEnd":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :try_start_0
    iget-object v4, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 67
    .end local v1    # "locEnd":Ljava/lang/String;
    :goto_0
    return v4

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    const-string v4, "/storage/emulated/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const-string v4, "/storage/emulated/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .restart local v1    # "locEnd":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :try_start_1
    iget-object v4, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 63
    :catch_0
    move-exception v4

    .line 67
    .end local v1    # "locEnd":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 55
    .restart local v1    # "locEnd":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getInternalAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v0}, Landroid/content/pm/IFlymePackageManager;->getInternalAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IFlymePackageManager;->getPackageActivateState(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IFlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IFlymePackageManager;->resetVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public syncPackageState()V
    .locals 1

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v0}, Landroid/content/pm/IFlymePackageManager;->syncPackageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IFlymePackageManager;->updatePermissions(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
