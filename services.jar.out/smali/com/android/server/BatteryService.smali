.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$SettingsObserver;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$Led;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final LIGHT_BRIGHTNESS_MAXIMUM:I = 0xff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustableNotificationLedBrightness:Z

.field private mBatteryFullARGB:I

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mDockBatteryLevelLow:Z

.field private mDockBatterySupported:Z

.field private mDockPlugType:I

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private final mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastDockBatteryHealth:I

.field private mLastDockBatteryLevel:I

.field private mLastDockBatteryPresent:Z

.field private mLastDockBatteryStatus:I

.field private mLastDockBatteryTemperature:I

.field private mLastDockBatteryVoltage:I

.field private mLastDockPlugType:I

.field private mLastInvalidCharger:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLedPulseEnabled:Z

.field private mLightEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mMultiColorLed:Z

.field private mMultipleLedsEnabled:Z

.field private mMultipleNotificationLeds:Z

.field private mNotificationLedBrightnessLevel:I

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mShutdownBatteryTemperature:I

.field private mUpdatesStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--unplugged"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/os/BatteryProperties;

    invoke-direct {v0}, Landroid/os/BatteryProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    .line 158
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/BatteryService;->mNotificationLedBrightnessLevel:I

    .line 161
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mMultipleLedsEnabled:Z

    .line 168
    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 170
    iput v1, p0, Lcom/android/server/BatteryService;->mLastDockPlugType:I

    .line 182
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mLightEnabled:Z

    .line 189
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 913
    new-instance v0, Lcom/android/server/BatteryService$9;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    .line 194
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 195
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v1, Lcom/android/server/BatteryService$Led;

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 197
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 201
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    .line 203
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 205
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 207
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 209
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 213
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMultipleNotificationLeds:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMultipleNotificationLeds:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLightEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLightEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mNotificationLedBrightnessLevel:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/BatteryService;->mNotificationLedBrightnessLevel:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMultipleLedsEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMultipleLedsEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLowARGB:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryLowARGB:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedPulseEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedPulseEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryFullARGB:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryFullARGB:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryMediumARGB:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryMediumARGB:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/os/BatteryProperties;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateLedPulse()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMultiColorLed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMultiColorLed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdjustableNotificationLedBrightness:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAdjustableNotificationLedBrightness:Z

    return p1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 818
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 819
    if-eqz p2, :cond_0

    :try_start_0
    array-length v9, p2

    if-eqz v9, :cond_0

    const-string v9, "-a"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 820
    :cond_0
    const-string v6, "Current Battery Service state:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_1

    .line 822
    const-string v6, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  AC powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v6, :cond_2

    .line 826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Dock AC powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  USB powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Wireless powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  health: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    const-string v6, "  scale: 100"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  voltage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  temperature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  technology: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, v7, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v6, :cond_3

    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  dock_status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  dock_health: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  dock_present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  dock_level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  dock_voltage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  dock_temperature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  dock_technology: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, v7, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    :cond_3
    :goto_0
    monitor-exit v8

    .line 911
    return-void

    .line 847
    :cond_4
    array-length v9, p2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_13

    const-string v9, "set"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 848
    const/4 v9, 0x1

    aget-object v1, p2, v9

    .line 849
    .local v1, "key":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v5, p2, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    .local v5, "value":Ljava/lang/String;
    :try_start_1
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v9, :cond_5

    .line 852
    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 854
    :cond_5
    const/4 v4, 0x1

    .line 855
    .local v4, "update":Z
    const-string v9, "ac"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 856
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_6

    :goto_1
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 877
    :goto_2
    if-eqz v4, :cond_3

    .line 878
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 880
    .local v2, "ident":J
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 881
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 883
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 886
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    :catch_0
    move-exception v0

    .line 887
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 910
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v4    # "update":Z
    .restart local v5    # "value":Ljava/lang/String;
    :cond_6
    move v6, v7

    .line 856
    goto :goto_1

    .line 857
    :cond_7
    :try_start_5
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v9, :cond_9

    const-string v9, "dockac"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 858
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_8

    :goto_3
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3

    .line 859
    :cond_9
    const-string v9, "usb"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 860
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_a

    :goto_4
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    goto :goto_2

    :cond_a
    move v6, v7

    goto :goto_4

    .line 861
    :cond_b
    const-string v9, "wireless"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 862
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_c

    :goto_5
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    goto :goto_2

    :cond_c
    move v6, v7

    goto :goto_5

    .line 863
    :cond_d
    const-string v6, "status"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 864
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    goto/16 :goto_2

    .line 865
    :cond_e
    const-string v6, "level"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 866
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    goto/16 :goto_2

    .line 867
    :cond_f
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v6, :cond_10

    const-string v6, "dockstatus"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 868
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    goto/16 :goto_2

    .line 869
    :cond_10
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v6, :cond_11

    const-string v6, "docklevel"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 870
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    goto/16 :goto_2

    .line 871
    :cond_11
    const-string v6, "invalid"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 872
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_2

    .line 874
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown set option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 883
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 889
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_13
    :try_start_6
    array-length v7, p2

    if-ne v7, v6, :cond_15

    const-string v6, "reset"

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v2

    .line 892
    .restart local v2    # "ident":J
    :try_start_7
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_14

    .line 893
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 894
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 895
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 898
    :cond_14
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 901
    .end local v2    # "ident":J
    :cond_15
    const-string v6, "Dump current battery state, or:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v6, :cond_16

    .line 903
    const-string v6, "  set [ac|dockac|usb|wireless|status|level|dockstatus|docklevel|invalid] <value>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    :goto_6
    const-string v6, "  reset"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    :cond_16
    const-string v6, "  set [ac|usb|wireless|status|level|invalid] <value>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6
.end method

.method private getDockIconLocked(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const v0, 0x108066f

    const v1, 0x1080661

    .line 802
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 814
    :cond_0
    :goto_0
    return v0

    .line 804
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 805
    goto :goto_0

    .line 806
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 808
    :cond_3
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 812
    goto :goto_0

    .line 814
    :cond_5
    const v0, 0x108067d

    goto :goto_0
.end method

.method private getIconLocked(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const v0, 0x108066f

    const v1, 0x1080661

    .line 784
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 797
    :cond_0
    :goto_0
    return v0

    .line 786
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 787
    goto :goto_0

    .line 788
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 790
    :cond_3
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 794
    goto :goto_0

    .line 797
    :cond_5
    const v0, 0x108067d

    goto :goto_0
.end method

.method private isPoweredLocked(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    .prologue
    const/4 v0, 0x1

    .line 279
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    if-ne v1, v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v1, :cond_0

    .line 285
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v1, :cond_0

    .line 288
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-nez v1, :cond_0

    .line 291
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logBatteryStatsLocked()V
    .locals 11

    .prologue
    .line 718
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 719
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 722
    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 728
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batterystats.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .end local v2    # "dumpFile":Ljava/io/File;
    .local v3, "dumpFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 730
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .local v5, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 731
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 734
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 741
    if-eqz v5, :cond_2

    .line 743
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 748
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    .line 749
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_0

    .line 744
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 745
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 735
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 736
    .local v6, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 741
    if-eqz v4, :cond_3

    .line 743
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 748
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 749
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 744
    .restart local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 745
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 737
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 738
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 741
    if-eqz v4, :cond_4

    .line 743
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 748
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 749
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 744
    :catch_4
    move-exception v6

    .line 745
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 741
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 743
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 748
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 749
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    .line 744
    :catch_5
    move-exception v6

    .line 745
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 741
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .line 737
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_4

    .line 735
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private logOutlierLocked(J)V
    .locals 11
    .param p1, "duration"    # J

    .prologue
    .line 756
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 757
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "durationThresholdString":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 764
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 765
    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 766
    .local v1, "dischargeThreshold":I
    cmp-long v7, p1, v4

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    .line 769
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :cond_0
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v6

    .line 776
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processValuesLocked(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    .line 364
    const/4 v11, 0x0

    .line 365
    .local v11, "logOutlier":Z
    const-wide/16 v8, 0x0

    .line 367
    .local v8, "dischargeDuration":J
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    .line 369
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 371
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_17

    .line 372
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 378
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    .line 379
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_19

    .line 380
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    .line 420
    :cond_1
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v0, :cond_2

    .line 428
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    iget v3, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setDockBatteryState(IIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 437
    :cond_2
    :goto_4
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 438
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 440
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v1, :cond_1a

    :cond_3
    const/4 v7, 0x1

    .line 447
    .local v7, "batteryChanged":Z
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryStatus:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryHealth:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryPresent:Z

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryLevel:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockPlugType:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryVoltage:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryTemperature:I

    if-eq v0, v1, :cond_1b

    :cond_4
    const/4 v10, 0x1

    .line 455
    .local v10, "dockBatteryChanged":Z
    :goto_6
    if-nez p1, :cond_5

    if-nez v7, :cond_5

    if-nez v10, :cond_5

    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v1, :cond_15

    .line 458
    :cond_5
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_6

    .line 459
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_1c

    .line 464
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-eq v0, v1, :cond_6

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 466
    const/4 v11, 0x1

    .line 467
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 470
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 478
    :cond_6
    :goto_7
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_8

    .line 482
    :cond_7
    const/16 v1, 0xaa3

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 486
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryStatus:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryHealth:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryPresent:Z

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockPlugType:I

    if-eq v0, v1, :cond_a

    .line 491
    :cond_9
    const/16 v1, 0xab3

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 496
    :cond_a
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v1, :cond_b

    .line 499
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 502
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastDockBatteryLevel:I

    if-eq v0, v1, :cond_c

    .line 506
    const/16 v0, 0xab2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 510
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_d

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 515
    const/4 v11, 0x1

    .line 518
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_1f

    .line 520
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_e

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 536
    :cond_e
    :goto_a
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v0, :cond_f

    .line 537
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatteryLevelLow:Z

    if-nez v0, :cond_22

    .line 539
    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_f

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatteryLevelLow:Z

    .line 557
    :cond_f
    :goto_b
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    .line 562
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_11

    :cond_10
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/BatteryService;->mLastDockPlugType:I

    if-nez v0, :cond_25

    .line 564
    :cond_11
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    :cond_12
    :goto_c
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 587
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    :cond_13
    :goto_d
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 611
    if-eqz v11, :cond_14

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_14

    .line 612
    invoke-direct {p0, v8, v9}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 615
    :cond_14
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 616
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 617
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 618
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 619
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 620
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 621
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 622
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 623
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastDockBatteryStatus:I

    .line 624
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastDockBatteryHealth:I

    .line 625
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastDockBatteryPresent:Z

    .line 626
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastDockBatteryLevel:I

    .line 627
    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastDockPlugType:I

    .line 628
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastDockBatteryVoltage:I

    .line 629
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastDockBatteryTemperature:I

    .line 630
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 632
    :cond_15
    return-void

    .line 369
    .end local v7    # "batteryChanged":Z
    .end local v10    # "dockBatteryChanged":Z
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 373
    :cond_17
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_18

    .line 374
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 375
    :cond_18
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 381
    :cond_19
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    goto/16 :goto_2

    .line 440
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 447
    .restart local v7    # "batteryChanged":Z
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 472
    .restart local v10    # "dockBatteryChanged":Z
    :cond_1c
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_6

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 475
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_7

    .line 482
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 491
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 526
    :cond_1f
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_20

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_a

    .line 528
    :cond_20
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_21

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_a

    .line 530
    :cond_21
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v1, :cond_e

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_a

    .line 545
    :cond_22
    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    if-eqz v0, :cond_23

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatteryLevelLow:Z

    goto/16 :goto_b

    .line 547
    :cond_23
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_24

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatteryLevelLow:Z

    goto/16 :goto_b

    .line 549
    :cond_24
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v1, :cond_f

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mDockBatteryLevelLow:Z

    goto/16 :goto_b

    .line 573
    :cond_25
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_26

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_27

    :cond_26
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/server/BatteryService;->mLastDockPlugType:I

    if-eqz v0, :cond_12

    .line 575
    :cond_27
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    .line 595
    :cond_28
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_13

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 597
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    .line 432
    .end local v7    # "batteryChanged":Z
    .end local v10    # "dockBatteryChanged":Z
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 423
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method private sendIntentLocked()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 636
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x60000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 640
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v3}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 641
    .local v1, "icon":I
    const/4 v0, 0x0

    .line 643
    .local v0, "dockIcon":I
    const-string v3, "status"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string v3, "health"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v3, "present"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 646
    const-string v3, "level"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const-string v3, "scale"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string v3, "icon-small"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v3, "plugged"

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v3, "voltage"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string v3, "temperature"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    const-string v3, "technology"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v4, v4, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v3, "invalid_charger"

    iget v4, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mDockBatterySupported:Z

    if-eqz v3, :cond_0

    .line 655
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    invoke-direct {p0, v3}, Lcom/android/server/BatteryService;->getDockIconLocked(I)I

    move-result v0

    .line 657
    const-string v3, "dock_status"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    const-string v3, "dock_health"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    const-string v3, "dock_present"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    const-string v3, "dock_level"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    const-string v3, "dock_scale"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    const-string v3, "dock_icon-small"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string v3, "dock_plugged"

    iget v4, p0, Lcom/android/server/BatteryService;->mDockPlugType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string v3, "dock_voltage"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const-string v3, "dock_temperature"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    const-string v3, "dock_technology"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v4, v4, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v3, "usb_wakeup"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    const-string v3, "ac_online"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    const-string v3, "dock_ac_online"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$8;

    invoke-direct {v4, p0, v2}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    return-void
.end method

.method private shouldSendBatteryLowLocked()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 295
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_1

    move v1, v2

    .line 296
    .local v1, "plugged":Z
    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_2

    move v0, v2

    .line 304
    .local v0, "oldPlugged":Z
    :goto_1
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_3

    if-nez v0, :cond_0

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_3

    :cond_0
    :goto_2
    return v2

    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_1
    move v1, v3

    .line 295
    goto :goto_0

    .restart local v1    # "plugged":Z
    :cond_2
    move v0, v3

    .line 296
    goto :goto_1

    .restart local v0    # "oldPlugged":Z
    :cond_3
    move v2, v3

    .line 304
    goto :goto_2
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ge v0, v1, :cond_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_1
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_0
    return-void
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .locals 2
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 354
    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 360
    :goto_0
    monitor-exit v1

    .line 361
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v0, p1}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateBatteryWarningLevelLocked()V
    .locals 5

    .prologue
    .line 260
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 261
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 263
    .local v0, "defWarnLevel":I
    const-string v2, "low_power_trigger_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 265
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v2, :cond_0

    .line 266
    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 268
    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_1

    .line 269
    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 271
    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 273
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 274
    return-void
.end method

.method private declared-synchronized updateLedPulse()V
    .locals 1

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    monitor-exit p0

    return-void

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 7
    .param p1, "phase"    # I

    .prologue
    .line 236
    const/16 v3, 0x226

    if-ne p1, v3, :cond_1

    .line 238
    iget-object v4, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$1;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 247
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 248
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v5, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 251
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 252
    monitor-exit v4

    .line 257
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 252
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 253
    :cond_1
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_0

    .line 254
    new-instance v1, Lcom/android/server/BatteryService$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 255
    .local v1, "observer":Lcom/android/server/BatteryService$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/BatteryService$SettingsObserver;->observe()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 221
    const-string v2, "batteryproperties"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v1

    .line 225
    .local v1, "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    :try_start_0
    new-instance v2, Lcom/android/server/BatteryService$BatteryListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-interface {v1, v2}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    const-string v2, "batterymanager"

    new-instance v3, Lcom/android/server/BatteryService$BinderService;

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    const-class v2, Landroid/os/BatteryManagerInternal;

    new-instance v3, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 232
    return-void

    .line 226
    :catch_0
    move-exception v2

    goto :goto_0
.end method
