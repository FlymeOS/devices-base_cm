.class public final Landroid/hardware/CmHardwareManager;
.super Ljava/lang/Object;
.source "CmHardwareManager.java"


# static fields
.field private static final BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final COLOR_CALIBRATION_DEFAULT_INDEX:I = 0x3

.field public static final COLOR_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final COLOR_CALIBRATION_MAX_INDEX:I = 0x5

.field public static final COLOR_CALIBRATION_MIN_INDEX:I = 0x4

.field public static final COLOR_CALIBRATION_RED_INDEX:I = 0x0

.field public static final FEATURE_ADAPTIVE_BACKLIGHT:I = 0x1

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0x2

.field public static final FEATURE_DISPLAY_COLOR_CALIBRATION:I = 0x4

.field public static final FEATURE_DISPLAY_GAMMA_CALIBRATION:I = 0x8

.field public static final FEATURE_HIGH_TOUCH_SENSITIVITY:I = 0x10

.field public static final FEATURE_KEY_DISABLE:I = 0x20

.field public static final FEATURE_LONG_TERM_ORBITS:I = 0x40

.field public static final FEATURE_SERIAL_NUMBER:I = 0x80

.field public static final FEATURE_SUNLIGHT_ENHANCEMENT:I = 0x100

.field public static final FEATURE_TAP_TO_WAKE:I = 0x200

.field public static final FEATURE_THERMAL_MONITOR:I = 0x8000

.field public static final FEATURE_TOUCH_HOVERING:I = 0x800

.field public static final FEATURE_VIBRATOR:I = 0x400

.field public static final GAMMA_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final GAMMA_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final GAMMA_CALIBRATION_MAX_INDEX:I = 0x4

.field public static final GAMMA_CALIBRATION_MIN_INDEX:I = 0x3

.field public static final GAMMA_CALIBRATION_RED_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CmHardwareManager"

.field public static final VIBRATOR_DEFAULT_INDEX:I = 0x1

.field public static final VIBRATOR_INTENSITY_INDEX:I = 0x0

.field public static final VIBRATOR_MAX_INDEX:I = 0x3

.field public static final VIBRATOR_MIN_INDEX:I = 0x2

.field public static final VIBRATOR_WARNING_INDEX:I = 0x4


# instance fields
.field private final mService:Landroid/hardware/ICmHardwareService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/hardware/CmHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "cmhw"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICmHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICmHardwareService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    .line 117
    return-void
.end method

.method private getArrayValue([III)I
    .locals 1
    .param p1, "arr"    # [I
    .param p2, "idx"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 200
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 204
    .end local p3    # "defaultValue":I
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_1
    aget p3, p1, p2

    goto :goto_0
.end method

.method private getDisplayColorCalibrationArray()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 324
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-object v0

    .line 329
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->getDisplayColorCalibration()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDisplayGammaCalibrationArray(I)[I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 411
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 412
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    return-object v0

    .line 417
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1, p1}, Landroid/hardware/ICmHardwareService;->getDisplayGammaCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVibratorIntensityArray()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 230
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-object v0

    .line 235
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->getVibratorIntensity()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    sget-object v1, Landroid/hardware/CmHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_1

    .line 161
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1, p1}, Landroid/hardware/ICmHardwareService;->get(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 339
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    .line 340
    .local v0, "arr":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 341
    :cond_0
    const/4 v1, 0x0

    .line 343
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayColorCalibrationDefault()I
    .locals 3

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMax()I
    .locals 3

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMin()I
    .locals 3

    .prologue
    .line 357
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x3

    .line 445
    invoke-direct {p0, p1}, Landroid/hardware/CmHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    .line 446
    .local v0, "arr":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 447
    :cond_0
    const/4 v1, 0x0

    .line 449
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayGammaCalibrationMax()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    invoke-direct {p0, v2}, Landroid/hardware/CmHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibrationMin()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-direct {p0, v2}, Landroid/hardware/CmHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 510
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    return-object v0

    .line 515
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->getLtoDestination()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLtoDownloadInterval()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 525
    iget-object v2, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v2, :cond_0

    .line 526
    const-string v2, "CmHardwareManager"

    const-string/jumbo v3, "no cmhw service."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-wide v0

    .line 531
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v2}, Landroid/hardware/ICmHardwareService;->getLtoDownloadInterval()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 493
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 494
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return-object v0

    .line 499
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->getLtoSource()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNumGammaControls()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 427
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 428
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return v0

    .line 433
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->getNumGammaControls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 541
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 542
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_0
    return-object v0

    .line 547
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSupportedFeatures()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 124
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getThermalState()I
    .locals 1

    .prologue
    .line 575
    :try_start_0
    iget-object v0, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v0}, Landroid/hardware/ICmHardwareService;->getThermalState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 580
    :goto_0
    return v0

    .line 578
    :catch_0
    move-exception v0

    .line 580
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVibratorDefaultIntensity()I
    .locals 3

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorIntensity()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMaxIntensity()I
    .locals 3

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMinIntensity()I
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorWarningIntensity()I
    .locals 3

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/hardware/CmHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/CmHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/hardware/CmHardwareManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerThermalListener(Landroid/hardware/ThermalListenerCallback;)Z
    .locals 1
    .param p1, "thermalCallback"    # Landroid/hardware/ThermalListenerCallback;

    .prologue
    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 590
    iget-object v0, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v0, p1}, Landroid/hardware/ICmHardwareService;->registerThermalListener(Landroid/hardware/IThermalListenerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 594
    :goto_0
    return v0

    .line 592
    :catch_0
    move-exception v0

    .line 594
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 558
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 559
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return v0

    .line 564
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1}, Landroid/hardware/ICmHardwareService;->requireAdaptiveBacklightForSunlightEnhancement()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 183
    sget-object v1, Landroid/hardware/CmHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_1

    .line 188
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return v0

    .line 193
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1, p1, p2}, Landroid/hardware/ICmHardwareService;->set(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 3
    .param p1, "rgb"    # [I

    .prologue
    const/4 v0, 0x0

    .line 377
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 378
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return v0

    .line 383
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1, p1}, Landroid/hardware/ICmHardwareService;->setDisplayColorCalibration([I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 3
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    const/4 v0, 0x0

    .line 477
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 478
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_0
    return v0

    .line 483
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1, p1, p2}, Landroid/hardware/ICmHardwareService;->setDisplayGammaCalibration(I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-nez v1, :cond_0

    .line 286
    const-string v1, "CmHardwareManager"

    const-string/jumbo v2, "no cmhw service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return v0

    .line 291
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v1, p1}, Landroid/hardware/ICmHardwareService;->setVibratorIntensity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unRegisterThermalListener(Landroid/hardware/ThermalListenerCallback;)Z
    .locals 1
    .param p1, "thermalCallback"    # Landroid/hardware/ThermalListenerCallback;

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 604
    iget-object v0, p0, Landroid/hardware/CmHardwareManager;->mService:Landroid/hardware/ICmHardwareService;

    invoke-interface {v0, p1}, Landroid/hardware/ICmHardwareService;->unRegisterThermalListener(Landroid/hardware/IThermalListenerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 608
    :goto_0
    return v0

    .line 606
    :catch_0
    move-exception v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
