.class public Lcom/android/internal/os/WifiPowerEstimator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerEstimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerEstimator"


# instance fields
.field private mTotalAppWifiRunningTimeMs:J

.field private final mWifiPowerBatchScan:D

.field private final mWifiPowerOn:D

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 34
    invoke-static {p1}, Lcom/android/internal/os/WifiPowerEstimator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    .line 35
    const-string/jumbo v0, "wifi.on"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    .line 36
    const-string/jumbo v0, "wifi.scan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    .line 37
    const-string/jumbo v0, "wifi.batchedscan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    .line 33
    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .locals 8
    .param p0, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 44
    const-wide/32 v0, 0xf4240

    .line 45
    .local v0, "WIFI_BPS":J
    const-string/jumbo v4, "wifi.active"

    invoke-virtual {p0, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .line 47
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 25
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 53
    const/4 v9, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 55
    const/4 v9, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 57
    const/4 v9, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 59
    const/4 v9, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 62
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    .line 63
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    move-wide/from16 v22, v0

    .line 62
    mul-double v14, v20, v22

    .line 65
    .local v14, "wifiPacketPower":D
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 66
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 67
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v12, v20, v22

    .line 69
    .local v12, "wifiLockPower":D
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    .line 70
    .local v18, "wifiScanTimeMs":J
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v16, v20, v22

    .line 72
    .local v16, "wifiScanPower":D
    const-wide/16 v10, 0x0

    .line 73
    .local v10, "wifiBatchScanPower":D
    const/4 v8, 0x0

    .local v8, "bin":I
    :goto_0
    const/4 v9, 0x5

    if-ge v8, v9, :cond_0

    .line 75
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v6, v20, v22

    .line 76
    .local v6, "batchScanTimeMs":J
    long-to-double v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v4, v20, v22

    .line 77
    .local v4, "batchScanPower":D
    add-double/2addr v10, v4

    .line 73
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "batchScanPower":D
    .end local v6    # "batchScanTimeMs":J
    :cond_0
    add-double v20, v14, v12

    add-double v20, v20, v16

    add-double v20, v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 52
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 11
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 90
    move/from16 v0, p7

    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v6

    .line 91
    const-wide/16 v8, 0x3e8

    .line 90
    div-long v4, v6, v8

    .line 92
    .local v4, "totalRunningTimeMs":J
    iget-wide v6, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr v6, v8

    .line 93
    const-wide v8, 0x414b774000000000L    # 3600000.0

    .line 92
    div-double v2, v6, v8

    .line 94
    .local v2, "powerDrain":D
    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 95
    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 89
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 99
    return-void
.end method
