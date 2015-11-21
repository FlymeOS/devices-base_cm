.class public final Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$Multicaster;,
        Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;,
        Lcom/android/server/wifi/WifiServiceImpl$LockList;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiLock;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mBatchedScanSupported:Z

.field private final mBatchedScanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mInterfaceName:Ljava/lang/String;

.field private mIsControllerStarted:Z

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field private scanRequestCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 97
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    .line 117
    iput v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    .line 128
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    .line 1381
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    .line 305
    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    .line 307
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 308
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 309
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 310
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 311
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 313
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    .line 314
    new-instance v1, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 316
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 318
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    .line 319
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    .line 320
    new-instance v1, Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 322
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    .line 324
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiServiceImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiServiceImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiServiceImpl;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z
    .locals 6
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    .line 1632
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1300(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 1636
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1638
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 1639
    iget v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 1651
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    const/4 v1, 0x1

    .line 1656
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v1

    .line 1641
    :pswitch_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1656
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1644
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1656
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1648
    :pswitch_2
    :try_start_3
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkInteractAcrossUsersFull()Z
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "LocationHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WIFI_CREDENTIAL"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private isCurrentProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1030
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1031
    .local v0, "currentUser":I
    if-ne p1, v0, :cond_0

    .line 1040
    :goto_0
    return v4

    .line 1034
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1035
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1036
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .line 1040
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isOwner(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    .line 1049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1050
    .local v2, "ident":J
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1052
    .local v6, "userId":I
    const/4 v1, 0x0

    .line 1053
    .local v1, "ownerUser":I
    if-ne v6, v1, :cond_0

    .line 1065
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v7

    .line 1056
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 1057
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1058
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v8, :cond_1

    .line 1065
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1062
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v7, 0x0

    .line 1065
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1612
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1619
    :goto_0
    return-void

    .line 1616
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1622
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1629
    :goto_0
    return-void

    .line 1626
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 1423
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1424
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1425
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1426
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1427
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1428
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1429
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1430
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1432
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    .prologue
    .line 1409
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    .line 1417
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1420
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1697
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1600(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-result-object v1

    .line 1699
    .local v1, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1703
    .local v0, "hadLock":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1705
    .local v2, "ident":J
    if-eqz v0, :cond_0

    .line 1706
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 1707
    iget v4, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 1718
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1725
    :goto_2
    return v0

    .line 1701
    .end local v0    # "hadLock":Z
    .end local v2    # "ident":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1709
    .restart local v0    # "hadLock":Z
    .restart local v2    # "ident":J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1720
    :catch_0
    move-exception v4

    .line 1722
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 1712
    :pswitch_1
    :try_start_2
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1722
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1715
    :pswitch_2
    :try_start_3
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1831
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .line 1833
    .local v2, "removed":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v2, :cond_0

    .line 1834
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->unlinkDeathRecipient()V

    .line 1836
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1837
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1840
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1842
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1847
    :goto_0
    return-void

    .line 1843
    :catch_0
    move-exception v3

    .line 1845
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private resolveBatchedScannersLocked()V
    .locals 21

    .prologue
    .line 556
    new-instance v15, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v15}, Landroid/net/wifi/BatchedScanSettings;-><init>()V

    .line 557
    .local v15, "setting":Landroid/net/wifi/BatchedScanSettings;
    const/4 v13, 0x0

    .line 558
    .local v13, "responsibleWorkSource":Landroid/os/WorkSource;
    const/4 v12, 0x0

    .line 559
    .local v12, "responsibleUid":I
    const-wide/16 v10, 0x0

    .line 561
    .local v10, "responsibleCsph":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    .line 631
    :goto_0
    return-void

    .line 565
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    .line 566
    .local v9, "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    iget-object v14, v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    .line 573
    .local v14, "s":Landroid/net/wifi/BatchedScanSettings;
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 575
    :cond_2
    const/16 v2, 0x14

    .line 583
    .local v2, "currentChannelCount":I
    :cond_3
    :goto_2
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 584
    const/16 v3, 0x1e

    .line 588
    .local v3, "currentScanInterval":I
    :goto_3
    mul-int/lit16 v0, v2, 0xe10

    move/from16 v16, v0

    div-int v16, v16, v3

    move/from16 v0, v16

    int-to-double v4, v0

    .line 590
    .local v4, "currentCsph":D
    cmpl-double v16, v4, v10

    if-lez v16, :cond_4

    .line 591
    iget v12, v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->uid:I

    .line 592
    iget-object v13, v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->workSource:Landroid/os/WorkSource;

    .line 593
    move-wide v10, v4

    .line 596
    :cond_4
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 598
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 600
    :cond_5
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 603
    :cond_6
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 605
    :cond_7
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 607
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 609
    :cond_8
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 612
    :cond_9
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 614
    :cond_a
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-eqz v16, :cond_11

    .line 615
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-eqz v16, :cond_1

    .line 616
    :cond_b
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 617
    :cond_c
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 618
    .local v6, "i":Ljava/lang/String;
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 577
    .end local v2    # "currentChannelCount":I
    .end local v3    # "currentScanInterval":I
    .end local v4    # "currentCsph":D
    .end local v6    # "i":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_e
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v2

    .line 579
    .restart local v2    # "currentChannelCount":I
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    const-string v17, "A"

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    add-int/lit8 v2, v2, 0x8

    .line 580
    :cond_f
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    const-string v17, "B"

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v2, v2, 0xa

    goto/16 :goto_2

    .line 586
    :cond_10
    iget v3, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .restart local v3    # "currentScanInterval":I
    goto/16 :goto_3

    .line 622
    .restart local v4    # "currentCsph":D
    :cond_11
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-eqz v16, :cond_1

    .line 623
    :cond_12
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    goto/16 :goto_1

    .line 628
    .end local v2    # "currentChannelCount":I
    .end local v3    # "currentScanInterval":I
    .end local v4    # "currentCsph":D
    .end local v9    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    .end local v14    # "s":Landroid/net/wifi/BatchedScanSettings;
    :cond_13
    invoke-virtual {v15}, Landroid/net/wifi/BatchedScanSettings;->constrain()V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    double-to-int v0, v10

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v12, v1, v13}, Lcom/android/server/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    goto/16 :goto_0
.end method

.method private stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v0, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    monitor-enter v4

    .line 540
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    .line 541
    .local v2, "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {p1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    if-eqz p1, :cond_0

    .line 546
    .end local v2    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    .line 547
    .restart local v2    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 549
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 550
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->resolveBatchedScannersLocked()V

    .line 552
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1791
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 1793
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 1794
    :try_start_0
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    .line 1795
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 1801
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1804
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1806
    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1809
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1811
    :goto_0
    return-void

    .line 1801
    .end local v0    # "ident":J
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1807
    .restart local v0    # "ident":J
    .restart local v2    # "uid":I
    :catch_0
    move-exception v3

    .line 1809
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1588
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1592
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1596
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1597
    const/4 p4, 0x0

    .line 1599
    :cond_1
    if-eqz p4, :cond_2

    .line 1600
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    .line 1602
    :cond_2
    if-nez p4, :cond_3

    .line 1603
    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 1605
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1606
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v2

    .line 1607
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1608
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 899
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 900
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    const-string v1, "addOrUpdateNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v0, :cond_0

    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 911
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 918
    :goto_1
    return v0

    .line 908
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto :goto_0

    .line 913
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 917
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "bad network configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1247
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 1248
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 5

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .line 336
    .local v0, "wifiEnabled":Z
    const-string v2, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    .line 340
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    .line 356
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    .line 358
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    .line 362
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 366
    return-void

    .line 336
    :cond_1
    const-string v1, "disabled"

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1257
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    .line 1258
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1369
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1370
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1371
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 970
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 974
    :goto_0
    return v0

    .line 973
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 795
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 796
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_0

    .line 1438
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    :goto_0
    return-void

    .line 1443
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Wi-Fi is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Stay-awake conditions: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "stay_on_while_plugged_in"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mMulticastEnabled "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mMulticastDisabled "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1454
    const-string v14, "Latest scan results:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v13

    .line 1456
    .local v13, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1457
    .local v10, "nowMs":J
    if-eqz v13, :cond_4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_4

    .line 1458
    const-string v14, "    BSSID              Frequency  RSSI    Age      SSID                                 Flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 1461
    .local v12, "r":Landroid/net/wifi/ScanResult;
    const-wide/16 v6, 0x0

    .line 1462
    .local v6, "ageSec":J
    const-wide/16 v4, 0x0

    .line 1463
    .local v4, "ageMilli":J
    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v14, v10, v14

    if-lez v14, :cond_1

    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 1464
    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v6, v14, v16

    .line 1465
    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    rem-long v4, v14, v16

    .line 1467
    :cond_1
    const-string v8, " "

    .line 1468
    .local v8, "candidate":Ljava/lang/String;
    iget v14, v12, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    if-lez v14, :cond_2

    const-string v8, "+"

    .line 1469
    :cond_2
    const-string v15, "  %17s  %9d  %5d  %3d.%03d%s   %-32s  %s\n"

    const/16 v14, 0x8

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, v14

    const/4 v14, 0x1

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x2

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x5

    aput-object v8, v16, v14

    const/16 v17, 0x6

    iget-object v14, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v14, :cond_3

    const-string v14, ""

    :goto_2
    aput-object v14, v16, v17

    const/4 v14, 0x7

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_1

    :cond_3
    iget-object v14, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1479
    .end local v4    # "ageMilli":J
    .end local v6    # "ageSec":J
    .end local v8    # "candidate":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "r":Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1480
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Locks acquired: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full high perf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " scan"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Locks released: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full high perf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " scan"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1487
    const-string v14, "Locks held:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v14, v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$700(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 1872
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1873
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAggressiveHandover(I)V

    .line 1874
    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 953
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 958
    :goto_0
    return v0

    .line 957
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1335
    if-nez p1, :cond_0

    .line 1336
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteAddress cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1339
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 1340
    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 1341
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    .line 1342
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1343
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1347
    if-nez p1, :cond_0

    .line 1348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteMacAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 1352
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 1862
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1863
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 1864
    return-void
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 1580
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1585
    :goto_0
    return-void

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAggressiveHandover()I
    .locals 1

    .prologue
    .line 1877
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1878
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAggressiveHandover()I

    move-result v0

    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    .prologue
    .line 1887
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1888
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v0

    return v0
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 512
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 527
    :goto_0
    return-object v5

    .line 513
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 514
    .local v1, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 515
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkInteractAcrossUsersFull()Z

    move-result v0

    .line 516
    .local v0, "hasInteractUsersFull":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 518
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 522
    :cond_1
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentProfile(I)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    .line 523
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 525
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->syncGetBatchedScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 527
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getChannelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetChannelList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1378
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 869
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 874
    :goto_0
    return-object v0

    .line 873
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 988
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    .prologue
    .line 1893
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1894
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 1895
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v0

    .line 1899
    :goto_0
    return-object v0

    .line 1898
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1113
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 7

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1176
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 1178
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v4, Landroid/net/DhcpInfo;

    invoke-direct {v4}, Landroid/net/DhcpInfo;-><init>()V

    .line 1180
    .local v4, "info":Landroid/net/DhcpInfo;
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 1182
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->ipAddress:I

    .line 1184
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->netmask:I

    .line 1188
    :cond_0
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-eqz v6, :cond_1

    .line 1189
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->gateway:I

    .line 1192
    :cond_1
    const/4 v2, 0x0

    .line 1193
    .local v2, "dnsFound":I
    iget-object v6, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1194
    .local v1, "dns":Ljava/net/InetAddress;
    instance-of v6, v1, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    .line 1195
    if-nez v2, :cond_5

    .line 1196
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns1:I

    .line 1200
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    .line 1203
    :cond_3
    iget-object v5, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 1204
    .local v5, "serverAddress":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_4

    .line 1205
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->serverAddress:I

    .line 1207
    :cond_4
    iget v6, v0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v6, v4, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 1209
    return-object v4

    .line 1198
    .restart local v1    # "dns":Ljava/net/InetAddress;
    :cond_5
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1144
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 884
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 885
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 889
    :goto_0
    return-object v0

    .line 888
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 998
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 999
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1000
    .local v1, "uid":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkInteractAcrossUsersFull()Z

    move-result v0

    .line 1001
    .local v0, "hasInteractUsersFull":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1003
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1005
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v5

    .line 1007
    :cond_0
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentProfile(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v0, :cond_1

    .line 1008
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1010
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 1012
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getSimInfo()Landroid/net/wifi/WifiEapSimInfo;
    .locals 2

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 832
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSimInfo(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v0

    .line 836
    :goto_0
    return-object v0

    .line 835
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedFeatures()I
    .locals 2

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 819
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    .line 823
    :goto_0
    return v0

    .line 822
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerboseLoggingLevel()I
    .locals 1

    .prologue
    .line 1867
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1868
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getVerboseLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 762
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 753
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 719
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1360
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1361
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 484
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 1778
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 1780
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1782
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    monitor-exit v1

    .line 1788
    :goto_0
    return-void

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1787
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isIbssSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1159
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1160
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v2, :cond_1

    .line 1161
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->syncIsIbssSupported(Lcom/android/internal/util/AsyncChannel;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1164
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1161
    goto :goto_0

    .line 1163
    :cond_1
    const-string v0, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1164
    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1850
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1852
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1853
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1854
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 787
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 374
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 377
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 478
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->requestBatchedScanPoll()V

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 811
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    .line 812
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 803
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .line 804
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 1814
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 1816
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1817
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 1818
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    .line 1819
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1820
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1821
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .line 1822
    .local v1, "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1823
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    .line 1820
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1826
    .end local v1    # "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_1
    monitor-exit v5

    .line 1827
    return-void

    .line 1826
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v1

    .line 1690
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 929
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    const-string v1, "WifiService"

    const-string v2, "Remove is not authorized for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_0
    return v0

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 937
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_0

    .line 939
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 7

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v6

    .line 849
    .local v6, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v6, :cond_0

    .line 851
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    .end local v0    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    const/4 v1, 0x3

    iget v2, v6, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iget v3, v6, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iget v4, v6, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iget v5, v6, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(IIIII)V

    .restart local v0    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_0
    move-object v1, v0

    .line 859
    .end local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :goto_0
    return-object v1

    .line 858
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 4
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 493
    if-eqz p3, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    .line 497
    invoke-virtual {p3}, Landroid/os/WorkSource;->clearNames()V

    .line 499
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v3, :cond_1

    .line 507
    :goto_0
    return v2

    .line 500
    :cond_1
    new-instance v1, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v1, p1}, Landroid/net/wifi/BatchedScanSettings;-><init>(Landroid/net/wifi/BatchedScanSettings;)V

    .line 501
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .local v1, "requested":Landroid/net/wifi/BatchedScanSettings;
    invoke-virtual {v1}, Landroid/net/wifi/BatchedScanSettings;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_0

    .line 502
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :cond_2
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 503
    .local v0, "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    monitor-enter v3

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->resolveBatchedScannersLocked()V

    .line 506
    monitor-exit v3

    .line 507
    const/4 v2, 0x1

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_0

    .line 506
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 1077
    const/4 v0, 0x1

    .line 1078
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1079
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 1083
    :goto_0
    return v1

    .line 1082
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 1882
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1883
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setAllowScansWithTraffic(I)V

    .line 1884
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1097
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1102
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    return-void

    .line 1104
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1128
    :cond_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1132
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 771
    if-nez p1, :cond_0

    .line 778
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 776
    :cond_1
    const-string v0, "WifiService"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 729
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 730
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 731
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 732
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_config_tethering"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 737
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 741
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 737
    goto :goto_0

    .line 739
    :cond_3
    const-string v1, "WifiService"

    const-string v2, "Invalid WifiConfiguration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 678
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 679
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v3, "WifiService"

    const-string v4, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 692
    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 697
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    :goto_0
    monitor-exit p0

    return v2

    .line 697
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsControllerStarted:Z

    if-nez v3, :cond_1

    .line 701
    const-string v2, "WifiService"

    const-string v3, "WifiController is not yet started, abort setWifiEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v2, 0x0

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 678
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 705
    .restart local v0    # "ident":J
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26008

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 399
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceLocationHardwarePermission()V

    .line 400
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getChannelList()Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    if-nez v1, :cond_0

    .line 402
    const-string v4, "WifiService"

    const-string v5, "startLocationRestrictedScan cant get channels"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v3, Landroid/net/wifi/ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/ScanSettings;-><init>()V

    .line 406
    .local v3, "settings":Landroid/net/wifi/ScanSettings;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .line 407
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    iget-boolean v4, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-nez v4, :cond_1

    .line 408
    iget-object v4, v3, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 411
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_2
    if-nez p1, :cond_3

    .line 414
    new-instance p1, Landroid/os/WorkSource;

    .end local p1    # "workSource":Landroid/os/WorkSource;
    const/4 v4, -0x6

    invoke-direct {p1, v4}, Landroid/os/WorkSource;-><init>(I)V

    .line 416
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 428
    if-eqz p1, :cond_1

    .line 429
    new-instance v0, Landroid/net/wifi/ScanSettings;

    invoke-direct {v0, p1}, Landroid/net/wifi/ScanSettings;-><init>(Landroid/net/wifi/ScanSettings;)V

    .line 430
    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .local v0, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {v0}, Landroid/net/wifi/ScanSettings;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const-string v1, "WifiService"

    const-string v2, "invalid scan setting"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 443
    .end local v0    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :goto_0
    return-void

    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local v0    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_0
    move-object p1, v0

    .line 435
    .end local v0    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_1
    if-eqz p2, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    .line 439
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public startWifi()V
    .locals 2

    .prologue
    .line 1217
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1223
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1225
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 533
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    goto :goto_0
.end method

.method public stopWifi()V
    .locals 2

    .prologue
    .line 1232
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1237
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1238
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1662
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1663
    .local v3, "pid":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1664
    const/4 p2, 0x0

    .line 1666
    :cond_0
    if-eqz p2, :cond_1

    .line 1667
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    .line 1669
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1671
    .local v0, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1672
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1400(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 1673
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 1674
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1680
    .end local v2    # "index":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1681
    :catch_0
    move-exception v6

    .line 1683
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1685
    :goto_0
    return-void

    .line 1676
    .restart local v2    # "index":I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1500(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .line 1677
    .local v5, "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 1678
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1679
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 1680
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1683
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1678
    :cond_3
    :try_start_4
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1683
    .end local v2    # "index":I
    .end local v5    # "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
