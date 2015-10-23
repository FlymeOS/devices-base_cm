.class Lcom/android/server/CmHardwareService$LegacyCmHardware;
.super Ljava/lang/Object;
.source "CmHardwareService.java"

# interfaces
.implements Lcom/android/server/CmHardwareService$CmHardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CmHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyCmHardware"
.end annotation


# instance fields
.field private mSupportedFeatures:I

.field final synthetic this$0:Lcom/android/server/CmHardwareService;


# direct methods
.method public constructor <init>(Lcom/android/server/CmHardwareService;)V
    .locals 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->this$0:Lcom/android/server/CmHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 84
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 86
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 88
    :cond_1
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 90
    :cond_2
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 92
    :cond_3
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 94
    :cond_4
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 96
    :cond_5
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 98
    :cond_6
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 100
    :cond_7
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 101
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 102
    :cond_8
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 104
    :cond_9
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 106
    :cond_a
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 108
    :cond_b
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 109
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    .line 110
    :cond_c
    return-void
.end method

.method private rgbToString([I)Ljava/lang/String;
    .locals 2
    .param p1, "rgb"    # [I

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 163
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v3

    .line 176
    :cond_1
    :goto_0
    return-object v1

    .line 166
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "strArray":[Ljava/lang/String;
    :try_start_0
    array-length v4, v2

    new-array v1, v4, [I

    .line 169
    .local v1, "intArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 170
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "i":I
    .end local v1    # "intArray":[I
    :catch_0
    move-exception v4

    move-object v1, v3

    .line 176
    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 117
    sparse-switch p1, :sswitch_data_0

    .line 135
    # getter for: Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CmHardwareService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 119
    :sswitch_0
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 121
    :sswitch_1
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 123
    :sswitch_2
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 125
    :sswitch_3
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isActive()Z

    move-result v0

    goto :goto_0

    .line 127
    :sswitch_4
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 129
    :sswitch_5
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 131
    :sswitch_6
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 133
    :sswitch_7
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
        0x8000 -> :sswitch_7
    .end sparse-switch
.end method

.method public getDisplayColorCalibration()[I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-direct {p0, v2, v3}, Lcom/android/server/CmHardwareService$LegacyCmHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 191
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 192
    :cond_0
    # getter for: Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CmHardwareService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid color calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 195
    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 196
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 197
    aget v2, v1, v5

    aput v2, v0, v5

    .line 198
    aget v2, v1, v6

    aput v2, v0, v6

    .line 199
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getDefValue()I

    move-result v2

    aput v2, v0, v7

    .line 201
    const/4 v2, 0x4

    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v3

    aput v3, v0, v2

    .line 203
    const/4 v2, 0x5

    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v3

    aput v3, v0, v2

    goto :goto_0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 8
    .param p1, "idx"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-direct {p0, v2, v3}, Lcom/android/server/CmHardwareService$LegacyCmHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 218
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 219
    :cond_0
    # getter for: Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CmHardwareService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid gamma calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 222
    :cond_1
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 223
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 224
    aget v2, v1, v5

    aput v2, v0, v5

    .line 225
    aget v2, v1, v6

    aput v2, v0, v6

    .line 226
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMinValue(I)I

    move-result v2

    aput v2, v0, v7

    .line 228
    const/4 v2, 0x4

    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMaxValue(I)I

    move-result v3

    aput v3, v0, v2

    goto :goto_0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDestinationLocation()Ljava/io/File;

    move-result-object v0

    .line 257
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/CmHardwareService$LegacyCmHardware;->mSupportedFeatures:I

    return v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    .line 238
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 239
    .local v0, "vibrator":[I
    const/4 v1, 0x0

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getCurIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 240
    const/4 v1, 0x1

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 241
    const/4 v1, 0x2

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 242
    const/4 v1, 0x3

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 243
    const/4 v1, 0x4

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v2

    aput v2, v0, v1

    .line 244
    return-object v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 141
    sparse-switch p1, :sswitch_data_0

    .line 157
    # getter for: Lcom/android/server/CmHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CmHardwareService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 143
    :sswitch_0
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 145
    :sswitch_1
    invoke-static {p2}, Lorg/cyanogenmod/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 147
    :sswitch_2
    invoke-static {p2}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 149
    :sswitch_3
    invoke-static {p2}, Lorg/cyanogenmod/hardware/KeyDisabler;->setActive(Z)Z

    move-result v0

    goto :goto_0

    .line 151
    :sswitch_4
    invoke-static {p2}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 153
    :sswitch_5
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 155
    :sswitch_6
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
    .end sparse-switch
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 1
    .param p1, "rgb"    # [I

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/CmHardwareService$LegacyCmHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 1
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 234
    invoke-direct {p0, p2}, Lcom/android/server/CmHardwareService$LegacyCmHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 248
    invoke-static {p1}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method
