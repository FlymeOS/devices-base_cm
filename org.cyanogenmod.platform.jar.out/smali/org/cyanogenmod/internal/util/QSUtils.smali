.class public Lorg/cyanogenmod/internal/util/QSUtils;
.super Ljava/lang/Object;
.source "QSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/internal/util/QSUtils$OnQSChanged;
    }
.end annotation


# static fields
.field private static sAvailableTilesFiltered:Z

.field private static final sSystemUiContextForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/cyanogenmod/internal/util/QSUtils;->sSystemUiContextForUser:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsCompass(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    const-string/jumbo v3, "sensor"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 293
    .local v0, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 294
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 293
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 294
    goto :goto_0

    :cond_1
    move v1, v2

    .line 293
    goto :goto_0
.end method

.method public static deviceSupportsDdsSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 250
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 250
    :cond_0
    return v1
.end method

.method public static deviceSupportsDoze(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 299
    const v2, 0x10400bf

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static deviceSupportsFlashLight(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 271
    const-string/jumbo v7, "camera"

    .line 270
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 273
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "ids":[Ljava/lang/String;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v4, v5, v7

    .line 275
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 276
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 277
    .local v3, "flashAvailable":Ljava/lang/Boolean;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 278
    .local v6, "lensFacing":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 279
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 278
    if-eqz v10, :cond_0

    .line 280
    if-eqz v6, :cond_0

    .line 281
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v11, :cond_0

    .line 282
    return v11

    .line 274
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "ids":[Ljava/lang/String;
    .end local v6    # "lensFacing":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 288
    :cond_1
    return v8
.end method

.method public static deviceSupportsLte(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 242
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 243
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnGsmMode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 244
    goto :goto_0
.end method

.method public static deviceSupportsMobileData(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 256
    const-string/jumbo v1, "connectivity"

    .line 255
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public static deviceSupportsNfc(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 266
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static deviceSupportsPowerProfiles(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-static {p0}, Lcyanogenmod/power/PerformanceManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/power/PerformanceManager;

    move-result-object v0

    .line 306
    .local v0, "pm":Lcyanogenmod/power/PerformanceManager;
    invoke-virtual {v0}, Lcyanogenmod/power/PerformanceManager;->getNumberOfProfiles()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static filterTiles(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    sget-boolean v0, Lorg/cyanogenmod/internal/util/QSUtils;->sAvailableTilesFiltered:Z

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lorg/cyanogenmod/internal/util/QSUtils;->filterTiles(Landroid/content/Context;Ljava/util/List;)V

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cyanogenmod/internal/util/QSUtils;->sAvailableTilesFiltered:Z

    .line 144
    :cond_0
    return-void
.end method

.method private static filterTiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v0

    .line 101
    .local v0, "deviceSupportsMobile":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "tileKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "removeTile":Z
    const-string/jumbo v4, "cell"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    :cond_1
    if-eqz v0, :cond_b

    const/4 v2, 0x0

    .line 138
    .end local v2    # "removeTile":Z
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 105
    .restart local v2    # "removeTile":Z
    :cond_3
    const-string/jumbo v4, "hotspot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "roaming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "apn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "dds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsDdsSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v2, 0x0

    goto :goto_1

    .line 105
    :cond_4
    const-string/jumbo v4, "flashlight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsFlashLight(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v2, 0x0

    goto :goto_1

    .line 105
    :cond_5
    const-string/jumbo v4, "bt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    invoke-static {}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsBluetooth()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v2, 0x0

    goto :goto_1

    .line 105
    :cond_6
    const-string/jumbo v4, "nfc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 123
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x0

    goto :goto_1

    .line 105
    :cond_7
    const-string/jumbo v4, "compass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsCompass(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v2, 0x0

    goto :goto_1

    .line 105
    :cond_8
    const-string/jumbo v4, "ambient_display"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 129
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsDoze(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 105
    :cond_9
    const-string/jumbo v4, "performance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 132
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsPowerProfiles(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 105
    :cond_a
    const-string/jumbo v4, "battery_saver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->deviceSupportsPowerProfiles(Landroid/content/Context;)Z

    move-result v2

    .local v2, "removeTile":Z
    goto/16 :goto_1

    .line 111
    .local v2, "removeTile":Z
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 114
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 117
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 120
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 123
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 126
    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 129
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 132
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 97
    .end local v2    # "removeTile":Z
    .end local v3    # "tileKey":Ljava/lang/String;
    :cond_13
    return-void
.end method

.method public static getAvailableTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->filterTiles(Landroid/content/Context;)V

    .line 72
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getDefaultTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v3, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v4, 0x3f080001

    .line 77
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "defaults":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    const-string/jumbo v4, ","

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 82
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Lorg/cyanogenmod/internal/util/QSUtils;->filterTiles(Landroid/content/Context;Ljava/util/List;)V

    .line 89
    .end local v0    # "array":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p0}, Lorg/cyanogenmod/internal/util/QSUtils;->getDefaultTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDynamicQSTileLabel(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "tileSpec"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 171
    invoke-static {p0, p1}, Lorg/cyanogenmod/internal/util/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0, p2}, Lorg/cyanogenmod/internal/util/QSUtils;->translateDynamicQsTileSpecToIndex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 174
    return-object v8

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 179
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "dynamic_qs_tiles_labels"

    .line 180
    const-string/jumbo v6, "array"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 181
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/lang/Exception;
    return-object v8
.end method

.method public static getDynamicQSTileResIconId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "tileSpec"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 152
    invoke-static {p0, p1}, Lorg/cyanogenmod/internal/util/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    .line 153
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0, p2}, Lorg/cyanogenmod/internal/util/QSUtils;->translateDynamicQsTileSpecToIndex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "index":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 155
    return v9

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "dynamic_qs_tiles_icons_resources_ids"

    .line 161
    const-string/jumbo v7, "array"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 159
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v2

    .line 162
    .local v3, "resourceName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 163
    const-string/jumbo v5, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 164
    .end local v3    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ex":Ljava/lang/Exception;
    return v9
.end method

.method public static getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 200
    sget-object v2, Lorg/cyanogenmod/internal/util/QSUtils;->sSystemUiContextForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 201
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 204
    :try_start_0
    const-string/jumbo v2, "com.android.systemui"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 205
    sget-object v2, Lorg/cyanogenmod/internal/util/QSUtils;->sSystemUiContextForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isDynamicQsTile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isQSTileEnabledForUser(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tileSpec"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 217
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "sysui_qs_tiles"

    .line 216
    invoke-static {v1, v2, p2}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "order":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isStaticQsTile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static registerObserverForQSChanges(Landroid/content/Context;Lorg/cyanogenmod/internal/util/QSUtils$OnQSChanged;)Landroid/database/ContentObserver;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cb"    # Lorg/cyanogenmod/internal/util/QSUtils$OnQSChanged;

    .prologue
    .line 222
    new-instance v0, Lorg/cyanogenmod/internal/util/QSUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p1}, Lorg/cyanogenmod/internal/util/QSUtils$1;-><init>(Landroid/os/Handler;Lorg/cyanogenmod/internal/util/QSUtils$OnQSChanged;)V

    .line 229
    .local v0, "observer":Landroid/database/ContentObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-static {v2}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 231
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 229
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 232
    return-object v0
.end method

.method private static supportsRootAccess()Z
    .locals 2

    .prologue
    .line 310
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static translateDynamicQsTileSpecToIndex(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 189
    const-string/jumbo v5, "dynamic_qs_tiles_values"

    const-string/jumbo v6, "array"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "keys":[Ljava/lang/String;
    array-length v0, v2

    .line 191
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    return v1

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public static unregisterObserverForQSChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 235
    return-void
.end method
