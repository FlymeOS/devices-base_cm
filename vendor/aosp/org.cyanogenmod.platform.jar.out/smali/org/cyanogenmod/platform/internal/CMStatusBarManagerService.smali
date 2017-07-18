.class public Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;,
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;,
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;,
        Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$2;
    }
.end annotation


# static fields
.field static final MAX_PACKAGE_TILES:I = 0x4

.field private static final REASON_PACKAGE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CMStatusBarManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field final mCustomTileByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mQSTileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field private final mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->checkDosProtection(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;
    .param p2, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isVisibleToListener(Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->enforceBindCustomTileListener()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->enforceCustomTilePublish()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .prologue
    invoke-direct/range {p0 .. p7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeCustomTileFromListenerLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 76
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    .line 110
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mService:Landroid/os/IBinder;

    .line 81
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 387
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 388
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 387
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 389
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 390
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 392
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 393
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

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 394
    const-string/jumbo v5, " which is owned by uid "

    .line 393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 394
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    :cond_2
    return-void
.end method

.method private checkDosProtection(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 321
    invoke-static {p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isUidSystem(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "android"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 324
    :goto_0
    if-nez v3, :cond_3

    .line 325
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "count":I
    :try_start_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 329
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 330
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    .line 331
    .local v4, "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v5, v4, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v5}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v5}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v5

    if-ne v5, p3, :cond_1

    .line 332
    add-int/lit8 v1, v1, 0x1

    .line 333
    const/4 v5, 0x4

    if-lt v1, v5, :cond_1

    .line 334
    const-string/jumbo v5, "CMStatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package has already posted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 335
    const-string/jumbo v8, " custom tiles.  Not showing more.  package="

    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    .line 321
    .end local v0    # "N":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_0
    const/4 v3, 0x1

    .local v3, "isSystemTile":Z
    goto :goto_0

    .line 329
    .end local v3    # "isSystemTile":Z
    .restart local v0    # "N":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_2
    monitor-exit v6

    .line 342
    .end local v0    # "N":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    const/4 v5, 0x0

    return v5

    .line 325
    .restart local v1    # "count":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private customTileMatchesUserId(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;I)Z
    .locals 3
    .param p1, "r"    # Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 418
    if-eq p2, v2, :cond_0

    .line 420
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceBindCustomTileListener()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 534
    const-string/jumbo v1, "cyanogenmod.permission.BIND_CUSTOM_TILE_LISTENER_SERVICE"

    .line 535
    const-string/jumbo v2, "StatusBarManagerService"

    .line 533
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method private enforceCustomTilePublish()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 528
    const-string/jumbo v1, "cyanogenmod.permission.PUBLISH_CUSTOM_TILE"

    .line 529
    const-string/jumbo v2, "StatusBarManagerService"

    .line 527
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    .line 408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 403
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    .line 404
    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v1

    .line 404
    :cond_1
    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVisibleToListener(Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;
    .param p2, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 540
    invoke-virtual {p1}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    return v0
.end method

.method private removeCustomTileFromListenerLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .prologue
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move-object v7, p1

    .line 427
    invoke-virtual/range {v0 .. v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V

    .line 426
    return-void
.end method

.method private removeCustomTileLocked(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;ZI)V
    .locals 4
    .param p1, "r"    # Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 499
    if-eqz p2, :cond_0

    .line 500
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 502
    :try_start_0
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget v1, v1, Lcyanogenmod/app/CustomTile;->icon:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 513
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->isCanceled:Z

    .line 514
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iget-object v2, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v1, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    .line 517
    :cond_2
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    iget-object v2, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 506
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "CMStatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canceled PendingIntent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v3}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method createCustomTileWithTagInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcyanogenmod/app/CustomTile;[II)V
    .locals 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 269
    if-eqz p1, :cond_0

    if-nez p7, :cond_1

    .line 270
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null not allowed: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    const-string/jumbo v3, " id="

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    const-string/jumbo v3, " customTile="

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_1
    const-string/jumbo v6, "createCustomTileWithTag"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p9

    move-object v7, p1

    .line 274
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 276
    .local v11, "userId":I
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 279
    .local v10, "user":Landroid/os/UserHandle;
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p6

    move-object/from16 v7, p5

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/CustomTile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;I)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    const/4 v1, 0x0

    aput p6, p8, v1

    .line 267
    return-void
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "org.cyanogenmod.statusbar"

    return-object v0
.end method

.method indexOfQsTileLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 349
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    invoke-virtual {v2}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    return v1

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method indexOfQsTileLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 358
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    .line 359
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 360
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 361
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    .line 362
    .local v3, "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    invoke-direct {p0, v3, p4}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->customTileMatchesUserId(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getId()I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 360
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    if-nez p2, :cond_3

    .line 366
    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 374
    :cond_2
    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    return v0

    .line 370
    :cond_3
    iget-object v4, v3, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 378
    .end local v3    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_4
    const/4 v4, -0x1

    return v4
.end method

.method public onStart()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 91
    const-string/jumbo v0, "CMStatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCMStatusBar cmstatusbar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    .line 93
    const-string/jumbo v0, "cmstatusbar"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 95
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method removeAllCustomTilesInt(Ljava/lang/String;ZIILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 467
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 468
    :try_start_0
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 469
    .local v0, "N":I
    const/4 v3, 0x0

    .line 470
    .local v3, "removedTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;>;"
    add-int/lit8 v1, v0, -0x1

    .end local v3    # "removedTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;>;"
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 471
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    .line 472
    .local v2, "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    invoke-direct {p0, v2, p3}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->customTileMatchesUserId(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 470
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {v2}, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    if-eqz p1, :cond_0

    .line 479
    :cond_2
    if-eqz p1, :cond_3

    iget-object v7, v2, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v7}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 482
    :cond_3
    if-nez v3, :cond_4

    .line 483
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 485
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    if-nez p2, :cond_5

    monitor-exit v6

    .line 487
    return v4

    .line 489
    :cond_5
    :try_start_1
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 490
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7, p4}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeCustomTileLocked(Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 467
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 492
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    if-eqz v3, :cond_7

    :goto_2
    monitor-exit v6

    return v4

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I
    .param p7, "listener"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 433
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$4;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method
