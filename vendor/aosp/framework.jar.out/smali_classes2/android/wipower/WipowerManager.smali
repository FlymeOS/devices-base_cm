.class public final Landroid/wipower/WipowerManager;
.super Ljava/lang/Object;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/WipowerManager$PowerApplyEvent;,
        Landroid/wipower/WipowerManager$WipowerState;,
        Landroid/wipower/WipowerManager$PowerLevel;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WipowerManager"

.field private static final VDBG:Z

.field private static mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/wipower/WipowerManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mPruData:Landroid/wipower/WipowerDynamicParam;

.field private static mService:Landroid/wipower/IWipower;

.field private static mState:Landroid/wipower/WipowerManager$WipowerState;

.field private static mWipowerManager:Landroid/wipower/WipowerManager;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v3, Landroid/wipower/WipowerManager$1;

    invoke-direct {v3, p0}, Landroid/wipower/WipowerManager$1;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v3, p0, Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;

    .line 200
    new-instance v3, Landroid/wipower/WipowerManager$2;

    invoke-direct {v3, p0}, Landroid/wipower/WipowerManager$2;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v3, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    .line 246
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 249
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Landroid/wipower/IWipower;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 251
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    :cond_0
    const-string v3, "WipowerManager"

    const-string v4, "Could not bind to Wipower Service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "bindIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    const-string v3, "WipowerManager"

    const-string v4, "Bound to Wipower Service"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v3, Landroid/wipower/WipowerDynamicParam;

    invoke-direct {v3}, Landroid/wipower/WipowerDynamicParam;-><init>()V

    sput-object v3, Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    .line 263
    return-void

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "WipowerManager"

    const-string v4, "Security Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/wipower/WipowerDynamicParam;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;

    return-object v0
.end method

.method static synthetic access$100()Landroid/wipower/IWipower;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    return-object v0
.end method

.method static synthetic access$102(Landroid/wipower/IWipower;)Landroid/wipower/IWipower;
    .locals 0
    .param p0, "x0"    # Landroid/wipower/IWipower;

    .prologue
    .line 56
    sput-object p0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    return-object p0
.end method

.method static synthetic access$200(Landroid/wipower/WipowerManager;)Landroid/wipower/IWipowerManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/wipower/WipowerManager;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;

    return-object v0
.end method

.method public static declared-synchronized getWipowerManger(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)Landroid/wipower/WipowerManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 227
    const-class v1, Landroid/wipower/WipowerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "WipowerManager"

    const-string v2, "Wipower not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    const/4 v0, 0x0

    .line 236
    :goto_0
    monitor-exit v1

    return-object v0

    .line 232
    :cond_0
    :try_start_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    if-nez v0, :cond_1

    .line 233
    const-string v0, "WipowerManager"

    const-string v2, "Instantiate Singleton"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Landroid/wipower/WipowerManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/wipower/WipowerManager;-><init>(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)V

    sput-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    .line 236
    :cond_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static isWipowerSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    const-string v2, "ro.bluetooth.a4wp"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 268
    const-string v1, "WipowerManager"

    const-string v2, "System.getProperty is true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return v0

    .line 271
    :cond_0
    const-string v0, "WipowerManager"

    const-string v2, "System.getProperty is false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 272
    goto :goto_0
.end method


# virtual methods
.method public enableAlertNotification(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, "ret":Z
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 435
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return v1

    .line 438
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableAlert(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDataNotification(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "ret":Z
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 456
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return v1

    .line 459
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePowerApply(ZZZ)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "on"    # Z
    .param p3, "time_flag"    # Z

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "ret":Z
    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enablePowerApply: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time_flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 478
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    return v1

    .line 481
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1, p2, p3}, Landroid/wipower/IWipower;->enablePowerApply(ZZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerLevel()Landroid/wipower/WipowerManager$PowerLevel;
    .locals 5

    .prologue
    .line 381
    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_UNKNOWN:Landroid/wipower/WipowerManager$PowerLevel;

    .line 383
    .local v2, "ret":Landroid/wipower/WipowerManager$PowerLevel;
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 384
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :goto_0
    return-object v2

    .line 386
    :cond_1
    const/4 v1, 0x0

    .line 388
    .local v1, "res":B
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getCurrentLimit()B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 392
    :goto_1
    if-nez v1, :cond_2

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    .line 394
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0
.end method

.method public getState()Landroid/wipower/WipowerManager$WipowerState;
    .locals 5

    .prologue
    .line 406
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    .line 407
    .local v2, "ret":Landroid/wipower/WipowerManager$WipowerState;
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_0

    .line 408
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_0
    return-object v2

    .line 410
    :cond_0
    const/4 v1, 0x0

    .line 412
    .local v1, "res":I
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 416
    :goto_1
    if-nez v1, :cond_1

    .line 417
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->ON:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0
.end method

.method public registerCallback(Landroid/wipower/WipowerManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 496
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    .line 497
    const-string v0, "WipowerManager"

    const-string v1, "registerCallback:Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public setPowerLevel(Landroid/wipower/WipowerManager$PowerLevel;)Z
    .locals 5
    .param p1, "powerlevel"    # Landroid/wipower/WipowerManager$PowerLevel;

    .prologue
    .line 350
    const/4 v2, 0x0

    .line 352
    .local v2, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    const-string v3, "WipowerManager"

    const-string v4, "Wipower not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v3, 0x0

    .line 370
    :goto_0
    return v3

    .line 357
    :cond_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 358
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v3, v2

    .line 370
    goto :goto_0

    .line 360
    :cond_1
    const/4 v1, 0x0

    .line 361
    .local v1, "level":B
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_3

    const/4 v1, 0x2

    .line 365
    :cond_2
    :goto_2
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3, v1}, Landroid/wipower/IWipower;->setCurrentLimit(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 362
    :cond_3
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    .line 363
    :cond_4
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startCharging()Z
    .locals 4

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, 0x0

    .line 305
    :goto_0
    return v2

    .line 295
    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    .line 296
    const-string v2, "WipowerManager"

    const-string v3, "startCharging: Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 305
    goto :goto_0

    .line 299
    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->startCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopCharging()Z
    .locals 4

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 321
    .local v1, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x0

    .line 336
    :goto_0
    return v2

    .line 326
    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    .line 327
    const-string v2, "WipowerManager"

    const-string v3, " Wipower Service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 336
    goto :goto_0

    .line 330
    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->stopCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterCallback(Landroid/wipower/WipowerManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 507
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    .line 508
    const-string v0, "WipowerManager"

    const-string v1, "Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method updatePowerApplyAlert(Landroid/wipower/WipowerManager$PowerApplyEvent;)V
    .locals 3
    .param p1, "alert"    # Landroid/wipower/WipowerManager$PowerApplyEvent;

    .prologue
    .line 131
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 132
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 135
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onPowerApply(Landroid/wipower/WipowerManager$PowerApplyEvent;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerAlert(B)V
    .locals 5
    .param p1, "alert"    # B

    .prologue
    .line 121
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 122
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 123
    .local v1, "n":I
    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateWipowerAlert() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 125
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerAlert(B)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerData(Landroid/wipower/WipowerDynamicParam;)V
    .locals 5
    .param p1, "pruData"    # Landroid/wipower/WipowerDynamicParam;

    .prologue
    .line 110
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 112
    .local v1, "n":I
    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateWipowerData() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerData(Landroid/wipower/WipowerDynamicParam;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerReady()V
    .locals 3

    .prologue
    .line 143
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 146
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 147
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2}, Landroid/wipower/WipowerManagerCallback;->onWipowerReady()V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerState(Landroid/wipower/WipowerManager$WipowerState;)V
    .locals 5
    .param p1, "state"    # Landroid/wipower/WipowerManager$WipowerState;

    .prologue
    .line 99
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 100
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    .local v1, "n":I
    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateAdapterState() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 103
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerStateChange(Landroid/wipower/WipowerManager$WipowerState;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method
