.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SystemServer;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 326
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 327
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 328
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 187
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 308
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 314
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 315
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 322
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 317
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 303
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 213
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 218
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 228
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 233
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 234
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 243
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 247
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 251
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 255
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 258
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 261
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 264
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 267
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 278
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 279
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :catch_0
    move-exception v6

    .line 287
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 341
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 344
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 346
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 347
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 353
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 357
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 361
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 364
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 367
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 377
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 380
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 381
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 383
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 387
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 390
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 391
    return-void

    .line 371
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 378
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 401
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 404
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 405
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 411
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 412
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1421
    const/4 v4, 0x0

    .line 1422
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1423
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1426
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1429
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1430
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1432
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1434
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1435
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1436
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1445
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1438
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1439
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1442
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1443
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startNfcService(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1401
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1402
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_1

    .line 1403
    const-string v3, "SystemServer"

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    :try_start_0
    const-string v3, "android.hardware.nfc"

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1408
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1409
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.nfc"

    const-string v5, "com.android.nfc.NfcBootstrapService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1411
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1413
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SystemServer"

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 126

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 420
    .local v3, "context":Landroid/content/Context;
    const/16 v33, 0x0

    .line 421
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v50, 0x0

    .line 422
    .local v50, "contentService":Lcom/android/server/content/ContentService;
    const/16 v116, 0x0

    .line 423
    .local v116, "vibrator":Lcom/android/server/VibratorService;
    const/16 v35, 0x0

    .line 424
    .local v35, "alarm":Landroid/app/IAlarmManager;
    const/16 v93, 0x0

    .line 425
    .local v93, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 426
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 427
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v95, 0x0

    .line 428
    .local v95, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v46, 0x0

    .line 429
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v96, 0x0

    .line 430
    .local v96, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v106, 0x0

    .line 431
    .local v106, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v125, 0x0

    .line 432
    .local v125, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 433
    .local v41, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v115, 0x0

    .line 434
    .local v115, "usb":Lcom/android/server/usb/UsbService;
    const/16 v103, 0x0

    .line 435
    .local v103, "serial":Lcom/android/server/SerialService;
    const/16 v99, 0x0

    .line 436
    .local v99, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v43, 0x0

    .line 437
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v78, 0x0

    .line 438
    .local v78, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v109, 0x0

    .line 439
    .local v109, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v48, 0x0

    .line 440
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v39, 0x0

    .line 441
    .local v39, "audioService":Landroid/media/AudioService;
    const/16 v92, 0x0

    .line 443
    .local v92, "mmsService":Lcom/android/server/MmsServiceBroker;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 444
    .local v65, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 445
    .local v61, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 446
    .local v59, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    .line 447
    .local v67, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 448
    .local v60, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 449
    .local v66, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 450
    .local v64, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 451
    .local v62, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 452
    .local v63, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v80

    .line 453
    .local v80, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v54

    .line 455
    .local v54, "digitalPenCapable":Z
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 456
    .local v58, "disableAtlas":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v71

    .line 460
    .local v71, "externalServices":[Ljava/lang/String;
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 463
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 468
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v110, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v110

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4c

    .line 470
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v110, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 472
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v34, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 482
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4d

    move-object/from16 v33, v34

    .line 487
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v50

    .line 491
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 494
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v117, Lcom/android/server/VibratorService;

    move-object/from16 v0, v117

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 496
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .local v117, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v4, "vibrator"

    move-object/from16 v0, v117

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 498
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v49, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4e

    .line 500
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v49, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v4, "consumer_ir"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 503
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v35

    .line 506
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v121

    .line 508
    .local v121, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v121

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 510
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v79, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4f

    .line 513
    .end local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v79, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_7
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v79

    invoke-static {v3, v0, v4, v5, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v125

    .line 517
    const-string v4, "window"

    move-object/from16 v0, v125

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 518
    const-string v4, "input"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v125

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 522
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 523
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/input/InputManagerService;->start()V

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 531
    if-eqz v80, :cond_29

    .line 532
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_3
    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v109, v110

    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v78, v79

    .end local v79    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v116, v117

    .line 550
    .end local v117    # "vibrator":Lcom/android/server/VibratorService;
    .end local v121    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    :goto_4
    const/16 v107, 0x0

    .line 551
    .local v107, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v101, 0x0

    .line 552
    .local v101, "notification":Landroid/app/INotificationManager;
    const/16 v76, 0x0

    .line 553
    .local v76, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v119, 0x0

    .line 554
    .local v119, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v85, 0x0

    .line 555
    .local v85, "location":Lcom/android/server/LocationManagerService;
    const/16 v51, 0x0

    .line 556
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v113, 0x0

    .line 557
    .local v113, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v87, 0x0

    .line 558
    .local v87, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v37, 0x0

    .line 559
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v89, 0x0

    .line 560
    .local v89, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v69, 0x0

    .line 561
    .local v69, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    const/16 v73, 0x0

    .line 562
    .local v73, "gestureService":Lcom/android/server/gesture/GestureService;
    const/16 v111, 0x0

    .line 563
    .local v111, "themeService":Lcom/android/server/ThemeService;
    const/16 v82, 0x0

    .line 566
    .local v82, "killSwitchService":Lcom/android/server/KillSwitchService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 570
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v77, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v77

    move-object/from16 v1, v125

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 572
    .end local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v77, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_9
    const-string v4, "input_method"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4b

    move-object/from16 v76, v77

    .line 578
    .end local v77    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 588
    :cond_0
    :goto_6
    :try_start_b
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 593
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 594
    if-nez v65, :cond_1

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 601
    :try_start_c
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v94, Lcom/android/server/MountService;

    move-object/from16 v0, v94

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 603
    .end local v93    # "mountService":Lcom/android/server/MountService;
    .local v94, "mountService":Lcom/android/server/MountService;
    :try_start_d
    const-string v4, "mount"

    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4a

    move-object/from16 v93, v94

    .line 611
    .end local v94    # "mountService":Lcom/android/server/MountService;
    .restart local v93    # "mountService":Lcom/android/server/MountService;
    :cond_1
    :goto_8
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 617
    :goto_9
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040572

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_49

    .line 624
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    .line 625
    if-nez v64, :cond_3

    .line 627
    :try_start_10
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v88, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 629
    .end local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v88, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_11
    const-string v4, "lock_settings"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_48

    move-object/from16 v87, v88

    .line 634
    .end local v88    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_b
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 640
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 643
    :cond_3
    if-nez v66, :cond_4

    .line 645
    :try_start_12
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v108, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v125

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 647
    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v108, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_13
    const-string v4, "statusbar"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_47

    move-object/from16 v107, v108

    .line 653
    .end local v108    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_c
    if-nez v64, :cond_5

    .line 655
    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 663
    :cond_5
    :goto_d
    if-nez v64, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.camera.flash"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 666
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "TorchService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v4, "torch"

    new-instance v5, Lcom/android/server/TorchService;

    invoke-direct {v5, v3}, Lcom/android/server/TorchService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .line 673
    :cond_6
    :goto_e
    if-nez v62, :cond_7

    .line 675
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 677
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 683
    :cond_7
    :goto_f
    if-nez v64, :cond_8

    .line 685
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v114, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    .line 687
    .end local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v114, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_18
    const-string v4, "textservices"

    move-object/from16 v0, v114

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_46

    move-object/from16 v113, v114

    .line 693
    .end local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_8
    :goto_10
    if-nez v62, :cond_34

    .line 695
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v97, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    .line 697
    .end local v96    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v97, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1a
    const-string v4, "network_score"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_45

    move-object/from16 v96, v97

    .line 703
    .end local v97    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v96    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v98, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v98

    move-object/from16 v1, v35

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    .line 705
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v98, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1c
    const-string v4, "netstats"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_44

    move-object/from16 v6, v98

    .line 711
    .end local v98    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    .line 716
    .end local v95    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1e
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_43

    .line 721
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 733
    :cond_9
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v47, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v47

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_11

    .line 736
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v47, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_20
    const-string v4, "connectivity"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 737
    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 738
    move-object/from16 v0, v47

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_42

    move-object/from16 v46, v47

    .line 744
    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v106

    .line 746
    const-string v4, "servicediscovery"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_12

    .line 752
    :goto_15
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "DPM Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-static {v3}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_13

    .line 759
    :goto_16
    if-nez v64, :cond_a

    .line 761
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_14

    .line 774
    :cond_a
    :goto_17
    if-eqz v93, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_b

    .line 775
    invoke-virtual/range {v93 .. v93}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 779
    :cond_b
    if-eqz v33, :cond_c

    .line 780
    :try_start_24
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_15

    .line 786
    :cond_c
    :goto_18
    if-eqz v50, :cond_d

    .line 787
    :try_start_25
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_16

    .line 792
    :cond_d
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 793
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v101

    .line 795
    move-object/from16 v0, v101

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 799
    if-nez v60, :cond_e

    .line 801
    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v86, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_17

    .line 803
    .end local v85    # "location":Lcom/android/server/LocationManagerService;
    .local v86, "location":Lcom/android/server/LocationManagerService;
    :try_start_27
    const-string v4, "location"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_41

    move-object/from16 v85, v86

    .line 809
    .end local v86    # "location":Lcom/android/server/LocationManagerService;
    .restart local v85    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v52, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v52

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_18

    .line 811
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v52, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_29
    const-string v4, "country_detector"

    move-object/from16 v0, v52

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_40

    move-object/from16 v51, v52

    .line 817
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1b
    if-nez v64, :cond_f

    .line 819
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_19

    .line 828
    :cond_f
    :goto_1c
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1a

    .line 835
    :goto_1d
    if-nez v64, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 838
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v120, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v120

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1b

    .line 840
    .end local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v120, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2d
    const-string v4, "wallpaper"

    move-object/from16 v0, v120

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_3f

    move-object/from16 v119, v120

    .line 846
    .end local v120    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1e
    if-nez v61, :cond_11

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 848
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v40, Landroid/media/AudioService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1c

    .line 850
    .end local v39    # "audioService":Landroid/media/AudioService;
    .local v40, "audioService":Landroid/media/AudioService;
    :try_start_2f
    const-string v4, "audio"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_3e

    move-object/from16 v39, v40

    .line 856
    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    :cond_11
    :goto_1f
    if-nez v64, :cond_12

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 860
    :cond_12
    if-nez v61, :cond_13

    .line 862
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v78

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v78

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1d

    .line 871
    :cond_13
    :goto_20
    if-nez v64, :cond_16

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 876
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 880
    :cond_15
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v104, Lcom/android/server/SerialService;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1e

    .line 883
    .end local v103    # "serial":Lcom/android/server/SerialService;
    .local v104, "serial":Lcom/android/server/SerialService;
    :try_start_32
    const-string v4, "serial"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_3d

    move-object/from16 v103, v104

    .line 889
    .end local v104    # "serial":Lcom/android/server/SerialService;
    .restart local v103    # "serial":Lcom/android/server/SerialService;
    :cond_16
    :goto_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 895
    if-nez v64, :cond_19

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 904
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 910
    :cond_19
    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1f

    .line 921
    :goto_22
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_20

    .line 928
    :goto_23
    if-nez v62, :cond_1a

    if-nez v63, :cond_1a

    .line 930
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v100, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v100

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_21

    .end local v99    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v100, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v99, v100

    .line 937
    .end local v100    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v99    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_24
    if-nez v61, :cond_1b

    .line 939
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v44, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_22

    .line 941
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v44, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_37
    const-string v4, "commontime_management"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_3c

    move-object/from16 v43, v44

    .line 947
    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1b
    :goto_25
    if-nez v62, :cond_1c

    .line 949
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_23

    .line 956
    :cond_1c
    :goto_26
    if-nez v64, :cond_1d

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 961
    :cond_1d
    if-nez v64, :cond_1e

    if-nez v58, :cond_1e

    .line 963
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v38, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_24

    .line 965
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v38, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3a
    const-string v4, "assetatlas"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3b

    move-object/from16 v37, v38

    .line 971
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1e
    :goto_27
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 974
    :try_start_3b
    const-string v4, "SystemServer"

    const-string v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-instance v74, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v74

    move-object/from16 v1, v78

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_25

    .line 976
    .end local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v74, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_3c
    const-string v4, "gesture"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_3a

    move-object/from16 v73, v74

    .line 982
    .end local v74    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_1f
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 986
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 994
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 998
    :cond_22
    if-nez v64, :cond_23

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_23

    .line 1000
    :try_start_3d
    const-string v4, "SystemServer"

    const-string v5, "Theme Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    new-instance v112, Lcom/android/server/ThemeService;

    move-object/from16 v0, v112

    invoke-direct {v0, v3}, Lcom/android/server/ThemeService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_26

    .line 1002
    .end local v111    # "themeService":Lcom/android/server/ThemeService;
    .local v112, "themeService":Lcom/android/server/ThemeService;
    :try_start_3e
    const-string v4, "themes"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_39

    move-object/from16 v111, v112

    .line 1009
    .end local v112    # "themeService":Lcom/android/server/ThemeService;
    .restart local v111    # "themeService":Lcom/android/server/ThemeService;
    :cond_23
    :goto_29
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "KillSwitch Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v83, Lcom/android/server/KillSwitchService;

    move-object/from16 v0, v83

    invoke-direct {v0, v3}, Lcom/android/server/KillSwitchService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_27

    .line 1011
    .end local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .local v83, "killSwitchService":Lcom/android/server/KillSwitchService;
    :try_start_40
    const-string v4, "killswitch"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_38

    move-object/from16 v82, v83

    .line 1016
    .end local v83    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    :goto_2a
    if-nez v64, :cond_24

    .line 1018
    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v90, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v90

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 1020
    .end local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v90, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_42
    const-string v4, "media_router"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_37

    move-object/from16 v89, v90

    .line 1025
    .end local v90    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1030
    :try_start_43
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 1038
    :cond_24
    :goto_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1040
    const-string v4, "ro.bluetooth.wipower"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v81

    .line 1042
    .local v81, "isWipowerEnabled":Z
    if-eqz v81, :cond_2d

    .line 1044
    :try_start_44
    const-string v32, "wbc_service"

    .line 1045
    .local v32, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v4, "SystemServer"

    const-string v5, "WipowerBatteryControl Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v123, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v123

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1050
    .local v123, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v123

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v122

    .line 1051
    .local v122, "wbcClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v122

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v53

    .line 1052
    .local v53, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v124

    .line 1053
    .local v124, "wbcObject":Ljava/lang/Object;
    const-string v4, "SystemServer"

    const-string v5, "Successfully loaded WbcService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v4, "wbc_service"

    check-cast v124, Landroid/os/IBinder;

    .end local v124    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v124

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .line 1062
    .end local v32    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v122    # "wbcClass":Ljava/lang/Class;
    .end local v123    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_2d
    if-eqz v54, :cond_25

    .line 1064
    :try_start_45
    const-string v4, "SystemServer"

    const-string v5, "Digital Pen Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    new-instance v56, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1068
    .local v56, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    .line 1070
    .local v55, "digitalPenClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v53

    .line 1071
    .restart local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    .line 1072
    .local v57, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v4, "SystemServer"

    const-string v5, "Successfully loaded DigitalPenService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-string v4, "DigitalPen"

    check-cast v57, Landroid/os/IBinder;

    .end local v57    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v57

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 1080
    .end local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v55    # "digitalPenClass":Ljava/lang/Class;
    .end local v56    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_25
    :goto_2e
    :try_start_46
    const-string v4, "SystemServer"

    const-string v5, "EdgeGesture service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v70, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v70

    move-object/from16 v1, v78

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2c

    .line 1082
    .end local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v70, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :try_start_47
    const-string v4, "edgegestureservice"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_36

    move-object/from16 v69, v70

    .line 1088
    .end local v70    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v81    # "isWipowerEnabled":Z
    .restart local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :goto_2f
    if-nez v64, :cond_26

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1093
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_port"

    const-string v8, "service.adb.tcp.port"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_port"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    new-instance v9, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1103
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v102

    .line 1104
    .local v102, "safeMode":Z
    if-eqz v102, :cond_2e

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1107
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1114
    :goto_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v92

    .end local v92    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v92, Lcom/android/server/MmsServiceBroker;

    .line 1117
    .restart local v92    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v36, v71

    .local v36, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v84, v0

    .local v84, "len$":I
    const/16 v75, 0x0

    .local v75, "i$":I
    :goto_31
    move/from16 v0, v75

    move/from16 v1, v84

    if-ge v0, v1, :cond_2f

    aget-object v105, v36, v75

    .line 1119
    .local v105, "service":Ljava/lang/String;
    :try_start_48
    const-string v4, "SystemServer"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2d

    .line 1117
    :goto_32
    add-int/lit8 v75, v75, 0x1

    goto :goto_31

    .line 483
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "arr$":[Ljava/lang/String;
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v75    # "i$":I
    .end local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .end local v84    # "len$":I
    .end local v85    # "location":Lcom/android/server/LocationManagerService;
    .end local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v101    # "notification":Landroid/app/INotificationManager;
    .end local v102    # "safeMode":Z
    .end local v105    # "service":Ljava/lang/String;
    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "themeService":Lcom/android/server/ThemeService;
    .end local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v95    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v68

    .line 484
    .local v68, "e":Ljava/lang/Throwable;
    :goto_33
    :try_start_49
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    goto/16 :goto_0

    .line 545
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v68

    move-object/from16 v109, v110

    .line 546
    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v68, "e":Ljava/lang/RuntimeException;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_34
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 488
    .end local v68    # "e":Ljava/lang/RuntimeException;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_27
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 514
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v117    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v121    # "watchdog":Lcom/android/server/Watchdog;
    :cond_28
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 533
    :cond_29
    :try_start_4a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 534
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 545
    :catch_2
    move-exception v68

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v109, v110

    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v78, v79

    .end local v79    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v116, v117

    .end local v117    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_34

    .line 535
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v117    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 537
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 538
    :cond_2b
    if-eqz v59, :cond_2c

    .line 539
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 541
    :cond_2c
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v42, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_2

    .line 543
    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v42, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_4b
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_50

    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_3

    .line 573
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v79    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v117    # "vibrator":Lcom/android/server/VibratorService;
    .end local v121    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v85    # "location":Lcom/android/server/LocationManagerService;
    .restart local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v101    # "notification":Landroid/app/INotificationManager;
    .restart local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "themeService":Lcom/android/server/ThemeService;
    .restart local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v68

    .line 574
    .local v68, "e":Ljava/lang/Throwable;
    :goto_35
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 581
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v68

    .line 582
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 589
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v68

    .line 590
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 604
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v68

    .line 605
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 612
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v68

    .line 613
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 630
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v68

    .line 631
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 648
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v68

    .line 649
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 658
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v68

    .line 659
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 668
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v68

    .line 669
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Torch Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 678
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v68

    .line 679
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 688
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v68

    .line 689
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 698
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v68

    .line 699
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 706
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v68

    .line 707
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 717
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v68

    move-object/from16 v2, v95

    .line 718
    .end local v95    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 739
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v68

    .line 740
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 748
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v68

    .line 749
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 754
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v68

    .line 755
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 764
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v68

    .line 765
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 781
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v68

    .line 782
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 788
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v68

    .line 789
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 804
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v68

    .line 805
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 812
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v68

    .line 813
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 822
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v68

    .line 823
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 831
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v68

    .line 832
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 841
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v68

    .line 842
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 851
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v68

    .line 852
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 866
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v68

    .line 867
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 884
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v68

    .line 885
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 912
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v68

    .line 913
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 924
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v68

    .line 925
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 932
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v68

    .line 933
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 942
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v68

    .line 943
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 951
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v68

    .line 952
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 966
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v68

    .line 967
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 977
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v68

    .line 978
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1003
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v68

    .line 1004
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting Theme Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1012
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v68

    .line 1013
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting KillSwitch Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1021
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v68

    .line 1022
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1032
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v68

    .line 1033
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1055
    .end local v68    # "e":Ljava/lang/Throwable;
    .restart local v81    # "isWipowerEnabled":Z
    :catch_2a
    move-exception v68

    .line 1056
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1059
    .end local v68    # "e":Ljava/lang/Throwable;
    :cond_2d
    const-string v4, "SystemServer"

    const-string v5, "Wipower not supported"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1074
    :catch_2b
    move-exception v68

    .line 1075
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1083
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v68

    .line 1084
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "SystemServer"

    const-string v5, "Failure starting EdgeGesture service"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1110
    .end local v68    # "e":Ljava/lang/Throwable;
    .end local v81    # "isWipowerEnabled":Z
    .restart local v102    # "safeMode":Z
    :cond_2e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_30

    .line 1121
    .restart local v36    # "arr$":[Ljava/lang/String;
    .restart local v75    # "i$":I
    .restart local v84    # "len$":I
    .restart local v105    # "service":Ljava/lang/String;
    :catch_2d
    move-exception v68

    .line 1122
    .restart local v68    # "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1129
    .end local v68    # "e":Ljava/lang/Throwable;
    .end local v105    # "service":Ljava/lang/String;
    :cond_2f
    :try_start_4c
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2e

    .line 1134
    :goto_4a
    if-eqz v87, :cond_30

    .line 1136
    :try_start_4d
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2f

    .line 1143
    :cond_30
    :goto_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1148
    :try_start_4e
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    .line 1153
    :goto_4c
    if-eqz v102, :cond_31

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1160
    :cond_31
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    .line 1161
    .local v45, "config":Landroid/content/res/Configuration;
    new-instance v91, Landroid/util/DisplayMetrics;

    invoke-direct/range {v91 .. v91}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1162
    .local v91, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/view/WindowManager;

    .line 1163
    .local v118, "w":Landroid/view/WindowManager;
    invoke-interface/range {v118 .. v118}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v91

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1164
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v91

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1168
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_31

    .line 1174
    :goto_4d
    :try_start_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_32

    .line 1181
    :goto_4e
    :try_start_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v102

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_33

    .line 1186
    :goto_4f
    if-eqz v69, :cond_32

    .line 1188
    :try_start_52
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_34

    .line 1194
    :cond_32
    :goto_50
    if-eqz v73, :cond_33

    .line 1196
    :try_start_53
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_35

    .line 1202
    :cond_33
    :goto_51
    new-instance v72, Landroid/content/IntentFilter;

    invoke-direct/range {v72 .. v72}, Landroid/content/IntentFilter;-><init>()V

    .line 1203
    .local v72, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.tmobile.intent.action.APP_FAILURE"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    const-string v4, "com.tmobile.intent.action.APP_FAILURE_RESET"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1205
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1206
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1207
    const-string v4, "org.cyanogenmod.intent.action.THEME_CHANGED"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1208
    const-string v4, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1209
    const-string v4, "package"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1210
    new-instance v4, Lcom/android/server/AppsFailureReceiver;

    invoke-direct {v4}, Lcom/android/server/AppsFailureReceiver;-><init>()V

    move-object/from16 v0, v72

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1213
    move-object/from16 v11, v93

    .line 1214
    .local v11, "mountServiceF":Lcom/android/server/MountService;
    move-object v13, v7

    .line 1215
    .local v13, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v14, v6

    .line 1216
    .local v14, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v15, v2

    .line 1217
    .local v15, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v16, v46

    .line 1218
    .local v16, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v12, v96

    .line 1219
    .local v12, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v119

    .line 1220
    .local v18, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v19, v76

    .line 1221
    .local v19, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v21, v85

    .line 1222
    .local v21, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v22, v51

    .line 1223
    .local v22, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v23, v99

    .line 1224
    .local v23, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v24, v43

    .line 1225
    .local v24, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v25, v113

    .line 1226
    .local v25, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v20, v107

    .line 1227
    .local v20, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v26, v37

    .line 1228
    .local v26, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v27, v78

    .line 1229
    .local v27, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v28, v109

    .line 1230
    .local v28, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v29, v89

    .line 1231
    .local v29, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v39

    .line 1232
    .local v17, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v30, v92

    .line 1233
    .local v30, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v31, v111

    .line 1240
    .local v31, "themeServiceF":Lcom/android/server/ThemeService;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v31}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/ThemeService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1390
    return-void

    .line 1130
    .end local v11    # "mountServiceF":Lcom/android/server/MountService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Landroid/media/AudioService;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v31    # "themeServiceF":Lcom/android/server/ThemeService;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v72    # "filter":Landroid/content/IntentFilter;
    .end local v91    # "metrics":Landroid/util/DisplayMetrics;
    .end local v118    # "w":Landroid/view/WindowManager;
    :catch_2e
    move-exception v68

    .line 1131
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1137
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v68

    .line 1138
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1149
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v68

    .line 1150
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1169
    .end local v68    # "e":Ljava/lang/Throwable;
    .restart local v45    # "config":Landroid/content/res/Configuration;
    .restart local v91    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v118    # "w":Landroid/view/WindowManager;
    :catch_31
    move-exception v68

    .line 1170
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1175
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v68

    .line 1176
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1182
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v68

    .line 1183
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1189
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v68

    .line 1190
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1197
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v68

    .line 1198
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1083
    .end local v36    # "arr$":[Ljava/lang/String;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v68    # "e":Ljava/lang/Throwable;
    .end local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v75    # "i$":I
    .end local v84    # "len$":I
    .end local v91    # "metrics":Landroid/util/DisplayMetrics;
    .end local v102    # "safeMode":Z
    .end local v118    # "w":Landroid/view/WindowManager;
    .restart local v70    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v81    # "isWipowerEnabled":Z
    :catch_36
    move-exception v68

    move-object/from16 v69, v70

    .end local v70    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    goto/16 :goto_49

    .line 1021
    .end local v81    # "isWipowerEnabled":Z
    .end local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v90    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_37
    move-exception v68

    move-object/from16 v89, v90

    .end local v90    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_48

    .line 1012
    .end local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v83    # "killSwitchService":Lcom/android/server/KillSwitchService;
    :catch_38
    move-exception v68

    move-object/from16 v82, v83

    .end local v83    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    goto/16 :goto_47

    .line 1003
    .end local v111    # "themeService":Lcom/android/server/ThemeService;
    .restart local v112    # "themeService":Lcom/android/server/ThemeService;
    :catch_39
    move-exception v68

    move-object/from16 v111, v112

    .end local v112    # "themeService":Lcom/android/server/ThemeService;
    .restart local v111    # "themeService":Lcom/android/server/ThemeService;
    goto/16 :goto_46

    .line 977
    .end local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v74    # "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_3a
    move-exception v68

    move-object/from16 v73, v74

    .end local v74    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_45

    .line 966
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_3b
    move-exception v68

    move-object/from16 v37, v38

    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_44

    .line 942
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3c
    move-exception v68

    move-object/from16 v43, v44

    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_43

    .line 884
    .end local v103    # "serial":Lcom/android/server/SerialService;
    .restart local v104    # "serial":Lcom/android/server/SerialService;
    :catch_3d
    move-exception v68

    move-object/from16 v103, v104

    .end local v104    # "serial":Lcom/android/server/SerialService;
    .restart local v103    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_42

    .line 851
    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v40    # "audioService":Landroid/media/AudioService;
    :catch_3e
    move-exception v68

    move-object/from16 v39, v40

    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_41

    .line 841
    .end local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v120    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3f
    move-exception v68

    move-object/from16 v119, v120

    .end local v120    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_40

    .line 812
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_40
    move-exception v68

    move-object/from16 v51, v52

    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3f

    .line 804
    .end local v85    # "location":Lcom/android/server/LocationManagerService;
    .restart local v86    # "location":Lcom/android/server/LocationManagerService;
    :catch_41
    move-exception v68

    move-object/from16 v85, v86

    .end local v86    # "location":Lcom/android/server/LocationManagerService;
    .restart local v85    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3e

    .line 739
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_42
    move-exception v68

    move-object/from16 v46, v47

    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3d

    .line 717
    :catch_43
    move-exception v68

    goto/16 :goto_3c

    .line 706
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v95    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v98    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_44
    move-exception v68

    move-object/from16 v6, v98

    .end local v98    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .line 698
    .end local v96    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v97    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_45
    move-exception v68

    move-object/from16 v96, v97

    .end local v97    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v96    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3a

    .line 688
    .end local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_46
    move-exception v68

    move-object/from16 v113, v114

    .end local v114    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_39

    .line 648
    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v108    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_47
    move-exception v68

    move-object/from16 v107, v108

    .end local v108    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_38

    .line 630
    .end local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v88    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_48
    move-exception v68

    move-object/from16 v87, v88

    .end local v88    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_37

    .line 621
    :catch_49
    move-exception v4

    goto/16 :goto_a

    .line 604
    .end local v93    # "mountService":Lcom/android/server/MountService;
    .restart local v94    # "mountService":Lcom/android/server/MountService;
    :catch_4a
    move-exception v68

    move-object/from16 v93, v94

    .end local v94    # "mountService":Lcom/android/server/MountService;
    .restart local v93    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_36

    .line 573
    .end local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v77    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_4b
    move-exception v68

    move-object/from16 v76, v77

    .end local v77    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_35

    .line 545
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .end local v85    # "location":Lcom/android/server/LocationManagerService;
    .end local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v101    # "notification":Landroid/app/INotificationManager;
    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v111    # "themeService":Lcom/android/server/ThemeService;
    .end local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4c
    move-exception v68

    goto/16 :goto_34

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4d
    move-exception v68

    move-object/from16 v109, v110

    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v117    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4e
    move-exception v68

    move-object/from16 v109, v110

    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v117    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4f
    move-exception v68

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v109, v110

    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v116    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v117    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v121    # "watchdog":Lcom/android/server/Watchdog;
    :catch_50
    move-exception v68

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v109, v110

    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v78, v79

    .end local v79    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v78    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v116, v117

    .end local v117    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .line 483
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v121    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_51
    move-exception v68

    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_33

    .end local v110    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v73    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v76    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v82    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v85    # "location":Lcom/android/server/LocationManagerService;
    .restart local v87    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v89    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v101    # "notification":Landroid/app/INotificationManager;
    .restart local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "themeService":Lcom/android/server/ThemeService;
    .restart local v113    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v119    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_34
    move-object/from16 v2, v95

    .end local v95    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_16

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v95    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_35
    move-object/from16 v2, v95

    .end local v95    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2f
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1394
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1397
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1398
    return-void
.end method
