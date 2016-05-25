.class public Lcom/android/internal/util/cm/QSUtils;
.super Ljava/lang/Object;
.source "QSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/QSUtils$OnQSChanged;
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
    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/util/cm/QSUtils;->sSystemUiContextForUser:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 262
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
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 293
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 294
    .local v0, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsDdsSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 251
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsDoze(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsFlashLight(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 271
    const-string v10, "camera"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 274
    .local v2, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "ids":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v5, v0, v4

    .line 276
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 277
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 278
    .local v3, "flashAvailable":Ljava/lang/Boolean;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 279
    .local v8, "lensFacing":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v9, :cond_0

    .line 289
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "i$":I
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "ids":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return v9

    .line 275
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v3    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "i$":I
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "ids":[Ljava/lang/String;
    .restart local v7    # "len$":I
    .restart local v8    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "i$":I
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "ids":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "lensFacing":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    .line 289
    :cond_1
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 286
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public static deviceSupportsLte(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 242
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 244
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnGsmMode()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsMobileData(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 256
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
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
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 267
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static deviceSupportsPowerProfiles(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 306
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->hasPowerProfiles()Z

    move-result v1

    return v1
.end method

.method private static filterTiles(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/internal/util/cm/QSUtils;->sAvailableTilesFiltered:Z

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/android/internal/util/cm/QSUtils;->filterTiles(Landroid/content/Context;Ljava/util/List;)V

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/util/cm/QSUtils;->sAvailableTilesFiltered:Z

    .line 150
    :cond_0
    return-void
.end method

.method private static filterTiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
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
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v0

    .line 98
    .local v0, "deviceSupportsMobile":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, "tileKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 102
    .local v2, "removeTile":Z
    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 139
    :goto_2
    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 102
    :sswitch_0
    const-string v7, "cell"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v5

    goto :goto_1

    :sswitch_1
    const-string v7, "hotspot"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v4

    goto :goto_1

    :sswitch_2
    const-string v7, "data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string v7, "roaming"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v7, "apn"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v7, "dds"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const-string v7, "flashlight"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_7
    const-string v7, "bt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_8
    const-string v7, "nfc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_9
    const-string v7, "compass"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_a
    const-string v7, "ambient_display"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0xa

    goto :goto_1

    :sswitch_b
    const-string v7, "performance"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v7, "battery_saver"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v7, "su"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0xd

    goto/16 :goto_1

    .line 108
    :pswitch_0
    if-nez v0, :cond_2

    move v2, v4

    .line 109
    :goto_3
    goto/16 :goto_2

    :cond_2
    move v2, v5

    .line 108
    goto :goto_3

    .line 111
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDdsSupported(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 112
    :goto_4
    goto/16 :goto_2

    :cond_3
    move v2, v5

    .line 111
    goto :goto_4

    .line 114
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsFlashLight(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    move v2, v4

    .line 115
    :goto_5
    goto/16 :goto_2

    :cond_4
    move v2, v5

    .line 114
    goto :goto_5

    .line 117
    :pswitch_3
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    .line 118
    :goto_6
    goto/16 :goto_2

    :cond_5
    move v2, v5

    .line 117
    goto :goto_6

    .line 120
    :pswitch_4
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    .line 121
    :goto_7
    goto/16 :goto_2

    :cond_6
    move v2, v5

    .line 120
    goto :goto_7

    .line 123
    :pswitch_5
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsCompass(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v4

    .line 124
    :goto_8
    goto/16 :goto_2

    :cond_7
    move v2, v5

    .line 123
    goto :goto_8

    .line 126
    :pswitch_6
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDoze(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    move v2, v4

    .line 127
    :goto_9
    goto/16 :goto_2

    :cond_8
    move v2, v5

    .line 126
    goto :goto_9

    .line 129
    :pswitch_7
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsPowerProfiles(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    move v2, v4

    .line 130
    :goto_a
    goto/16 :goto_2

    :cond_9
    move v2, v5

    .line 129
    goto :goto_a

    .line 132
    :pswitch_8
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsPowerProfiles(Landroid/content/Context;)Z

    move-result v2

    .line 133
    goto/16 :goto_2

    .line 136
    :pswitch_9
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->supportsRootAccess()Z

    move-result v6

    if-nez v6, :cond_a

    move v2, v4

    :goto_b
    goto/16 :goto_2

    :cond_a
    move v2, v5

    goto :goto_b

    .line 143
    .end local v2    # "removeTile":Z
    .end local v3    # "tileKey":Ljava/lang/String;
    :cond_b
    return-void

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d6865e5 -> :sswitch_a
        -0x583cefd0 -> :sswitch_b
        -0x468444da -> :sswitch_6
        -0x33e8fe1d -> :sswitch_c
        0xc52 -> :sswitch_7
        0xe62 -> :sswitch_d
        0x17a1f -> :sswitch_4
        0x183f3 -> :sswitch_5
        0x1a9ab -> :sswitch_8
        0x2e8962 -> :sswitch_0
        0x2eefaa -> :sswitch_2
        0x38a73d12 -> :sswitch_9
        0x418a9ecf -> :sswitch_1
        0x517a5c19 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
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
    .line 68
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->filterTiles(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDefaultTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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
    .line 73
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v6, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v7, 0x104011d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "defaults":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 77
    const-string v7, ","

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 79
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v4    # "item":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v6}, Lcom/android/internal/util/cm/QSUtils;->filterTiles(Landroid/content/Context;Ljava/util/List;)V

    .line 86
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-object v6
.end method

.method public static getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->getDefaultTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDynamicQSTileLabel(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "tileSpec"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/internal/util/cm/QSUtils;->translateDynamicQsTileSpecToIndex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 185
    :goto_0
    return-object v2

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "dynamic_qs_tiles_labels"

    const-string v6, "array"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getDynamicQSTileResIconId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "tileSpec"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/internal/util/cm/QSUtils;->translateDynamicQsTileSpecToIndex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 168
    :goto_0
    return v3

    .line 160
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dynamic_qs_tiles_icons_resources_ids"

    const-string v7, "array"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v1

    .line 163
    .local v2, "resourceName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 165
    .end local v2    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 201
    sget-object v1, Lcom/android/internal/util/cm/QSUtils;->sSystemUiContextForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 202
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 204
    :try_start_0
    const-string v1, "com.android.systemui"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/android/internal/util/cm/QSUtils;->sSystemUiContextForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isDynamicQsTile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->DYNAMIC_TILES_AVAILABLE:Ljava/util/ArrayList;

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
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 217
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "sysui_qs_tiles"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "order":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

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
    .line 60
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static registerObserverForQSChanges(Landroid/content/Context;Lcom/android/internal/util/cm/QSUtils$OnQSChanged;)Landroid/database/ContentObserver;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/android/internal/util/cm/QSUtils$OnQSChanged;

    .prologue
    .line 223
    new-instance v0, Lcom/android/internal/util/cm/QSUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/android/internal/util/cm/QSUtils$1;-><init>(Landroid/os/Handler;Lcom/android/internal/util/cm/QSUtils$OnQSChanged;)V

    .line 230
    .local v0, "observer":Landroid/database/ContentObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sysui_qs_tiles"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 233
    return-object v0
.end method

.method private static supportsRootAccess()Z
    .locals 2

    .prologue
    .line 310
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static translateDynamicQsTileSpecToIndex(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "dynamic_qs_tiles_values"

    const-string v6, "array"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "keys":[Ljava/lang/String;
    array-length v0, v2

    .line 192
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 192
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static unregisterObserverForQSChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    return-void
.end method
