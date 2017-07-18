.class public Lcyanogenmod/hardware/LiveDisplayManager;
.super Ljava/lang/Object;
.source "LiveDisplayManager.java"


# static fields
.field public static final ADJUSTMENT_CONTRAST:I = 0x3

.field public static final ADJUSTMENT_HUE:I = 0x0

.field public static final ADJUSTMENT_INTENSITY:I = 0x2

.field public static final ADJUSTMENT_SATURATION:I = 0x1

.field public static final FEATURE_AUTO_CONTRAST:I = 0xb

.field public static final FEATURE_CABC:I = 0xa

.field public static final FEATURE_COLOR_ADJUSTMENT:I = 0xd

.field public static final FEATURE_COLOR_BALANCE:I = 0x10

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0xc

.field public static final FEATURE_DISPLAY_MODES:I = 0xf

.field public static final FEATURE_FIRST:I = 0xa

.field public static final FEATURE_LAST:I = 0x11

.field public static final FEATURE_MANAGED_OUTDOOR_MODE:I = 0xe

.field public static final FEATURE_PICTURE_ADJUSTMENT:I = 0x11

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_DAY:I = 0x4

.field public static final MODE_FIRST:I = 0x0

.field public static final MODE_LAST:I = 0x4

.field public static final MODE_NIGHT:I = 0x1

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_OUTDOOR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"

.field private static sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

.field private static sService:Lcyanogenmod/hardware/ILiveDisplayService;


# instance fields
.field private final mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 147
    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    .line 151
    :goto_0
    invoke-static {}, Lcyanogenmod/hardware/LiveDisplayManager;->getService()Lcyanogenmod/hardware/ILiveDisplayService;

    move-result-object v2

    sput-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    const-string/jumbo v3, "org.cyanogenmod.livedisplay"

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :goto_1
    :try_start_0
    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    .line 162
    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    if-nez v2, :cond_2

    .line 163
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to get LiveDisplay configuration!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to fetch LiveDisplay configuration!"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iput-object p1, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 155
    :cond_1
    const-string/jumbo v2, "LiveDisplay"

    const-string/jumbo v3, "Unable to get LiveDisplayService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_2
    return-void
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    if-nez v0, :cond_0

    .line 200
    const-string/jumbo v0, "LiveDisplay"

    const-string/jumbo v1, "not connected to CMHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcyanogenmod/hardware/LiveDisplayManager;

    monitor-enter v1

    .line 176
    :try_start_0
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcyanogenmod/hardware/LiveDisplayManager;

    invoke-direct {v0, p0}, Lcyanogenmod/hardware/LiveDisplayManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;

    .line 179
    :cond_0
    sget-object v0, Lcyanogenmod/hardware/LiveDisplayManager;->sInstance:Lcyanogenmod/hardware/LiveDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getService()Lcyanogenmod/hardware/ILiveDisplayService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    return-object v1

    .line 187
    :cond_0
    const-string/jumbo v1, "cmlivedisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 188
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 189
    invoke-static {v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ILiveDisplayService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    .line 190
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    return-object v1

    .line 192
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getColorAdjustment()[F
    .locals 2

    .prologue
    .line 415
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ILiveDisplayService;->getColorAdjustment()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayManager;->mConfig:Lcyanogenmod/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 330
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getDayColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 2

    .prologue
    .line 478
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ILiveDisplayService;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 483
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getNightColorTemperature()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 357
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->getNightColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 2

    .prologue
    .line 449
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    sget-object v1, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ILiveDisplayService;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 454
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAutoContrastEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isAutoContrastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 385
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isAutomaticOutdoorModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isCABCEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isCABCEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isColorEnhancementEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ILiveDisplayService;->isColorEnhancementEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAutoContrastEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setAutoContrastEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 400
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setAutomaticOutdoorModeEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setCABCEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setCABCEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setColorAdjustment([F)Z
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    const/4 v1, 0x0

    .line 436
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setColorAdjustment([F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setColorEnhancementEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setColorEnhancementEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setDayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setDayColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setNightColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    const/4 v1, 0x0

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setNightColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 3
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    const/4 v1, 0x0

    .line 465
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcyanogenmod/hardware/LiveDisplayManager;->sService:Lcyanogenmod/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ILiveDisplayService;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
