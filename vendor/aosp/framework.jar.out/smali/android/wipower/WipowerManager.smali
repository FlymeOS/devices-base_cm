.class public final Landroid/wipower/WipowerManager;
.super Ljava/lang/Object;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/WipowerManager$PowerApplyEvent;,
        Landroid/wipower/WipowerManager$WipowerState;,
        Landroid/wipower/WipowerManager$PowerLevel;,
        Landroid/wipower/WipowerManager$WipowerAlert;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WipowerManager"

.field private static final VDBG:Z

.field private static mAlert:Landroid/wipower/WipowerManager$WipowerAlert;

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
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v3, Landroid/wipower/WipowerManager$1;

    invoke-direct {v3, p0}, Landroid/wipower/WipowerManager$1;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v3, p0, Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;

    .line 220
    new-instance v3, Landroid/wipower/WipowerManager$2;

    invoke-direct {v3, p0}, Landroid/wipower/WipowerManager$2;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v3, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    .line 266
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 269
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Landroid/wipower/IWipower;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 271
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 272
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    :cond_0
    const-string v3, "WipowerManager"

    const-string v4, "Could not bind to Wipower Service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "bindIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    const-string v3, "WipowerManager"

    const-string v4, "Bound to Wipower Service"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v3, Landroid/wipower/WipowerDynamicParam;

    invoke-direct {v3}, Landroid/wipower/WipowerDynamicParam;-><init>()V

    sput-object v3, Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    .line 283
    return-void

    .line 275
    :catch_0
    move-exception v2

    .line 276
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
    .line 247
    const-class v1, Landroid/wipower/WipowerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "WipowerManager"

    const-string v2, "Wipower not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    const/4 v0, 0x0

    .line 256
    :goto_0
    monitor-exit v1

    return-object v0

    .line 252
    :cond_0
    :try_start_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    if-nez v0, :cond_1

    .line 253
    const-string v0, "WipowerManager"

    const-string v2, "Instantiate Singleton"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Landroid/wipower/WipowerManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/wipower/WipowerManager;-><init>(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)V

    sput-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    .line 256
    :cond_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
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

    .line 287
    const-string/jumbo v2, "ro.bluetooth.a4wp"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 288
    const-string v1, "WipowerManager"

    const-string v2, "System.getProperty is true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return v0

    .line 291
    :cond_0
    const-string v0, "WipowerManager"

    const-string v2, "System.getProperty is false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 292
    goto :goto_0
.end method


# virtual methods
.method public enableAlertNotification(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "ret":Z
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 455
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return v1

    .line 458
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableAlert(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
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
    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "ret":Z
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 476
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return v1

    .line 479
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
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
    .line 495
    const/4 v1, 0x0

    .line 496
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

    const-string/jumbo v4, "time_flag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 498
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return v1

    .line 501
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1, p2, p3}, Landroid/wipower/IWipower;->enablePowerApply(ZZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerLevel()Landroid/wipower/WipowerManager$PowerLevel;
    .locals 5

    .prologue
    .line 401
    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_UNKNOWN:Landroid/wipower/WipowerManager$PowerLevel;

    .line 403
    .local v2, "ret":Landroid/wipower/WipowerManager$PowerLevel;
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 404
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    :goto_0
    return-object v2

    .line 406
    :cond_1
    const/4 v1, 0x0

    .line 408
    .local v1, "res":B
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getCurrentLimit()B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    :goto_1
    if-nez v1, :cond_2

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    .line 414
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0
.end method

.method public getState()Landroid/wipower/WipowerManager$WipowerState;
    .locals 5

    .prologue
    .line 426
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    .line 427
    .local v2, "ret":Landroid/wipower/WipowerManager$WipowerState;
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_0

    .line 428
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-object v2

    .line 430
    :cond_0
    const/4 v1, 0x0

    .line 432
    .local v1, "res":I
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :goto_1
    if-nez v1, :cond_1

    .line 437
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->ON:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0
.end method

.method public registerCallback(Landroid/wipower/WipowerManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 516
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    .line 517
    const-string v0, "WipowerManager"

    const-string/jumbo v1, "registerCallback:Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method public setPowerLevel(Landroid/wipower/WipowerManager$PowerLevel;)Z
    .locals 5
    .param p1, "powerlevel"    # Landroid/wipower/WipowerManager$PowerLevel;

    .prologue
    .line 370
    const/4 v2, 0x0

    .line 372
    .local v2, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    const-string v3, "WipowerManager"

    const-string v4, "Wipower not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v3, 0x0

    .line 390
    :goto_0
    return v3

    .line 377
    :cond_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 378
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v3, v2

    .line 390
    goto :goto_0

    .line 380
    :cond_1
    const/4 v1, 0x0

    .line 381
    .local v1, "level":B
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_3

    const/4 v1, 0x2

    .line 385
    :cond_2
    :goto_2
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3, v1}, Landroid/wipower/IWipower;->setCurrentLimit(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 382
    :cond_3
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    .line 383
    :cond_4
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startCharging()Z
    .locals 4

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v2, 0x0

    .line 325
    :goto_0
    return v2

    .line 315
    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    .line 316
    const-string v2, "WipowerManager"

    const-string/jumbo v3, "startCharging: Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 325
    goto :goto_0

    .line 319
    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->startCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopCharging()Z
    .locals 4

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 341
    .local v1, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v2, 0x0

    .line 356
    :goto_0
    return v2

    .line 346
    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    .line 347
    const-string v2, "WipowerManager"

    const-string v3, " Wipower Service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 356
    goto :goto_0

    .line 350
    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->stopCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
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
    .line 527
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    .line 528
    const-string v0, "WipowerManager"

    const-string v1, "Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method updatePowerApplyAlert(Landroid/wipower/WipowerManager$PowerApplyEvent;)V
    .locals 3
    .param p1, "alert"    # Landroid/wipower/WipowerManager$PowerApplyEvent;

    .prologue
    .line 148
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 149
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 152
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onPowerApply(Landroid/wipower/WipowerManager$PowerApplyEvent;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerAlert(Landroid/wipower/WipowerManager$WipowerAlert;)V
    .locals 5
    .param p1, "alert"    # Landroid/wipower/WipowerManager$WipowerAlert;

    .prologue
    .line 138
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 139
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 140
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

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 142
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerAlert(Landroid/wipower/WipowerManager$WipowerAlert;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerData(Landroid/wipower/WipowerDynamicParam;)V
    .locals 5
    .param p1, "pruData"    # Landroid/wipower/WipowerDynamicParam;

    .prologue
    .line 127
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 128
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 129
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

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 131
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerData(Landroid/wipower/WipowerDynamicParam;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerReady()V
    .locals 3

    .prologue
    .line 160
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 163
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 164
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2}, Landroid/wipower/WipowerManagerCallback;->onWipowerReady()V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerState(Landroid/wipower/WipowerManager$WipowerState;)V
    .locals 5
    .param p1, "state"    # Landroid/wipower/WipowerManager$WipowerState;

    .prologue
    .line 116
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
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

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 120
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerStateChange(Landroid/wipower/WipowerManager$WipowerState;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method
