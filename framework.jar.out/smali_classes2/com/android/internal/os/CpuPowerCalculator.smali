.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    .line 27
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 30
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 35
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v26

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v28

    add-long v26, v26, v28

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 38
    const-wide/16 v24, 0x0

    .line 39
    .local v24, "totalTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v14

    .line 40
    .local v14, "numClusters":I
    const/4 v4, 0x0

    .local v4, "cluster":I
    :goto_0
    if-ge v4, v14, :cond_1

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v22

    .line 42
    .local v22, "speedsForCluster":I
    const/16 v19, 0x0

    .local v19, "speed":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 43
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v26

    add-long v24, v24, v26

    .line 42
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    .end local v19    # "speed":I
    .end local v22    # "speedsForCluster":I
    :cond_1
    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    .line 48
    const-wide/16 v8, 0x0

    .line 49
    .local v8, "cpuPowerMaMs":D
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_3

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v22

    .line 51
    .restart local v22    # "speedsForCluster":I
    const/16 v19, 0x0

    .restart local v19    # "speed":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 52
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    .line 53
    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v28, v0

    .line 52
    div-double v20, v26, v28

    .line 54
    .local v20, "ratio":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v20

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    move-result-wide v28

    .line 54
    mul-double v10, v26, v28

    .line 61
    .local v10, "cpuSpeedStepPower":D
    add-double/2addr v8, v10

    .line 51
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 49
    .end local v10    # "cpuSpeedStepPower":D
    .end local v20    # "ratio":D
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 64
    .end local v19    # "speed":I
    .end local v22    # "speedsForCluster":I
    :cond_3
    const-wide v26, 0x414b774000000000L    # 3600000.0

    div-double v26, v8, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 72
    const-wide/16 v12, 0x0

    .line 74
    .local v12, "highestDrain":D
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v16

    .line 76
    .local v16, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 77
    .local v17, "processStatsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    .line 78
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/BatteryStats$Uid$Proc;

    .line 79
    .local v18, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 80
    .local v15, "processName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v28

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 82
    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v26

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v28

    add-long v26, v26, v28

    .line 83
    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v28

    .line 82
    add-long v6, v26, v28

    .line 87
    .local v6, "costValue":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 88
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v26, "*"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 87
    if-eqz v23, :cond_6

    .line 89
    :cond_4
    long-to-double v12, v6

    .line 90
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 77
    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 91
    :cond_6
    long-to-double v0, v6

    move-wide/from16 v26, v0

    cmpg-double v23, v12, v26

    if-gez v23, :cond_5

    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 92
    long-to-double v12, v6

    .line 93
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_5

    .line 98
    .end local v6    # "costValue":J
    .end local v15    # "processName":Ljava/lang/String;
    .end local v18    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_7
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v28, v0

    cmp-long v23, v26, v28

    if-lez v23, :cond_8

    .line 104
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 33
    :cond_8
    return-void
.end method
