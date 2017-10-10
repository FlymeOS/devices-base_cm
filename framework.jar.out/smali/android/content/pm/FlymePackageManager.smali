.class public Landroid/content/pm/FlymePackageManager;
.super Ljava/lang/Object;
.source "FlymePackageManager.java"


# static fields
.field private static volatile mFpm:Landroid/content/pm/FlymePackageManager;

.field private static mService:Landroid/content/pm/IFlymePackageManager;


# instance fields
.field private installResult:I

.field private mContext:Landroid/content/Context;

.field private final mLockobjectInstall:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/content/pm/FlymePackageManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/content/pm/FlymePackageManager;I)I
    .locals 0

    iput p1, p0, Landroid/content/pm/FlymePackageManager;->installResult:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/FlymePackageManager;->installResult:I

    .line 38
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IFlymePackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IFlymePackageManager;

    move-result-object v1

    sput-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    .line 40
    iput-object p1, p0, Landroid/content/pm/FlymePackageManager;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-nez v0, :cond_3

    .line 45
    const-class v1, Landroid/content/pm/FlymePackageManager;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Landroid/content/pm/FlymePackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/FlymePackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 49
    :cond_1
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_2

    .line 50
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 54
    :cond_3
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v5, "sB":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "/data/media/"

    .line 60
    .local v1, "locBegin":Ljava/lang/String;
    const-string/jumbo v4, "/storage/emulated/"

    .line 61
    .local v4, "locTmp":Ljava/lang/String;
    const-string/jumbo v3, "/storage/"

    .line 62
    .local v3, "locSdcard1":Ljava/lang/String;
    const-string/jumbo v6, "/data/media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    if-eqz p2, :cond_0

    const-string/jumbo v6, "/storage/emulated/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    const-string/jumbo v6, "/storage/emulated/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "locEnd":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :try_start_0
    sget-object v6, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    return v6

    .line 71
    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v6, "/storage/emulated/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const-string/jumbo v6, "/storage/emulated/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2    # "locEnd":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :try_start_1
    sget-object v6, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    return v6

    .line 79
    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v6, "/storage/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    :try_start_2
    sget-object v6, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v6, p1, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    return v6

    .line 82
    :catch_0
    move-exception v0

    .line 86
    :cond_2
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 76
    .restart local v2    # "locEnd":Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public changeInterceptPackage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 149
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeInterceptPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public changeMayForbitPackage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 203
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeMayForbitPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getInterceptPackage()Ljava/util/List;
    .locals 2
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
    .line 134
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInterceptPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInternalAppList()Ljava/util/List;
    .locals 2
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
    .line 116
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInternalAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMayForbitPackage()Ljava/util/List;
    .locals 2
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
    .line 186
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getMayForbitPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->getPackageActivateState(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 107
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProtectionState()Z
    .locals 2

    .prologue
    .line 169
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getProtectionState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getSystemAppPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemAppRecord()Ljava/util/List;
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
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public installPackage(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Landroid/content/pm/FlymePackageManager;->isMzApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 239
    const/4 v6, -0x1

    return v6

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/FlymePackageManager;->getSystemAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "mayInstalled":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "installApk":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 245
    const/4 v6, -0x2

    return v6

    .line 247
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 248
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/pm/FlymePackageManager$1;

    invoke-direct {v3, p0}, Landroid/content/pm/FlymePackageManager$1;-><init>(Landroid/content/pm/FlymePackageManager;)V

    .line 260
    .local v3, "packageInstallObserver":Landroid/app/PackageInstallObserver;
    iget-object v7, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    monitor-enter v7

    .line 262
    :try_start_0
    iget-object v6, p0, Landroid/content/pm/FlymePackageManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 263
    iget-object v6, p0, Landroid/content/pm/FlymePackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 264
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "FlymePackageManager"

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    .line 265
    iget-object v6, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    monitor-exit v7

    .line 271
    .end local v1    # "installApk":Ljava/io/File;
    .end local v3    # "packageInstallObserver":Landroid/app/PackageInstallObserver;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    iget v6, p0, Landroid/content/pm/FlymePackageManager;->installResult:I

    return v6

    .line 260
    .restart local v1    # "installApk":Ljava/io/File;
    .restart local v3    # "packageInstallObserver":Landroid/app/PackageInstallObserver;
    .restart local v5    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 267
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public isMzApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public resetVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->resetVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setInterceptPackage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setInterceptPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setKeyGuardPackage(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "intercept"    # Z
    .param p3, "level"    # I

    .prologue
    .line 213
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IFlymePackageManager;->setKeyGuardPackage(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMayForbitPackage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setMayForbitPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setProtectionState(ZLandroid/os/Binder;)V
    .locals 2
    .param p1, "state"    # Z
    .param p2, "binder"    # Landroid/os/Binder;

    .prologue
    .line 178
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->setProtectionState(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public syncPackageState()V
    .locals 2

    .prologue
    .line 159
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->syncPackageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->updatePermissions(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
