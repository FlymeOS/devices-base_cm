.class public Lcom/android/server/CmHardwareService;
.super Landroid/hardware/ICmHardwareService$Stub;
.source "CmHardwareService.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
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
    .line 265
    invoke-direct {p0}, Landroid/hardware/ICmHardwareService$Stub;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/CmHardwareService;->getImpl(Landroid/content/Context;)Lcom/android/server/CmHardwareService$CmHardwareInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    .line 268
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getImpl(Landroid/content/Context;)Lcom/android/server/CmHardwareService$CmHardwareInterface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    new-instance v0, Lcom/android/server/CmHardwareService$LegacyCmHardware;

    invoke-direct {v0, p0}, Lcom/android/server/CmHardwareService$LegacyCmHardware;-><init>(Lcom/android/server/CmHardwareService;)V

    return-object v0
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 271
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
    .line 283
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
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

    .line 287
    const/4 v0, 0x0

    .line 289
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

    .line 305
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Display color calibration is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
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

    .line 342
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Display gamma calibration is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
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

    .line 397
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Long term orbits is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
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
    .line 408
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-wide/16 v0, 0x0

    .line 414
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

    .line 386
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Long term orbits is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
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
    .line 331
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    .line 337
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

    .line 419
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Serial number is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
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
    .line 276
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getSupportedFeatures()I

    move-result v0

    return v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 364
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Vibrator is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->getVibratorIntensity()[I

    move-result-object v0

    goto :goto_0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, 0x0

    .line 436
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
    .line 294
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
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

    .line 298
    const/4 v0, 0x0

    .line 300
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

    .line 316
    iget-object v1, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Display color calibration is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return v0

    .line 322
    :cond_0
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 323
    sget-object v1, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v2, "Invalid color calibration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
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
    .line 353
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    .line 359
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->setDisplayGammaCalibration(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/server/CmHardwareService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    sget-object v0, Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;

    const-string v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/CmHardwareService;->mCmHwImpl:Lcom/android/server/CmHardwareService$CmHardwareInterface;

    invoke-interface {v0, p1}, Lcom/android/server/CmHardwareService$CmHardwareInterface;->setVibratorIntensity(I)Z

    move-result v0

    goto :goto_0
.end method
