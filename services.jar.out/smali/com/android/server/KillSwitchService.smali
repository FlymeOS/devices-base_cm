.class public Lcom/android/server/KillSwitchService;
.super Lcom/android/internal/os/IKillSwitchService$Stub;
.source "KillSwitchService.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

.field private mPackagesAllowedToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/android/server/KillSwitchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/KillSwitchService;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/android/server/KillSwitchService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/KillSwitchService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/internal/os/IKillSwitchService$Stub;-><init>()V

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/KillSwitchService;->mPackagesAllowedToWrite:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/android/server/KillSwitchService;->mContext:Landroid/content/Context;

    .line 51
    iget-object v7, p0, Lcom/android/server/KillSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104011b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "deviceKillSwitchLib":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/KillSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104011c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "deviceKillSwitchClass":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 58
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v7, Landroid/content/ContextWrapper;

    iget-object v8, p0, Lcom/android/server/KillSwitchService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v5, v2, v7, v9, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    .local v5, "loader":Ldalvik/system/DexClassLoader;
    :try_start_0
    invoke-virtual {v5, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 64
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 65
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/IKillSwitch;

    iput-object v7, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    .line 66
    sget-boolean v7, Lcom/android/server/KillSwitchService;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/KillSwitchService;->TAG:Ljava/lang/String;

    const-string v8, "KillSwitch class loaded"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v7, p0, Lcom/android/server/KillSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070052

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "stringArray":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/KillSwitchService;->mPackagesAllowedToWrite:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "loader":Ldalvik/system/DexClassLoader;
    .end local v6    # "stringArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 71
    .restart local v5    # "loader":Ldalvik/system/DexClassLoader;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    iput-object v9, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    .line 73
    iget-object v7, p0, Lcom/android/server/KillSwitchService;->mPackagesAllowedToWrite:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 74
    sget-object v7, Lcom/android/server/KillSwitchService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not instantiate KillSwitch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private verifyWritePermission()Z
    .locals 4

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/server/KillSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "packagesForUid":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/android/server/KillSwitchService;->mPackagesAllowedToWrite:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x1

    return v2

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "not in security access list"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/KillSwitchService;->verifyWritePermission()Z

    .line 151
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    invoke-interface {v0}, Lcom/android/internal/os/IKillSwitch;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDeviceUuid()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/KillSwitchService;->verifyWritePermission()Z

    .line 112
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    invoke-interface {v0}, Lcom/android/internal/os/IKillSwitch;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasKillSwitch()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    invoke-interface {v0}, Lcom/android/internal/os/IKillSwitch;->isDeviceLocked()Z

    move-result v0

    return v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/KillSwitchService;->verifyWritePermission()Z

    .line 141
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IKillSwitch;->setAccountId(Ljava/lang/String;)V

    .line 146
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDeviceLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/KillSwitchService;->verifyWritePermission()Z

    .line 131
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IKillSwitch;->setDeviceLocked(Z)V

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDeviceUuid(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/KillSwitchService;->verifyWritePermission()Z

    .line 102
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/KillSwitchService;->mKillSwitchImpl:Lcom/android/internal/os/IKillSwitch;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IKillSwitch;->setDeviceUuid(Ljava/lang/String;)V

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
