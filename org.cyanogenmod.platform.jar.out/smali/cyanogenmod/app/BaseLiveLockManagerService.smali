.class public abstract Lcyanogenmod/app/BaseLiveLockManagerService;
.super Landroid/app/Service;
.source "BaseLiveLockManagerService.java"

# interfaces
.implements Lcyanogenmod/app/ILiveLockScreenManagerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/BaseLiveLockManagerService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/app/ILiveLockScreenChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/BaseLiveLockManagerService;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 44
    iput-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 178
    new-instance v0, Lcyanogenmod/app/BaseLiveLockManagerService$1;

    invoke-direct {v0, p0}, Lcyanogenmod/app/BaseLiveLockManagerService$1;-><init>(Lcyanogenmod/app/BaseLiveLockManagerService;)V

    iput-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mService:Landroid/os/IBinder;

    .line 40
    return-void
.end method

.method private final hasPrivatePermissions()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string/jumbo v1, "cyanogenmod.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS_PRIVATE"

    invoke-virtual {p0, v1}, Lcyanogenmod/app/BaseLiveLockManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract cancelLiveLockScreen(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final enforceAccessPermission()V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcyanogenmod/app/BaseLiveLockManagerService;->hasPrivatePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    const-string/jumbo v0, "cyanogenmod.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS"

    .line 128
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0, v0, v1}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected final enforcePrivateAccessPermission()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "cyanogenmod.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS_PRIVATE"

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v0, v1}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected final enforceSamePackageOrSystem(Ljava/lang/String;Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    .line 154
    invoke-direct {p0}, Lcyanogenmod/app/BaseLiveLockManagerService;->hasPrivatePermissions()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v3, p2, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 164
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 165
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 164
    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 166
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    .line 167
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "uid":I
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Modifying Live lock screen from different packages not allowed.  Calling package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    const-string/jumbo v5, " LLS package: "

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    iget-object v5, p2, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "uid":I
    :cond_3
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 170
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 171
    const-string/jumbo v5, " which is owned by uid "

    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 171
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :cond_4
    return-void
.end method

.method public abstract enqueueLiveLockScreen(Ljava/lang/String;ILcyanogenmod/app/LiveLockScreenInfo;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected final notifyChangeListeners(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 6
    .param p1, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    .line 96
    iget-object v4, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 97
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 98
    iget-object v4, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/ILiveLockScreenChangeListener;

    .line 100
    .local v3, "listener":Lcyanogenmod/app/ILiveLockScreenChangeListener;
    :try_start_0
    invoke-interface {v3, p1}, Lcyanogenmod/app/ILiveLockScreenChangeListener;->onLiveLockScreenChanged(Lcyanogenmod/app/LiveLockScreenInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcyanogenmod/app/BaseLiveLockManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to notifiy change listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 105
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/app/ILiveLockScreenChangeListener;
    :cond_0
    iget-object v4, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 95
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public final registerChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public final unregisterChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public abstract updateDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
