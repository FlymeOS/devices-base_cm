.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 29
    const-string/jumbo v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .line 30
    const-string/jumbo v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .line 31
    const-string/jumbo v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    .line 28
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 36
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 18
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 44
    const/4 v12, 0x0

    .line 43
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v2

    .line 46
    .local v2, "idleTimeMs":J
    const/4 v12, 0x2

    .line 45
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v10

    .line 48
    .local v10, "txTimeMs":J
    const/4 v12, 0x1

    .line 47
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v6

    .line 49
    .local v6, "rxTimeMs":J
    add-long v12, v2, v10

    add-long v8, v12, v6

    .line 51
    .local v8, "totalTimeMs":J
    const/4 v12, 0x3

    .line 50
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v12

    long-to-double v12, v12

    .line 51
    const-wide v14, 0x414b774000000000L    # 3600000.0

    .line 50
    div-double v4, v12, v14

    .line 53
    .local v4, "powerMah":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v4, v12

    if-nez v12, :cond_0

    .line 55
    long-to-double v12, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr v12, v14

    long-to-double v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    long-to-double v14, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 56
    const-wide v14, 0x414b774000000000L    # 3600000.0

    .line 55
    div-double v4, v12, v14

    .line 64
    :cond_0
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 65
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 42
    return-void
.end method
