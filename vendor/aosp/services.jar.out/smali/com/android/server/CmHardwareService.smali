.class public Lcom/android/server/CmHardwareService;
.super Landroid/hardware/ICmHardwareService$Stub;
.source "CmHardwareService.java"

# interfaces
.implements Lorg/cyanogenmod/hardware/ThermalUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CmHardwareService$LegacyCmHardware;,
        Lcom/android/server/CmHardwareService$CmHardwareInterface;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurrentThermalState:I

.field private mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/IThermalListenerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/server/CmHardwareService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/hardware/ICmHardwareService$Stub;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/CmHardwareService;->getImpl(Landroid/content/Context;)Lcom/android/server/CmHardwareService$CmHardwareInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    .line 280
    invoke-direct {p0}, Lcom/android/server/CmHardwareService;->initialize()V

    .line 281
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getImpl(Landroid/content/Context;)Lcom/android/server/CmHardwareService$CmHardwareInterface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    new-instance v0, Lcom/android/server/CmHardwareService$LegacyCmHardware;

    invoke-direct {v0, p0}, Lcom/android/server/CmHardwareService$LegacyCmHardware;-><init>(Lcom/android/server/CmHardwareService;)V

    return-object v0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {p0}, Lorg/cyanogenmod/hardware/ThermalMonitor;->initialize(Lorg/cyanogenmod/hardware/ThermalUpdateCallback;)V

    .line 286
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/CmHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 288
    :cond_0
    return-void
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/server/CmHardwareService;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Display color calibration is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getDisplayColorCalibration()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Display gamma calibration is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getDisplayGammaCalibration(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Long term orbits is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getLtoDestination()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLtoDownloadInterval()J
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-wide/16 v0, 0x0

    .line 434
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getLtoDownloadInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Long term orbits is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getLtoSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumGammaControls()I
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getNumGammaControls()I

    move-result v0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Serial number is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedFeatures()I
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getSupportedFeatures()I

    move-result v0

    return v0
.end method

.method public getThermalState()I
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const v0, 0x8000

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget v0, p0, Lcom/android/server/CmHardwareService;->mCurrentThermalState:I

    .line 482
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Vibrator is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getVibratorIntensity()[I

    move-result-object v0

    goto :goto_0
.end method

.method public registerThermalListener(Landroid/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/hardware/IThermalListenerCallback;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const v0, 0x8000

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v0

    goto :goto_0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->set(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 4
    .param p1, "rgb"    # [I

    .prologue
    const/4 v0, 0x0

    .line 336
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Display color calibration is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    return v0

    .line 342
    :cond_0
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 343
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Invalid color calibration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->setDisplayColorCalibration([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 3
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->setDisplayGammaCalibration(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public setThermalState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/android/server/CmHardwareService;->mCurrentThermalState:I

    .line 462
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 463
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 464
    add-int/lit8 v0, v0, -0x1

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/hardware/IThermalListenerCallback;

    invoke-interface {v1, p1}, Landroid/hardware/IThermalListenerCallback;->onThermalChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    goto :goto_0

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 473
    return-void
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->setVibratorIntensity(I)Z

    move-result v0

    goto :goto_0
.end method

.method public unRegisterThermalListener(Landroid/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/hardware/IThermalListenerCallback;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const v0, 0x8000

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
