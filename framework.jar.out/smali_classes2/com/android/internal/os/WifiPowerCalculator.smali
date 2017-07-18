.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"


# instance fields
.field private final mIdleCurrentMa:D

.field private final mRxCurrentMa:D

.field private mTotalAppPowerDrain:D

.field private final mTxCurrentMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 34
    const-string/jumbo v0, "wifi.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    .line 35
    const-string/jumbo v0, "wifi.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    .line 36
    const-string/jumbo v0, "wifi.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    .line 33
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 14
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 42
    const/4 v8, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v2

    .line 44
    .local v2, "idleTime":J
    const/4 v8, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v6

    .line 45
    .local v6, "txTime":J
    const/4 v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v4

    .line 46
    .local v4, "rxTime":J
    add-long v8, v2, v4

    add-long/2addr v8, v6

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 48
    long-to-double v8, v2

    iget-wide v10, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v8, v10

    long-to-double v10, v6

    iget-wide v12, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    long-to-double v10, v4

    iget-wide v12, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 49
    const-wide v10, 0x414b774000000000L    # 3600000.0

    .line 48
    div-double/2addr v8, v10

    .line 47
    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 50
    iget-wide v8, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    iget-wide v10, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 52
    const/4 v8, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 54
    const/4 v8, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 56
    const/4 v8, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 58
    const/4 v8, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 41
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 16
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 70
    const/4 v10, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v2

    .line 72
    .local v2, "idleTimeMs":J
    const/4 v10, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v6

    .line 74
    .local v6, "rxTimeMs":J
    const/4 v10, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v8

    .line 76
    .local v8, "txTimeMs":J
    add-long v10, v2, v6

    add-long/2addr v10, v8

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 78
    const/4 v10, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v10

    long-to-double v10, v10

    .line 79
    const-wide v12, 0x414b774000000000L    # 3600000.0

    .line 78
    div-double v4, v10, v12

    .line 80
    .local v4, "powerDrainMah":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-nez v10, :cond_0

    .line 82
    long-to-double v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v10, v12

    long-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 83
    long-to-double v12, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr v12, v14

    .line 82
    add-double/2addr v10, v12

    .line 83
    const-wide v12, 0x414b774000000000L    # 3600000.0

    .line 82
    div-double v4, v10, v12

    .line 85
    :cond_0
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    sub-double v12, v4, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 69
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 93
    return-void
.end method
