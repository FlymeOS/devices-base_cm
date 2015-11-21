.class public final Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sDockStatsXfer:Landroid/os/BatteryStats;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mAppMobileActive:J

.field private mAppWifiRunning:J

.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtime:J

.field private final mBatteryService:Landroid/os/BatteryManager;

.field mBatteryTimeRemaining:J

.field mBatteryUptime:J

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mChargeTimeRemaining:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field private mDockStats:Landroid/os/BatteryStats;

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field private mMinDrainedPower:D

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtime:J

.field mRawUptime:J

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mTypeBatteryRealtime:J

.field mTypeBatteryUptime:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWifiOnly:Z

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 109
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 110
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 129
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 130
    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryService:Landroid/os/BatteryManager;

    .line 131
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 132
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z
    .param p3, "wifiOnly"    # Z

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 109
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 110
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 136
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 137
    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryService:Landroid/os/BatteryManager;

    .line 138
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 139
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 140
    return-void
.end method

.method private addBluetoothUsage()V
    .locals 14

    .prologue
    const-wide v12, 0x414b774000000000L    # 3600000.0

    .line 835
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    .line 836
    .local v2, "btOnTimeMs":J
    long-to-double v0, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v8, v0, v12

    .line 841
    .local v8, "btPower":D
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothPingCount()I

    move-result v7

    .line 842
    .local v7, "btPingCount":I
    int-to-double v0, v7

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v10, v0, v12

    .line 848
    .local v10, "pingPower":D
    add-double/2addr v8, v10

    .line 849
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v0, v8

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    .line 850
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 852
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 854
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 2
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    .line 930
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 931
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 932
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v0

    return-object v0
.end method

.method private addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    .line 936
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v1, p4, v2

    if-lez v1, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 937
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 938
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTime:J

    .line 939
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    return-object v0
.end method

.method private addFlashlightUsage()V
    .locals 8

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getFlashlightOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 858
    .local v2, "flashlightOnTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "camera.flashlight"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 860
    .local v4, "flashlightPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 861
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 863
    :cond_0
    return-void
.end method

.method private addIdleUsage()V
    .locals 10

    .prologue
    .line 822
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 824
    .local v2, "idleTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 829
    .local v4, "idlePower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 830
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 832
    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 8

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 701
    .local v2, "phoneOnTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v6, v2

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 703
    .local v4, "phoneOnPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 704
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 706
    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 26

    .prologue
    .line 733
    const-wide/16 v6, 0x0

    .line 734
    .local v6, "power":D
    const/4 v8, 0x5

    .line 735
    .local v8, "BINS":I
    const-wide/16 v4, 0x0

    .line 736
    .local v4, "signalTimeMs":J
    const-wide/16 v12, 0x0

    .line 737
    .local v12, "noCoverageTimeMs":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_1

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v22, v2, v24

    .line 740
    .local v22, "strengthTimeMs":J
    move-wide/from16 v0, v22

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v24, "radio.on"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    .line 746
    .local v14, "p":D
    add-double/2addr v6, v14

    .line 747
    add-long v4, v4, v22

    .line 748
    if-nez v10, :cond_0

    .line 749
    move-wide/from16 v12, v22

    .line 737
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 752
    .end local v14    # "p":D
    .end local v22    # "strengthTimeMs":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v20, v2, v24

    .line 754
    .local v20, "scanningTimeMs":J
    move-wide/from16 v0, v20

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v24, "radio.scanning"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    .line 760
    .restart local v14    # "p":D
    add-double/2addr v6, v14

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v16

    .line 762
    .local v16, "radioActiveTimeUs":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    sub-long v2, v16, v2

    const-wide/16 v24, 0x3e8

    div-long v18, v2, v24

    .line 763
    .local v18, "remainingActiveTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_2

    .line 764
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v2

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v2, v2, v24

    add-double/2addr v6, v2

    .line 766
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_4

    .line 767
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v9

    .line 769
    .local v9, "bs":Lcom/android/internal/os/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 770
    long-to-double v2, v12

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v24

    long-to-double v0, v4

    move-wide/from16 v24, v0

    div-double v2, v2, v24

    iput-wide v2, v9, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    .line 772
    :cond_3
    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v2

    iput v2, v9, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 775
    .end local v9    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_4
    return-void
.end method

.method private addScreenUsage()V
    .locals 20

    .prologue
    .line 709
    const-wide/16 v6, 0x0

    .line 710
    .local v6, "power":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v4, v2, v18

    .line 711
    .local v4, "screenOnTimeMs":J
    long-to-double v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "screen.on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    mul-double v2, v2, v18

    add-double/2addr v6, v2

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    .line 714
    .local v16, "screenFullPower":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_0

    .line 715
    int-to-float v2, v10

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v16

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    div-double v14, v2, v18

    .line 717
    .local v14, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v8, v2, v18

    .line 719
    .local v8, "brightnessTime":J
    long-to-double v2, v8

    mul-double v12, v14, v2

    .line 724
    .local v12, "p":D
    add-double/2addr v6, v12

    .line 714
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 726
    .end local v8    # "brightnessTime":J
    .end local v12    # "p":D
    .end local v14    # "screenBinPower":D
    :cond_0
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v2

    .line 727
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_1

    .line 728
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 730
    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 11

    .prologue
    .line 866
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 868
    .local v9, "userId":I
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 869
    .local v8, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 870
    .local v10, "userPower":Ljava/lang/Double;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 871
    .local v4, "power":D
    :goto_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 872
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iput v9, v6, Lcom/android/internal/os/BatterySipper;->userId:I

    .line 873
    const-string v0, "User"

    invoke-direct {p0, v6, v8, v0}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 866
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 870
    .end local v4    # "power":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 875
    .end local v8    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v9    # "userId":I
    .end local v10    # "userPower":Ljava/lang/Double;
    :cond_1
    return-void
.end method

.method private addWiFiUsage()V
    .locals 14

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v8, v0, v4

    .line 802
    .local v8, "onTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    .line 805
    .local v2, "runningTimeMs":J
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    sub-long/2addr v2, v0

    .line 806
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-wide/16 v2, 0x0

    .line 807
    :cond_0
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v8

    long-to-double v0, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    long-to-double v4, v2

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "wifi.on"

    invoke-virtual {v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v12

    mul-double/2addr v4, v12

    add-double/2addr v0, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double v10, v0, v4

    .line 814
    .local v10, "wifiPower":D
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v0, v10

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    .line 815
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 817
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 819
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_1
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 778
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 779
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 781
    .local v1, "wbs":Lcom/android/internal/os/BatterySipper;
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    .line 782
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    .line 783
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    .line 784
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    .line 785
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 786
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 787
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 788
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 789
    iget v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v3, v1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 790
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 791
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 792
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 793
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 794
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 795
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    .end local v1    # "wbs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 798
    return-void
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 143
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 145
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private clearAllStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 226
    sput-object v2, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    .line 227
    sput-object v2, Lcom/android/internal/os/BatteryStatsHelper;->sDockStatsXfer:Landroid/os/BatteryStats;

    .line 228
    sput-object v2, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    .line 229
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 230
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 232
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 233
    return-void
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 212
    return-void
.end method

.method private static getDockStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 8
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    .line 1058
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getDockStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1059
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 1060
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    .line 1063
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1064
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1065
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1066
    sget-object v6, Lcom/android/internal/os/DockBatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;

    .line 1068
    .local v5, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1077
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :goto_0
    return-object v5

    .line 1070
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "Unable to read statistics stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1077
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    goto :goto_0

    .line 1074
    :catch_1
    move-exception v1

    .line 1075
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getMobilePowerPerMs()D
    .locals 4

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket()D
    .locals 22

    .prologue
    .line 881
    const-wide/32 v4, 0x30d40

    .line 882
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .line 885
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 886
    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 887
    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .line 889
    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 891
    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 895
    .local v10, "mobilePps":D
    :goto_0
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .line 891
    .end local v10    # "mobilePps":D
    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 8
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    .line 1034
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1035
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 1036
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1038
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    .line 1039
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1040
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1041
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1042
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;

    .line 1044
    .local v5, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1053
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :goto_0
    return-object v5

    .line 1046
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "Unable to read statistics stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1053
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    goto :goto_0

    .line 1050
    :catch_1
    move-exception v1

    .line 1051
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getWifiPowerPerPacket()D
    .locals 8

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 909
    const-wide/32 v0, 0xf4240

    .line 910
    .local v0, "WIFI_BPS":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .line 912
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private loadDockStats()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryService:Landroid/os/BatteryManager;

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getDockStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDockStats:Landroid/os/BatteryStats;

    goto :goto_0

    .line 1019
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDockStats:Landroid/os/BatteryStats;

    goto :goto_0
.end method

.method private loadStats()V
    .locals 4

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 1006
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 4
    .param p0, "power"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 284
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "%.8f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 285
    :cond_0
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.7f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.6f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_2
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.5f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_3
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.4f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.3f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 291
    :cond_6
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :cond_7
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 108
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/16 v102, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v102

    if-eqz v102, :cond_0

    const/16 v18, 0x1

    .line 429
    .local v18, "forAllUsers":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v102, v0

    const-string v103, "sensor"

    invoke-virtual/range {v102 .. v103}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/hardware/SensorManager;

    .line 431
    .local v62, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v85, v0

    .line 432
    .local v85, "which":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v102, v0

    invoke-virtual/range {v102 .. v102}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v66

    .line 433
    .local v66, "speedSteps":I
    move/from16 v0, v66

    new-array v0, v0, [D

    move-object/from16 v49, v0

    .line 434
    .local v49, "powerCpuNormal":[D
    move/from16 v0, v66

    new-array v14, v0, [J

    .line 435
    .local v14, "cpuSpeedStepTimes":[J
    const/16 v46, 0x0

    .local v46, "p":I
    :goto_1
    move/from16 v0, v46

    move/from16 v1, v66

    if-ge v0, v1, :cond_1

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v102, v0

    const-string v103, "cpu.active"

    move-object/from16 v0, v102

    move-object/from16 v1, v103

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v102

    aput-wide v102, v49, v46

    .line 435
    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    .line 428
    .end local v14    # "cpuSpeedStepTimes":[J
    .end local v18    # "forAllUsers":Z
    .end local v46    # "p":I
    .end local v49    # "powerCpuNormal":[D
    .end local v62    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v66    # "speedSteps":I
    .end local v85    # "which":I
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 438
    .restart local v14    # "cpuSpeedStepTimes":[J
    .restart local v18    # "forAllUsers":Z
    .restart local v46    # "p":I
    .restart local v49    # "powerCpuNormal":[D
    .restart local v62    # "sensorManager":Landroid/hardware/SensorManager;
    .restart local v66    # "speedSteps":I
    .restart local v85    # "which":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerPacket()D

    move-result-wide v34

    .line 439
    .local v34, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v32

    .line 440
    .local v32, "mobilePowerPerMs":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getWifiPowerPerPacket()D

    move-result-wide v88

    .line 441
    .local v88, "wifiPowerPerPacket":D
    const-wide/16 v8, 0x0

    .line 442
    .local v8, "appWakelockTimeUs":J
    const/16 v29, 0x0

    .line 443
    .local v29, "osApp":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-wide/from16 v102, v0

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v102, v0

    invoke-virtual/range {v102 .. v102}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v75

    .line 445
    .local v75, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v75 .. v75}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 446
    .local v5, "NU":I
    const/16 v27, 0x0

    .end local v46    # "p":I
    .local v27, "iu":I
    :goto_2
    move/from16 v0, v27

    if-ge v0, v5, :cond_1b

    .line 447
    move-object/from16 v0, v75

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/os/BatteryStats$Uid;

    .line 449
    .local v74, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v50, 0x0

    .line 450
    .local v50, "power":D
    const-wide/16 v24, 0x0

    .line 451
    .local v24, "highestDrain":D
    const/16 v48, 0x0

    .line 452
    .local v48, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v54

    .line 453
    .local v54, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v16, 0x0

    .line 454
    .local v16, "cpuTime":J
    const-wide/16 v12, 0x0

    .line 455
    .local v12, "cpuFgTime":J
    const-wide/16 v86, 0x0

    .line 456
    .local v86, "wakelockTime":J
    const-wide/16 v22, 0x0

    .line 457
    .local v22, "gpsTime":J
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->size()I

    move-result v102

    if-lez v102, :cond_8

    .line 460
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v102

    invoke-interface/range {v102 .. v102}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v102

    if-eqz v102, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 461
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/os/BatteryStats$Uid$Proc;

    .line 462
    .local v55, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v55

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v78

    .line 463
    .local v78, "userTime":J
    move-object/from16 v0, v55

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v68

    .line 464
    .local v68, "systemTime":J
    move-object/from16 v0, v55

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v20

    .line 465
    .local v20, "foregroundTime":J
    const-wide/16 v102, 0xa

    mul-long v102, v102, v20

    add-long v12, v12, v102

    .line 466
    add-long v102, v78, v68

    const-wide/16 v104, 0xa

    mul-long v72, v102, v104

    .line 467
    .local v72, "tmpCpuTime":J
    const/16 v71, 0x0

    .line 469
    .local v71, "totalTimeAtSpeeds":I
    const/16 v67, 0x0

    .local v67, "step":I
    :goto_4
    move/from16 v0, v67

    move/from16 v1, v66

    if-ge v0, v1, :cond_3

    .line 470
    move-object/from16 v0, v55

    move/from16 v1, v67

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v102

    aput-wide v102, v14, v67

    .line 471
    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v102, v0

    aget-wide v104, v14, v67

    add-long v102, v102, v104

    move-wide/from16 v0, v102

    long-to-int v0, v0

    move/from16 v71, v0

    .line 469
    add-int/lit8 v67, v67, 0x1

    goto :goto_4

    .line 473
    :cond_3
    if-nez v71, :cond_4

    const/16 v71, 0x1

    .line 475
    :cond_4
    const-wide/16 v52, 0x0

    .line 476
    .local v52, "processPower":D
    const/16 v67, 0x0

    :goto_5
    move/from16 v0, v67

    move/from16 v1, v66

    if-ge v0, v1, :cond_5

    .line 477
    aget-wide v102, v14, v67

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move/from16 v0, v71

    int-to-double v0, v0

    move-wide/from16 v104, v0

    div-double v56, v102, v104

    .line 481
    .local v56, "ratio":D
    move-wide/from16 v0, v72

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v102, v102, v56

    aget-wide v104, v49, v67

    mul-double v102, v102, v104

    add-double v52, v52, v102

    .line 476
    add-int/lit8 v67, v67, 0x1

    goto :goto_5

    .line 483
    .end local v56    # "ratio":D
    :cond_5
    add-long v16, v16, v72

    .line 488
    add-double v50, v50, v52

    .line 489
    if-eqz v48, :cond_6

    const-string v102, "*"

    move-object/from16 v0, v48

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v102

    if-eqz v102, :cond_7

    .line 491
    :cond_6
    move-wide/from16 v24, v52

    .line 492
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v48, Ljava/lang/String;

    .restart local v48    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_3

    .line 493
    :cond_7
    cmpg-double v102, v24, v52

    if-gez v102, :cond_2

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Ljava/lang/String;

    const-string v103, "*"

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v102

    if-nez v102, :cond_2

    .line 495
    move-wide/from16 v24, v52

    .line 496
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v48, Ljava/lang/String;

    .restart local v48    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_3

    .line 500
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "foregroundTime":J
    .end local v52    # "processPower":D
    .end local v55    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v67    # "step":I
    .end local v68    # "systemTime":J
    .end local v71    # "totalTimeAtSpeeds":I
    .end local v72    # "tmpCpuTime":J
    .end local v78    # "userTime":J
    :cond_8
    cmp-long v102, v12, v16

    if-lez v102, :cond_9

    .line 504
    move-wide/from16 v16, v12

    .line 506
    :cond_9
    const-wide v102, 0x414b774000000000L    # 3600000.0

    div-double v50, v50, v102

    .line 509
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v84

    .line 511
    .local v84, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v102

    invoke-interface/range {v102 .. v102}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v102

    if-eqz v102, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Ljava/util/Map$Entry;

    .line 512
    .local v83, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 515
    .local v82, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v102, 0x0

    move-object/from16 v0, v82

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v70

    .line 516
    .local v70, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v70, :cond_a

    .line 517
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v70

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v102

    add-long v86, v86, v102

    goto :goto_6

    .line 520
    .end local v70    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v82    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v83    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_b
    add-long v8, v8, v86

    .line 521
    const-wide/16 v102, 0x3e8

    div-long v86, v86, v102

    .line 524
    move-wide/from16 v0, v86

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "cpu.awake"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 528
    .local v46, "p":D
    add-double v50, v50, v46

    .line 531
    const/16 v102, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v36

    .line 532
    .local v36, "mobileRx":J
    const/16 v102, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v40

    .line 533
    .local v40, "mobileTx":J
    const/16 v102, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v38

    .line 534
    .local v38, "mobileRxB":J
    const/16 v102, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v42

    .line 535
    .local v42, "mobileTxB":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v102, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v30

    .line 536
    .local v30, "mobileActive":J
    const-wide/16 v102, 0x0

    cmp-long v102, v30, v102

    if-lez v102, :cond_c

    .line 539
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    move-wide/from16 v102, v0

    add-long v102, v102, v30

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    .line 540
    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v102, v102, v32

    const-wide v104, 0x408f400000000000L    # 1000.0

    div-double v46, v102, v104

    .line 549
    :goto_7
    add-double v50, v50, v46

    .line 552
    const/16 v102, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v92

    .line 553
    .local v92, "wifiRx":J
    const/16 v102, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v98

    .line 554
    .local v98, "wifiTx":J
    const/16 v102, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v94

    .line 555
    .local v94, "wifiRxB":J
    const/16 v102, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v100

    .line 556
    .local v100, "wifiTxB":J
    add-long v102, v92, v98

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v46, v102, v88

    .line 559
    add-double v50, v50, v46

    .line 562
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v74

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v90, v102, v104

    .line 563
    .local v90, "wifiRunningTimeMs":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v102, v0

    add-long v102, v102, v90

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    .line 564
    move-wide/from16 v0, v90

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "wifi.on"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 568
    add-double v50, v50, v46

    .line 571
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v74

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v96, v102, v104

    .line 572
    .local v96, "wifiScanTimeMs":J
    move-wide/from16 v0, v96

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "wifi.scan"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 576
    add-double v50, v50, v46

    .line 577
    const/4 v7, 0x0

    .local v7, "bin":I
    :goto_8
    const/16 v102, 0x5

    move/from16 v0, v102

    if-ge v7, v0, :cond_d

    .line 578
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v74

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v10, v102, v104

    .line 579
    .local v10, "batchScanTimeMs":J
    long-to-double v0, v10

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "wifi.batchedscan"

    move-object/from16 v0, v104

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 584
    add-double v50, v50, v46

    .line 577
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 544
    .end local v7    # "bin":I
    .end local v10    # "batchScanTimeMs":J
    .end local v90    # "wifiRunningTimeMs":J
    .end local v92    # "wifiRx":J
    .end local v94    # "wifiRxB":J
    .end local v96    # "wifiScanTimeMs":J
    .end local v98    # "wifiTx":J
    .end local v100    # "wifiTxB":J
    :cond_c
    add-long v102, v36, v40

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v46, v102, v34

    goto/16 :goto_7

    .line 588
    .restart local v7    # "bin":I
    .restart local v90    # "wifiRunningTimeMs":J
    .restart local v92    # "wifiRx":J
    .restart local v94    # "wifiRxB":J
    .restart local v96    # "wifiScanTimeMs":J
    .restart local v98    # "wifiTx":J
    .restart local v100    # "wifiTxB":J
    :cond_d
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v63

    .line 589
    .local v63, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 590
    .local v4, "NSE":I
    const/16 v26, 0x0

    .local v26, "ise":I
    :goto_9
    move/from16 v0, v26

    if-ge v0, v4, :cond_10

    .line 591
    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/os/BatteryStats$Uid$Sensor;

    .line 592
    .local v59, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    .line 593
    .local v60, "sensorHandle":I
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    .line 594
    .restart local v70    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v70

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v64, v102, v104

    .line 595
    .local v64, "sensorTime":J
    const-wide/16 v44, 0x0

    .line 596
    .local v44, "multiplier":D
    packed-switch v60, :pswitch_data_0

    .line 602
    const/16 v102, -0x1

    move-object/from16 v0, v62

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v61

    .line 604
    .local v61, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v102

    if-eqz v102, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/hardware/Sensor;

    .line 605
    .local v58, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v58 .. v58}, Landroid/hardware/Sensor;->getHandle()I

    move-result v102

    move/from16 v0, v102

    move/from16 v1, v60

    if-ne v0, v1, :cond_e

    .line 606
    invoke-virtual/range {v58 .. v58}, Landroid/hardware/Sensor;->getPower()F

    move-result v102

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v44, v0

    .line 611
    .end local v58    # "s":Landroid/hardware/Sensor;
    .end local v61    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_f
    :goto_a
    move-wide/from16 v0, v64

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v102, v102, v44

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 614
    add-double v50, v50, v46

    .line 590
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 598
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v102, v0

    const-string v103, "gps.on"

    invoke-virtual/range {v102 .. v103}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v44

    .line 599
    move-wide/from16 v22, v64

    .line 600
    goto :goto_a

    .line 621
    .end local v44    # "multiplier":D
    .end local v59    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v60    # "sensorHandle":I
    .end local v64    # "sensorTime":J
    .end local v70    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_10
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    invoke-static/range {v102 .. v102}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v76

    .line 622
    .local v76, "userId":I
    const-wide/16 v102, 0x0

    cmpl-double v102, v50, v102

    if-nez v102, :cond_11

    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    if-nez v102, :cond_13

    .line 623
    :cond_11
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v102, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v103, 0x1

    move/from16 v0, v103

    new-array v0, v0, [D

    move-object/from16 v103, v0

    const/16 v104, 0x0

    aput-wide v50, v103, v104

    move-object/from16 v0, v102

    move-object/from16 v1, v74

    move-object/from16 v2, v103

    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 625
    .local v6, "app":Lcom/android/internal/os/BatterySipper;
    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    .line 626
    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    .line 627
    move-wide/from16 v0, v90

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    .line 628
    iput-wide v12, v6, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    .line 629
    move-wide/from16 v0, v86

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 630
    move-wide/from16 v0, v36

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 631
    move-wide/from16 v0, v40

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 632
    const-wide/16 v102, 0x3e8

    div-long v102, v30, v102

    move-wide/from16 v0, v102

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 633
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v102, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v102

    move/from16 v0, v102

    iput v0, v6, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 634
    move-wide/from16 v0, v92

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 635
    move-wide/from16 v0, v98

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 636
    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 637
    move-wide/from16 v0, v42

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 638
    move-wide/from16 v0, v94

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 639
    move-wide/from16 v0, v100

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 640
    move-object/from16 v0, v48

    iput-object v0, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 641
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    const/16 v103, 0x3f2

    move/from16 v0, v102

    move/from16 v1, v103

    if-ne v0, v1, :cond_14

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    .line 670
    :cond_12
    :goto_b
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    if-nez v102, :cond_13

    .line 671
    move-object/from16 v29, v6

    .line 446
    .end local v6    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_13
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 644
    .restart local v6    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_14
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    const/16 v103, 0x3ea

    move/from16 v0, v102

    move/from16 v1, v103

    if-ne v0, v1, :cond_15

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_b

    .line 647
    :cond_15
    if-nez v18, :cond_18

    move-object/from16 v0, p1

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v102

    if-nez v102, :cond_18

    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    invoke-static/range {v102 .. v102}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v102

    const/16 v103, 0x2710

    move/from16 v0, v102

    move/from16 v1, v103

    if-lt v0, v1, :cond_18

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    .line 650
    .local v28, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v28, :cond_16

    .line 651
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .restart local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    :cond_16
    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    const-wide/16 v102, 0x0

    cmpl-double v102, v50, v102

    if-eqz v102, :cond_12

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Ljava/lang/Double;

    .line 657
    .local v77, "userPower":Ljava/lang/Double;
    if-nez v77, :cond_17

    .line 658
    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v77

    .line 662
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 660
    :cond_17
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v102

    add-double v102, v102, v50

    invoke-static/range {v102 .. v103}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v77

    goto :goto_c

    .line 665
    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v77    # "userPower":Ljava/lang/Double;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v102, v0

    cmpl-double v102, v50, v102

    if-lez v102, :cond_19

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 667
    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v102, v0

    cmpl-double v102, v50, v102

    if-lez v102, :cond_1a

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 668
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    goto/16 :goto_b

    .line 679
    .end local v4    # "NSE":I
    .end local v6    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "bin":I
    .end local v12    # "cpuFgTime":J
    .end local v16    # "cpuTime":J
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "gpsTime":J
    .end local v24    # "highestDrain":D
    .end local v26    # "ise":I
    .end local v30    # "mobileActive":J
    .end local v36    # "mobileRx":J
    .end local v38    # "mobileRxB":J
    .end local v40    # "mobileTx":J
    .end local v42    # "mobileTxB":J
    .end local v46    # "p":D
    .end local v48    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v50    # "power":D
    .end local v54    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v63    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v74    # "u":Landroid/os/BatteryStats$Uid;
    .end local v76    # "userId":I
    .end local v84    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v86    # "wakelockTime":J
    .end local v90    # "wifiRunningTimeMs":J
    .end local v92    # "wifiRx":J
    .end local v94    # "wifiRxB":J
    .end local v96    # "wifiScanTimeMs":J
    .end local v98    # "wifiTx":J
    .end local v100    # "wifiTxB":J
    :cond_1b
    if-eqz v29, :cond_1e

    .line 680
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    move-wide/from16 v102, v0

    const-wide/16 v104, 0x3e8

    div-long v80, v102, v104

    .line 681
    .local v80, "wakeTimeMillis":J
    const-wide/16 v102, 0x3e8

    div-long v102, v8, v102

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v104, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v106, v0

    move-object/from16 v0, v104

    move-wide/from16 v1, v106

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v104, v104, v106

    add-long v102, v102, v104

    sub-long v80, v80, v102

    .line 683
    const-wide/16 v102, 0x0

    cmp-long v102, v80, v102

    if-lez v102, :cond_1e

    .line 684
    move-wide/from16 v0, v80

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "cpu.awake"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v50, v102, v104

    .line 689
    .restart local v50    # "power":D
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    move-wide/from16 v102, v0

    add-long v102, v102, v80

    move-wide/from16 v0, v102

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 690
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->value:D

    .line 691
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->values:[D

    move-object/from16 v102, v0

    const/16 v103, 0x0

    aget-wide v104, v102, v103

    add-double v104, v104, v50

    aput-wide v104, v102, v103

    .line 692
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v104, v0

    cmpl-double v102, v102, v104

    if-lez v102, :cond_1c

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 693
    :cond_1c
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v104, v0

    cmpl-double v102, v102, v104

    if-lez v102, :cond_1d

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 694
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 697
    .end local v50    # "power":D
    .end local v80    # "wakeTimeMillis":J
    :cond_1e
    return-void

    .line 596
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    .line 917
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    .line 918
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addScreenUsage()V

    .line 919
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addFlashlightUsage()V

    .line 920
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    .line 921
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    .line 922
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    .line 924
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    .line 927
    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 980
    const/4 v3, 0x0

    .line 981
    .local v3, "pos":I
    new-array v1, p1, [B

    .line 983
    .local v1, "data":[B
    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 986
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 989
    return-object v1

    .line 991
    :cond_1
    add-int/2addr v3, v0

    .line 992
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 993
    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_0

    .line 994
    add-int v4, v3, p1

    new-array v2, v4, [B

    .line 995
    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 996
    move-object v1, v2

    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 182
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 183
    .local v5, "path":Ljava/io/File;
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;

    .line 184
    .local v6, "stats":Landroid/os/BatteryStats;
    if-eqz v6, :cond_0

    .line 185
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :goto_0
    return-object v6

    .line 187
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :cond_0
    const/4 v2, 0x0

    .line 189
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 191
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 192
    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 193
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 194
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    if-eqz v3, :cond_1

    .line 200
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    goto :goto_0

    .line 195
    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v9, "Unable to read history to file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 198
    if-eqz v2, :cond_2

    .line 200
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 205
    :cond_2
    :goto_3
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 206
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    goto :goto_0

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    .line 200
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 202
    :cond_3
    :goto_5
    :try_start_9
    throw v7

    .line 205
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 201
    .restart local v0    # "data":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_5

    .line 198
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 195
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 221
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDockStats:Landroid/os/BatteryStats;

    .line 222
    return-void
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 262
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 263
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 264
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 269
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sDockStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDockStats:Landroid/os/BatteryStats;

    .line 270
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 272
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 274
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 275
    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->loadStats()V

    .line 252
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->loadDockStats()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getBatteryTimeRemaining()J
    .locals 2

    .prologue
    .line 971
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    return-wide v0
.end method

.method public getChargeTimeRemaining()J
    .locals 2

    .prologue
    .line 973
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    return-wide v0
.end method

.method public getComputedPower()D
    .locals 2

    .prologue
    .line 961
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getDockStats()Landroid/os/BatteryStats;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDockStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->loadDockStats()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDockStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getMaxDrainedPower()D
    .locals 2

    .prologue
    .line 968
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    .prologue
    .line 955
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    .prologue
    .line 957
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    .prologue
    .line 964
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->loadStats()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    .prologue
    .line 951
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .locals 2

    .prologue
    .line 959
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public internalStoreStatsHistoryInFile(Landroid/os/BatteryStats;Ljava/lang/String;)V
    .locals 9
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "fname"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 158
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, p2}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 159
    .local v5, "path":Ljava/io/File;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 164
    .local v3, "hist":Landroid/os/Parcel;
    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 165
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 166
    .local v4, "histData":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 170
    if-eqz v2, :cond_2

    .line 172
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .line 177
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    return-void

    .line 173
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 174
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 167
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v8, "Unable to write history to file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    if-eqz v1, :cond_0

    .line 172
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 173
    :catch_2
    move-exception v6

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_1

    .line 172
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 174
    :cond_1
    :goto_3
    :try_start_8
    throw v6

    .line 177
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "path":Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 173
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "path":Ljava/io/File;
    :catch_3
    move-exception v8

    goto :goto_3

    .line 170
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 167
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :cond_2
    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public refreshStats(II)V
    .locals 2
    .param p1, "statsType"    # I
    .param p2, "asUser"    # I

    .prologue
    .line 299
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 300
    .local v0, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 302
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 8
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const-wide/16 v2, 0x3e8

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v6, v0, v2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    .line 323
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 13
    .param p1, "statsType"    # I
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getDockStats()Landroid/os/BatteryStats;

    .line 331
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 332
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 333
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 334
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 335
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    .line 336
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    .line 337
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    .line 338
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    .line 340
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 341
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 342
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 343
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 344
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 345
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 347
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v2, :cond_0

    .line 425
    :goto_0
    return-void

    .line 351
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 352
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    .line 353
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    .line 354
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    .line 355
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    .line 356
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    .line 357
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    .line 358
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    .line 359
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    .line 369
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    .line 371
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    .line 374
    invoke-direct {p0, p2}, Lcom/android/internal/os/BatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    .line 377
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_2

    .line 378
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 379
    .local v8, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 380
    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 384
    .end local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_5

    .line 385
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 386
    .local v11, "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_4

    .line 387
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 388
    .restart local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 389
    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 390
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 384
    .end local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 394
    .end local v10    # "j":I
    .end local v11    # "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper$1;

    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscUsage()V

    .line 412
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 413
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 414
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    .line 415
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    sub-double v6, v2, v4

    .line 416
    .local v6, "amount":D
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 417
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 424
    .end local v6    # "amount":D
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0

    .line 418
    :cond_7
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    .line 419
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sub-double v6, v2, v4

    .line 420
    .restart local v6    # "amount":D
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    goto :goto_4
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p2, "asUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 309
    .local v1, "n":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 310
    .local v3, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 311
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 312
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 315
    return-void
.end method

.method public resetStatistics()V
    .locals 3

    .prologue
    .line 1025
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->clearAllStats()V

    .line 1026
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->resetStatistics()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public storeDockStatsHistoryInFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getDockStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->internalStoreStatsHistoryInFile(Landroid/os/BatteryStats;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public storeState()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    .line 279
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDockStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sDockStatsXfer:Landroid/os/BatteryStats;

    .line 280
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    .line 281
    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->internalStoreStatsHistoryInFile(Landroid/os/BatteryStats;Ljava/lang/String;)V

    .line 150
    return-void
.end method
