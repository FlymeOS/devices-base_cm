.class public Lcom/android/internal/os/CameraPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CameraPowerCalculator.java"


# instance fields
.field private final mCameraPowerOnAvg:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 29
    const-string/jumbo v0, "camera.avg"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    .line 28
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 11
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 39
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_0

    .line 40
    move/from16 v0, p7

    invoke-virtual {v2, p3, p4, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 41
    .local v4, "totalTime":J
    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 42
    long-to-double v6, v4

    iget-wide v8, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    mul-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v8

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 34
    .end local v4    # "totalTime":J
    :goto_0
    return-void

    .line 44
    :cond_0
    const-wide/16 v6, 0x0

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 45
    const-wide/16 v6, 0x0

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    goto :goto_0
.end method
