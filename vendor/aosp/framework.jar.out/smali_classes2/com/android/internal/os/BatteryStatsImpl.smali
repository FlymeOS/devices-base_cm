.class public Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;,
        Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBase;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;,
        Lcom/android/internal/os/BatteryStatsImpl$MyHandler;,
        Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_HISTORY:Z = false

.field static final DELAY_UPDATE_WAKELOCKS:J = 0x1388L

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final DELTA_EVENT_FLAG:I = 0x800000

.field static final DELTA_STATE2_FLAG:I = 0x200000

.field static final DELTA_STATE_FLAG:I = 0x100000

.field static final DELTA_STATE_MASK:I = -0x1000000

.field static final DELTA_TIME_ABS:I = 0x7fffd

.field static final DELTA_TIME_INT:I = 0x7fffe

.field static final DELTA_TIME_LONG:I = 0x7ffff

.field static final DELTA_TIME_MASK:I = 0x7ffff

.field static final DELTA_WAKELOCK_FLAG:I = 0x400000

.field private static final MAGIC:I = -0x458a8b8b

.field static final MAX_HISTORY_BUFFER:I = 0x40000

.field private static final MAX_HISTORY_ITEMS:I = 0x7d0

.field static final MAX_LEVEL_STEPS:I = 0xc8

.field static final MAX_MAX_HISTORY_BUFFER:I = 0x50000

.field private static final MAX_MAX_HISTORY_ITEMS:I = 0xbb8

.field private static final MAX_WAKELOCKS_PER_UID:I = 0x64

.field static final MSG_REPORT_POWER_CHANGE:I = 0x2

.field static final MSG_UPDATE_WAKELOCKS:I = 0x1

.field static final NET_UPDATE_ALL:I = 0xffff

.field static final NET_UPDATE_MOBILE:I = 0x1

.field static final NET_UPDATE_WIFI:I = 0x2

.field private static final PROC_WAKELOCKS_FORMAT:[I

.field static final STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final USE_OLD_HISTORY:Z = false

.field private static final VERSION:I = 0x74

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I

.field private static sNumSpeedSteps:I


# instance fields
.field final mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

.field mAudioOnNesting:I

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mAudioTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothOn:Z

.field mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mBluetoothPingCount:I

.field private mBluetoothPingStart:I

.field mBluetoothState:I

.field final mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

.field mChangedStates:I

.field mChangedStates2:I

.field final mChargeStepDurations:[J

.field public final mCheckinFile:Lcom/android/internal/os/AtomicFile;

.field private mCurMobileSnapshot:Landroid/net/NetworkStats;

.field mCurStepMode:I

.field private mCurWifiSnapshot:Landroid/net/NetworkStats;

.field mCurrentBatteryLevel:I

.field mDischargeAmountScreenOff:I

.field mDischargeAmountScreenOffSinceCharge:I

.field mDischargeAmountScreenOn:I

.field mDischargeAmountScreenOnSinceCharge:I

.field mDischargeCurrentLevel:I

.field mDischargePlugLevel:I

.field mDischargeScreenOffUnplugLevel:I

.field mDischargeScreenOnUnplugLevel:I

.field mDischargeStartLevel:I

.field final mDischargeStepDurations:[J

.field mDischargeUnplugLevel:I

.field mDistributeWakelockCpu:Z

.field mEndPlatformVersion:Ljava/lang/String;

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field mFlashlightOn:Z

.field mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalWifiRunning:Z

.field mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpsNesting:I

.field public final mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

.field mHaveBatteryLevel:Z

.field mHighDischargeAmountSinceCharge:I

.field mHistory:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryBaseTime:J

.field final mHistoryBuffer:Landroid/os/Parcel;

.field mHistoryBufferLastPos:I

.field mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryOverflow:Z

.field final mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInitStepMode:I

.field private mInitialAcquireWakeName:Ljava/lang/String;

.field private mInitialAcquireWakeUid:I

.field mInteractive:Z

.field mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mIteratingHistory:Z

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastChargeStepLevel:I

.field mLastChargeStepTime:J

.field mLastDischargeStepLevel:I

.field mLastDischargeStepTime:J

.field mLastHistoryElapsedRealtime:J

.field private mLastMobileSnapshot:Landroid/net/NetworkStats;

.field final mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastRecordedClockRealtime:J

.field mLastRecordedClockTime:J

.field mLastWakeupReason:Ljava/lang/String;

.field mLastWakeupUptimeMs:J

.field private mLastWifiSnapshot:Landroid/net/NetworkStats;

.field mLastWriteTime:J

.field private mLoadedNumConnectivityChange:I

.field mLowDischargeAmountSinceCharge:I

.field mLowPowerModeEnabled:Z

.field mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMaxChargeStepLevel:I

.field mMinDischargeStepLevel:I

.field private mMobileIfaces:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveStartTime:J

.field mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioPowerState:I

.field mModStepMode:I

.field final mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field mNextHistoryTagIdx:I

.field mNoAutoReset:Z

.field mNumChargeStepDurations:I

.field private mNumConnectivityChange:I

.field mNumDischargeStepDurations:I

.field mNumHistoryItems:I

.field mNumHistoryTagChars:I

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field final mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPendingWrite:Landroid/os/Parcel;

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneServiceState:I

.field private mPhoneServiceStateRaw:I

.field mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field mPhoneSignalStrengthBinRaw:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneSimStateRaw:I

.field private final mProcWakelockFileStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;

.field mReadHistoryChars:I

.field mReadHistoryStrings:[Ljava/lang/String;

.field mReadHistoryUids:[I

.field private mReadOverflow:Z

.field mRealtime:J

.field mRealtimeStart:J

.field mRecordAllHistory:Z

.field mRecordingHistory:Z

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenState:I

.field mSensorNesting:I

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mShuttingDown:Z

.field mStartClockTime:J

.field mStartCount:I

.field mStartPlatformVersion:Ljava/lang/String;

.field private mTmpNetworkStats:Landroid/net/NetworkStats;

.field private final mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

.field mTrackRunningHistoryElapsedRealtime:J

.field mTrackRunningHistoryUptime:J

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field private mUnpluggedNumConnectivityChange:I

.field mUptime:J

.field mUptimeStart:J

.field mVideoOnNesting:I

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mVideoTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLockImportant:Z

.field mWakeLockNesting:I

.field private final mWakeupReasonStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWifiBatchedScanTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mWifiFullLockNesting:I

.field private mWifiIfaces:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field mWifiMulticastNesting:I

.field final mWifiMulticastTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWifiRunningTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiScanNesting:I

.field final mWifiScanTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiSignalStrengthBin:I

.field final mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiState:I

.field final mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiSupplState:I

.field final mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 402
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->PROC_WAKELOCKS_FORMAT:[I

    .line 412
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->WAKEUP_SOURCES_FORMAT:[I

    .line 8792
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$3;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$3;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 402
    nop

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    .line 412
    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x32

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 447
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 155
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 190
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 198
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 201
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 208
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 209
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 210
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 211
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 216
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 217
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 218
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 219
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 220
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 221
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 222
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 224
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 257
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 258
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 278
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 279
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 280
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 285
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 286
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 289
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 291
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 300
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 301
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 303
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 304
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 306
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 307
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 313
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothState:I

    .line 314
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 316
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 353
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 354
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 355
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 361
    const/16 v0, 0xc8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    .line 367
    const/16 v0, 0xc8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    .line 369
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 372
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 374
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 375
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 376
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 394
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 395
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 425
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 434
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 435
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurMobileSnapshot:Landroid/net/NetworkStats;

    .line 436
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastMobileSnapshot:Landroid/net/NetworkStats;

    .line 437
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurWifiSnapshot:Landroid/net/NetworkStats;

    .line 438
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiSnapshot:Landroid/net/NetworkStats;

    .line 440
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 442
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 444
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 2308
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2309
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2679
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3763
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3793
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3835
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7674
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7675
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 448
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 449
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 450
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 451
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 452
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/16 v6, 0x32

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 6468
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 155
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 190
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 198
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 201
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 208
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 209
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 210
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 211
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 216
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 217
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 218
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 219
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 220
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 221
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 222
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 224
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 257
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 258
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 278
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 279
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 280
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 285
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 286
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 289
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 291
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 300
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 301
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 303
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 304
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 306
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 307
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 313
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothState:I

    .line 314
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 316
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 353
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 354
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 355
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 361
    const/16 v0, 0xc8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    .line 367
    const/16 v0, 0xc8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    .line 369
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 372
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 374
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 375
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 376
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 394
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 395
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 425
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 434
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 435
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurMobileSnapshot:Landroid/net/NetworkStats;

    .line 436
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastMobileSnapshot:Landroid/net/NetworkStats;

    .line 437
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurWifiSnapshot:Landroid/net/NetworkStats;

    .line 438
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiSnapshot:Landroid/net/NetworkStats;

    .line 440
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 442
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 444
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 2308
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2309
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2679
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3763
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3793
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3835
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7674
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7675
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6469
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 6470
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6471
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6472
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6473
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 6474
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 11
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 6400
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 155
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 170
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 176
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 190
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 198
    new-instance v1, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 208
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 209
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 210
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 211
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 212
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 218
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 220
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 221
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 222
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 224
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 257
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 258
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 278
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 279
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 280
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 285
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 286
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 289
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 291
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 300
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 301
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 303
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 304
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 306
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 307
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 313
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothState:I

    .line 314
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 316
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 353
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 354
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 355
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 361
    const/16 v1, 0xc8

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    .line 367
    const/16 v1, 0xc8

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    .line 369
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 372
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 374
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 375
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 376
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 385
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 394
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 395
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 396
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 424
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 425
    const/4 v1, 0x3

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 431
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 434
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 435
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v8, 0x32

    invoke-direct {v1, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurMobileSnapshot:Landroid/net/NetworkStats;

    .line 436
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v8, 0x32

    invoke-direct {v1, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastMobileSnapshot:Landroid/net/NetworkStats;

    .line 437
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v8, 0x32

    invoke-direct {v1, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurWifiSnapshot:Landroid/net/NetworkStats;

    .line 438
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v8, 0x32

    invoke-direct {v1, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiSnapshot:Landroid/net/NetworkStats;

    .line 440
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 442
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 444
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 2308
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2309
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2679
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3763
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3793
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3835
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7674
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7675
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6401
    if-eqz p1, :cond_0

    .line 6402
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStatsName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStatsName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bin.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 6407
    :goto_0
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStatsName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-checkin.bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6408
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6409
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 6410
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 6412
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int/lit8 v8, v0, -0x64

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6405
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    goto :goto_0

    .line 6414
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0x9

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6415
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6416
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6417
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 6418
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0xc8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6417
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6421
    :cond_2
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0xc7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6422
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x11

    if-ge v0, v1, :cond_3

    .line 6423
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x12c

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6422
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6426
    :cond_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 6427
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6428
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6426
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6430
    :cond_4
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0x190

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6431
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0x191

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6432
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6433
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6434
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6435
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x4

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6436
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x5

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6437
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x8

    if-ge v0, v1, :cond_5

    .line 6438
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x258

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6437
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6440
    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0xd

    if-ge v0, v1, :cond_6

    .line 6441
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x2bc

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6440
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6443
    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 6444
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x320

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6443
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6447
    :cond_7
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x6

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6448
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    .line 6449
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x1f4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6448
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6451
    :cond_8
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6452
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x8

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6453
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0x9

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6454
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 6455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    .line 6456
    .local v4, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    .line 6457
    .local v2, "realtime":J
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    .line 6458
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 6459
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 6460
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 6461
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 6462
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6463
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 6464
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 6465
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6466
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    return-object v0
.end method

.method private addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v4, 0x0

    .line 2291
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    if-eqz v0, :cond_0

    .line 2292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t do this while iterating history!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2294
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2295
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2296
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2297
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 2298
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 2299
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2300
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2301
    const/4 v0, 0x0

    iput v0, p6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2302
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2306
    return-void
.end method

.method private static addLevelSteps([JIJIJJ)I
    .locals 8
    .param p0, "steps"    # [J
    .param p1, "stepCount"    # I
    .param p2, "lastStepTime"    # J
    .param p4, "numStepLevels"    # I
    .param p5, "modeBits"    # J
    .param p7, "elapsedRealtime"    # J

    .prologue
    .line 6985
    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-ltz v3, :cond_2

    if-lez p4, :cond_2

    .line 6986
    sub-long v0, p7, p2

    .line 6987
    .local v0, "duration":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_1

    .line 6988
    const/4 v3, 0x0

    const/4 v6, 0x1

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p0, v3, p0, v6, v7}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 6989
    sub-int v3, p4, v2

    int-to-long v6, v3

    div-long v4, v0, v6

    .line 6990
    .local v4, "thisDuration":J
    sub-long/2addr v0, v4

    .line 6991
    const-wide v6, 0xffffffffffL

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 6992
    const-wide v4, 0xffffffffffL

    .line 6994
    :cond_0
    const/4 v3, 0x0

    or-long v6, v4, p5

    aput-wide v6, p0, v3

    .line 6987
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6996
    .end local v4    # "thisDuration":J
    :cond_1
    add-int/2addr p1, p4

    .line 6997
    array-length v3, p0

    if-le p1, v3, :cond_2

    .line 6998
    array-length p1, p0

    .line 7001
    .end local v0    # "duration":J
    .end local v2    # "i":I
    :cond_2
    return p1
.end method

.method private buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2047
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x19

    const/high16 v1, -0x2000000

    and-int/2addr v0, v1

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v1, v1, 0xe

    const v2, 0x1ffc000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    and-int/lit16 v1, v1, 0x3fff

    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 4
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2053
    const/4 v0, 0x0

    .line 2054
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2055
    const/4 v0, 0x1

    .line 2061
    :cond_0
    :goto_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    .line 2056
    :cond_1
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 2057
    const/4 v0, 0x2

    goto :goto_0

    .line 2058
    :cond_2
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 2059
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private computeTimePerLevel([JI)J
    .locals 8
    .param p1, "steps"    # [J
    .param p2, "numSteps"    # I

    .prologue
    .line 7328
    if-gtz p2, :cond_0

    .line 7329
    const-wide/16 v4, -0x1

    .line 7335
    :goto_0
    return-wide v4

    .line 7331
    :cond_0
    const-wide/16 v2, 0x0

    .line 7332
    .local v2, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 7333
    aget-wide v4, p1, v0

    const-wide v6, 0xffffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 7332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7335
    :cond_1
    int-to-long v4, p2

    div-long v4, v2, v4

    goto :goto_0
.end method

.method private static excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3932
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 3933
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 3934
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 3935
    .local v1, "newArray":[Ljava/lang/String;
    if-lez v0, :cond_0

    .line 3936
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3938
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 3939
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3943
    .end local v1    # "newArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object v1, p0

    goto :goto_0
.end method

.method private fixPhoneServiceState(II)I
    .locals 2
    .param p1, "state"    # I
    .param p2, "signalBin"    # I

    .prologue
    const/4 v1, 0x1

    .line 3242
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    if-ne v0, v1, :cond_0

    .line 3245
    if-ne p1, v1, :cond_0

    if-lez p2, :cond_0

    .line 3247
    const/4 p1, 0x0

    .line 3251
    :cond_0
    return p1
.end method

.method private getCurrentBluetoothPingCount()I
    .locals 3

    .prologue
    .line 1866
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 1867
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1868
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1869
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 1872
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3922
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3928
    .end local p0    # "array":[Ljava/lang/String;
    :goto_0
    return-object p0

    .line 3925
    .restart local p0    # "array":[Ljava/lang/String;
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 3926
    .local v0, "newArray":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3927
    array-length v1, p0

    aput-object p1, v0, v1

    move-object p0, v0

    .line 3928
    goto :goto_0
.end method

.method private initActiveHistoryEventsLocked(JJ)V
    .locals 13
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 6776
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v6, v1, :cond_3

    .line 6777
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 6776
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6781
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 6782
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_0

    .line 6785
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 6786
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 6787
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 6788
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 6787
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6793
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method private final parseProcWakelocks([BIZ)Ljava/util/Map;
    .locals 26
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1760
    const/16 v21, 0x0

    .line 1764
    .local v21, "numUpdatedWlNames":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_0

    aget-byte v2, p1, v15

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v15

    if-eqz v2, :cond_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1765
    :cond_0
    add-int/lit8 v4, v15, 0x1

    .local v4, "endIndex":I
    move v3, v4

    .line 1767
    .local v3, "startIndex":I
    monitor-enter p0

    .line 1768
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    move-object/from16 v19, v0

    .line 1770
    .local v19, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockUpdateVersion()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setKernelWakelockUpdateVersion(I)V

    .line 1771
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_a

    .line 1772
    move v4, v3

    .line 1773
    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    aget-byte v2, p1, v4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    aget-byte v2, p1, v4

    if-eqz v2, :cond_1

    .line 1774
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1775
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1778
    add-int/lit8 v2, p2, -0x1

    if-lt v4, v2, :cond_2

    .line 1779
    monitor-exit p0

    .line 1836
    :goto_3
    return-object v19

    .line 1782
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 1783
    .local v6, "nameStringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 1787
    .local v7, "wlData":[J
    move/from16 v17, v3

    .local v17, "j":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v4, :cond_4

    .line 1788
    aget-byte v2, p1, v17

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    aput-byte v2, p1, v17

    .line 1787
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1790
    :cond_4
    if-eqz p3, :cond_6

    sget-object v5, Lcom/android/internal/os/BatteryStatsImpl;->WAKEUP_SOURCES_FORMAT:[I

    :goto_5
    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v22

    .line 1795
    .local v22, "parsed":Z
    const/4 v2, 0x0

    aget-object v20, v6, v2

    .line 1796
    .local v20, "name":Ljava/lang/String;
    const/4 v2, 0x1

    aget-wide v8, v7, v2

    long-to-int v11, v8

    .line 1798
    .local v11, "count":I
    if-eqz p3, :cond_7

    .line 1800
    const/4 v2, 0x2

    aget-wide v8, v7, v2

    const-wide/16 v24, 0x3e8

    mul-long v12, v8, v24

    .line 1806
    .local v12, "totalTime":J
    :goto_6
    if-eqz v22, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1807
    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1808
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockUpdateVersion()I

    move-result v14

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IJI)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    add-int/lit8 v21, v21, 0x1

    .line 1824
    :cond_5
    :goto_7
    move v3, v4

    .line 1825
    goto :goto_1

    .line 1790
    .end local v11    # "count":I
    .end local v12    # "totalTime":J
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "parsed":Z
    :cond_6
    sget-object v5, Lcom/android/internal/os/BatteryStatsImpl;->PROC_WAKELOCKS_FORMAT:[I

    goto :goto_5

    .line 1803
    .restart local v11    # "count":I
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v22    # "parsed":Z
    :cond_7
    const/4 v2, 0x2

    aget-wide v8, v7, v2

    const-wide/16 v24, 0x1f4

    add-long v8, v8, v24

    const-wide/16 v24, 0x3e8

    div-long v12, v8, v24

    .restart local v12    # "totalTime":J
    goto :goto_6

    .line 1812
    :cond_8
    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .line 1813
    .local v18, "kwlStats":Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockUpdateVersion()I

    move-result v5

    if-ne v2, v5, :cond_9

    .line 1814
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    add-int/2addr v2, v11

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 1815
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    add-long/2addr v8, v12

    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    goto :goto_7

    .line 1837
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v11    # "count":I
    .end local v12    # "totalTime":J
    .end local v17    # "j":I
    .end local v18    # "kwlStats":Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v19    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "parsed":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1817
    .restart local v6    # "nameStringArray":[Ljava/lang/String;
    .restart local v7    # "wlData":[J
    .restart local v11    # "count":I
    .restart local v12    # "totalTime":J
    .restart local v17    # "j":I
    .restart local v18    # "kwlStats":Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .restart local v19    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v22    # "parsed":Z
    :cond_9
    :try_start_1
    move-object/from16 v0, v18

    iput v11, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 1818
    move-object/from16 v0, v18

    iput-wide v12, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockUpdateVersion()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    .line 1820
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 1827
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v11    # "count":I
    .end local v12    # "totalTime":J
    .end local v17    # "j":I
    .end local v18    # "kwlStats":Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "parsed":Z
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v2

    move/from16 v0, v21

    if-eq v2, v0, :cond_c

    .line 1829
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1830
    .local v16, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    :cond_b
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1831
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    iget v2, v2, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockUpdateVersion()I

    move-result v5

    if-eq v2, v5, :cond_b

    .line 1832
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 1836
    .end local v16    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    :cond_c
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method private readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1910
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1911
    iput p1, p2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1912
    return-void
.end method

.method private final readKernelWakelockStats()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1718
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 1720
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 1724
    .local v6, "wakeup_sources":Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/proc/wakelocks"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1734
    .local v4, "is":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 1735
    .local v5, "len":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1740
    if-lez v5, :cond_0

    .line 1742
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1743
    aget-byte v7, v0, v3

    if-nez v7, :cond_1

    .line 1744
    move v5, v3

    .line 1750
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->parseProcWakelocks([BIZ)Ljava/util/Map;

    move-result-object v7

    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    :goto_2
    return-object v7

    .line 1725
    :catch_0
    move-exception v1

    .line 1727
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/d/wakeup_sources"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1728
    .restart local v4    # "is":Ljava/io/FileInputStream;
    const/4 v6, 0x1

    goto :goto_0

    .line 1729
    .end local v4    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 1730
    .local v2, "e2":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 1736
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 1737
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 1742
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private recordCurrentTimeChangeLocked(JJJ)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .prologue
    .line 6959
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_0

    .line 6960
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 6961
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockTime:J

    .line 6962
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockRealtime:J

    .line 6963
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 6965
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 6967
    :cond_0
    return-void
.end method

.method private recordShutdownLocked(JJ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 6970
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_0

    .line 6971
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 6972
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockTime:J

    .line 6973
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockRealtime:J

    .line 6974
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 6976
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 6978
    :cond_0
    return-void
.end method

.method private requestWakelockCpuUpdate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2630
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2631
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2632
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2634
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private resetAllStatsLocked()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v10, 0x4

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 6704
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 6705
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    mul-long/2addr v4, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-long/2addr v6, v12

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    .line 6706
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 6708
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6710
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6711
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6712
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6713
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6714
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6715
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6716
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_1

    .line 6717
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6716
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6719
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6720
    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0x11

    if-ge v0, v3, :cond_2

    .line 6721
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6720
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6723
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_3

    .line 6724
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6725
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6723
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6727
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6728
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6729
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6730
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6731
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6732
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6733
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6734
    const/4 v0, 0x0

    :goto_4
    const/16 v3, 0x8

    if-ge v0, v3, :cond_4

    .line 6735
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6734
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6737
    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/16 v3, 0xd

    if-ge v0, v3, :cond_5

    .line 6738
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6737
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6740
    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_6

    .line 6741
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6740
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6743
    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6744
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v10, :cond_7

    .line 6745
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 6744
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6747
    :cond_7
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 6749
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 6750
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6751
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 6752
    add-int/lit8 v0, v0, -0x1

    .line 6749
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6756
    :cond_9
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 6757
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 6758
    .local v2, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_9

    .line 6760
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 6763
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_b
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 6764
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 6765
    .restart local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_a

    .line 6767
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 6770
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 6772
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6773
    return-void
.end method

.method private startRecordingHistory(JJZ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    .prologue
    .line 6944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 6945
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 6946
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockTime:J

    .line 6947
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockRealtime:J

    .line 6948
    if-eqz p5, :cond_1

    const/4 v6, 0x7

    :goto_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 6951
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 6952
    if-eqz p5, :cond_0

    .line 6953
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    .line 6955
    :cond_0
    return-void

    .line 6948
    :cond_1
    const/4 v6, 0x5

    goto :goto_0
.end method

.method private updateAllPhoneStateLocked(III)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "simState"    # I
    .param p3, "strengthBin"    # I

    .prologue
    const/4 v7, 0x1

    .line 3255
    const/4 v3, 0x0

    .line 3256
    .local v3, "scanning":Z
    const/4 v2, 0x0

    .line 3258
    .local v2, "newHistory":Z
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 3259
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 3260
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 3262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3263
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3265
    .local v4, "uptime":J
    if-ne p2, v7, :cond_0

    .line 3268
    if-ne p1, v7, :cond_0

    if-lez p3, :cond_0

    .line 3270
    const/4 p1, 0x0

    .line 3275
    :cond_0
    const/4 v6, 0x3

    if-ne p1, v6, :cond_8

    .line 3276
    const/4 p3, -0x1

    .line 3296
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 3298
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3299
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x200001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3302
    const/4 v2, 0x1

    .line 3303
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3307
    :cond_2
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    if-eq v6, p1, :cond_3

    .line 3308
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v7, v7, -0x1c1

    shl-int/lit8 v8, p1, 0x6

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3312
    const/4 v2, 0x1

    .line 3313
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 3316
    :cond_3
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-eq v6, p3, :cond_6

    .line 3317
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-ltz v6, :cond_4

    .line 3318
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3321
    :cond_4
    if-ltz p3, :cond_9

    .line 3322
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3323
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3325
    :cond_5
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v7, v7, -0x39

    shl-int/lit8 v8, p3, 0x3

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3329
    const/4 v2, 0x1

    .line 3333
    :goto_1
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 3336
    :cond_6
    if-eqz v2, :cond_7

    .line 3337
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3339
    :cond_7
    return-void

    .line 3279
    :cond_8
    if-eqz p1, :cond_1

    .line 3284
    if-ne p1, v7, :cond_1

    .line 3285
    const/4 v3, 0x1

    .line 3286
    const/4 p3, 0x0

    .line 3287
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3288
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3289
    const/4 v2, 0x1

    .line 3292
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto/16 :goto_0

    .line 3331
    :cond_9
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllPhoneSignalStrengthTimersLocked(I)V

    goto :goto_1
.end method

.method private updateNetworkActivityLocked(IJ)V
    .locals 24
    .param p1, "which"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7161
    const-string v3, "net.qtaguid_enabled"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7276
    :cond_0
    :goto_0
    return-void

    .line 7163
    :cond_1
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 7165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurMobileSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v16, v0

    .line 7167
    .local v16, "last":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastMobileSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 7174
    .local v20, "snapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurMobileSnapshot:Landroid/net/NetworkStats;

    .line 7175
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastMobileSnapshot:Landroid/net/NetworkStats;

    .line 7177
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v3, :cond_6

    .line 7178
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStats:Landroid/net/NetworkStats;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v12

    .line 7180
    .local v12, "delta":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStats:Landroid/net/NetworkStats;

    .line 7182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->checkpointRunningLocked(J)J

    move-result-wide v18

    .line 7184
    .local v18, "radioTime":J
    invoke-virtual {v12}, Landroid/net/NetworkStats;->getTotalPackets()J

    move-result-wide v22

    .line 7186
    .local v22, "totalPackets":J
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v17

    .line 7187
    .local v17, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_5

    .line 7188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v12, v15, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7190
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 7187
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 7169
    .end local v12    # "delta":Landroid/net/NetworkStats;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v17    # "size":I
    .end local v18    # "radioTime":J
    .end local v20    # "snapshot":Landroid/net/NetworkStats;
    .end local v22    # "totalPackets":J
    :catch_0
    move-exception v13

    .line 7170
    .local v13, "e":Ljava/io/IOException;
    const-string v3, "BatteryStatsImpl"

    const-string v4, "Failed to read mobile network stats"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 7192
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v12    # "delta":Landroid/net/NetworkStats;
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v15    # "i":I
    .restart local v17    # "size":I
    .restart local v18    # "radioTime":J
    .restart local v20    # "snapshot":Landroid/net/NetworkStats;
    .restart local v22    # "totalPackets":J
    :cond_3
    iget v3, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    .line 7193
    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    const/4 v3, 0x0

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7195
    const/4 v3, 0x1

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7198
    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-lez v3, :cond_4

    .line 7200
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v8, v4, v6

    .line 7201
    .local v8, "appPackets":J
    mul-long v4, v18, v8

    div-long v10, v4, v22

    .line 7202
    .local v10, "appRadioTime":J
    invoke-virtual {v2, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteMobileRadioActiveTimeLocked(J)V

    .line 7205
    sub-long v18, v18, v10

    .line 7206
    sub-long v22, v22, v8

    .line 7209
    .end local v8    # "appPackets":J
    .end local v10    # "appRadioTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_2

    .line 7219
    .end local v2    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-lez v3, :cond_6

    .line 7221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7227
    .end local v12    # "delta":Landroid/net/NetworkStats;
    .end local v15    # "i":I
    .end local v16    # "last":Landroid/net/NetworkStats;
    .end local v17    # "size":I
    .end local v18    # "radioTime":J
    .end local v20    # "snapshot":Landroid/net/NetworkStats;
    .end local v22    # "totalPackets":J
    :cond_6
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 7229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurWifiSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v16, v0

    .line 7231
    .restart local v16    # "last":Landroid/net/NetworkStats;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 7238
    .restart local v20    # "snapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurWifiSnapshot:Landroid/net/NetworkStats;

    .line 7239
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastWifiSnapshot:Landroid/net/NetworkStats;

    .line 7241
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v3, :cond_0

    .line 7242
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStats:Landroid/net/NetworkStats;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v12

    .line 7244
    .restart local v12    # "delta":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStats:Landroid/net/NetworkStats;

    .line 7246
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v17

    .line 7247
    .restart local v17    # "size":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    .line 7248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v12, v15, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7257
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 7247
    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 7233
    .end local v12    # "delta":Landroid/net/NetworkStats;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v17    # "size":I
    .end local v20    # "snapshot":Landroid/net/NetworkStats;
    :catch_1
    move-exception v13

    .line 7234
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v3, "BatteryStatsImpl"

    const-string v4, "Failed to read wifi network stats"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 7259
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v12    # "delta":Landroid/net/NetworkStats;
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v15    # "i":I
    .restart local v17    # "size":I
    .restart local v20    # "snapshot":Landroid/net/NetworkStats;
    :cond_8
    iget v3, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    .line 7260
    .restart local v2    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    const/4 v3, 0x2

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7262
    const/4 v3, 0x3

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_4
.end method

.method private writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .locals 5
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1892
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1894
    .local v1, "idxObj":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 1895
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1905
    .local v0, "idx":I
    :goto_0
    return v0

    .line 1897
    .end local v0    # "idx":I
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 1898
    .restart local v0    # "idx":I
    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 1899
    .local v2, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1900
    iput v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1901
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 1903
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    goto :goto_0
.end method


# virtual methods
.method addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 19
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2192
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v5, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return-void

    .line 2196
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long v6, v6, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v16, v6, v8

    .line 2197
    .local v16, "timeDiff":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v12, v5, v6

    .line 2198
    .local v12, "diffStates":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v13, v5, v6

    .line 2199
    .local v13, "diffStates2":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v14, v5, v6

    .line 2200
    .local v14, "lastDiffStates":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v15, v5, v6

    .line 2206
    .local v15, "lastDiffStates2":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    if-ltz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v5, :cond_8

    const-wide/16 v6, 0x3e8

    cmp-long v5, v16, v6

    if-gez v5, :cond_8

    and-int v5, v12, v14

    if-nez v5, :cond_8

    and-int v5, v13, v15

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v5, :cond_2

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v5, :cond_8

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v5, :cond_3

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v5, :cond_8

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v5, :cond_4

    move-object/from16 v0, p5

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v5, :cond_8

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p5

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p5

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p5

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p5

    iget-short v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-char v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p5

    iget-char v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v5, v6, :cond_8

    .line 2224
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2226
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long p1, v6, v8

    .line 2231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v5, :cond_5

    .line 2232
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2233
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, v6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2238
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v5, :cond_6

    .line 2239
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2240
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, v6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2245
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v5, :cond_7

    .line 2246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, p5

    iput v5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2247
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2248
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, v6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2250
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2253
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    .line 2254
    .local v4, "dataSize":I
    const/high16 v5, 0x40000

    if-lt v4, v5, :cond_b

    .line 2255
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    if-nez v5, :cond_9

    .line 2256
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2257
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2258
    const/4 v10, 0x6

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    goto/16 :goto_0

    .line 2266
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v5, v6, :cond_a

    const/high16 v5, 0x50000

    if-ge v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v5, v6

    const/high16 v6, 0x1d0000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v5, v6

    const/high16 v6, -0x70000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 2275
    :cond_a
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    goto/16 :goto_0

    .line 2279
    :cond_b
    if-nez v4, :cond_c

    .line 2281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p5

    iput-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2282
    move-object/from16 v0, p5

    iget-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockTime:J

    .line 2283
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockRealtime:J

    .line 2284
    const/4 v10, 0x7

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2286
    :cond_c
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    goto/16 :goto_0
.end method

.method addHistoryEventLocked(JJILjava/lang/String;I)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2397
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2398
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2399
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2400
    return-void
.end method

.method addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2332
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2335
    return-void
.end method

.method addHistoryRecordLocked(JJ)V
    .locals 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 2312
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 2313
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    sub-long v16, p1, v4

    .line 2314
    .local v16, "diffElapsed":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    sub-long v18, p3, v4

    .line 2315
    .local v18, "diffUptime":J
    const-wide/16 v4, 0x14

    sub-long v4, v16, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_0

    .line 2316
    sub-long v4, v16, v18

    sub-long v6, p1, v4

    .line 2317
    .local v6, "wakeElapsedTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, 0x7fffffff

    and-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2322
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2325
    .end local v6    # "wakeElapsedTime":J
    .end local v16    # "diffElapsed":J
    .end local v18    # "diffUptime":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, -0x80000000

    or-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2326
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 2327
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 2328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2329
    return-void
.end method

.method addHistoryRecordLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2404
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_0

    .line 2405
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2409
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2411
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2412
    return-void

    .line 2407
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    .end local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .restart local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    goto :goto_0
.end method

.method addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2415
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    .line 2416
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2417
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2418
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2420
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2424
    :goto_0
    return-void

    .line 2422
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_0
.end method

.method public addIsolatedUidLocked(II)V
    .locals 1
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2485
    return-void
.end method

.method aggregateLastWakeupUptimeLocked(J)V
    .locals 7
    .param p1, "uptimeMs"    # J

    .prologue
    .line 2801
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2802
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    sub-long v0, p1, v4

    .line 2803
    .local v0, "deltaUptime":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v2

    .line 2804
    .local v2, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedCount(I)V

    .line 2805
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedTotalTime(J)V

    .line 2806
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 2808
    .end local v0    # "deltaUptime":J
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_0
    return-void
.end method

.method clearHistoryLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 2437
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 2438
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 2439
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 2440
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 2442
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2443
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2444
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2445
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2446
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2447
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2448
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 2449
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 2450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2451
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2452
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockTime:J

    .line 2453
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockRealtime:J

    .line 2454
    return-void
.end method

.method public commitCurrentHistoryBatchLocked()V
    .locals 2

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2189
    return-void
.end method

.method public commitPendingDataToDisk()V
    .locals 5

    .prologue
    .line 7717
    monitor-enter p0

    .line 7718
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7719
    .local v1, "next":Landroid/os/Parcel;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7720
    if-nez v1, :cond_0

    .line 7721
    monitor-exit p0

    .line 7741
    :goto_0
    return-void

    .line 7724
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7725
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7728
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7729
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 7730
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 7731
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 7732
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 7733
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7739
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 7725
    .end local v1    # "next":Landroid/os/Parcel;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 7734
    .restart local v1    # "next":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    .line 7735
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "BatteryStats"

    const-string v4, "Error writing battery statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7736
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7739
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 7738
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7739
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public computeBatteryRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 7313
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 7323
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 7318
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 7366
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-nez v4, :cond_1

    .line 7389
    :cond_0
    :goto_0
    return-wide v2

    .line 7382
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 7385
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeTimePerLevel([JI)J

    move-result-wide v0

    .line 7386
    .local v0, "msPerLevel":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 7389
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public computeBatteryUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 7308
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeChargeTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 7402
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v4, :cond_1

    .line 7426
    :cond_0
    :goto_0
    return-wide v2

    .line 7419
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 7422
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeTimePerLevel([JI)J

    move-result-wide v0

    .line 7423
    .local v0, "msPerLevel":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 7426
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public computeRealtime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 7298
    packed-switch p3, :pswitch_data_0

    .line 7303
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 7299
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 7300
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v0, p1, v0

    goto :goto_0

    .line 7301
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_0

    .line 7298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 7288
    packed-switch p3, :pswitch_data_0

    .line 7293
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 7289
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 7290
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v0, p1, v0

    goto :goto_0

    .line 7291
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_0

    .line 7288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 7784
    const/4 v0, 0x0

    return v0
.end method

.method public distributeWorkLocked(I)V
    .locals 26
    .param p1, "which"    # I

    .prologue
    .line 7622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    const/16 v22, 0x3f2

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7623
    .local v20, "wifiUid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v20, :cond_5

    .line 7624
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v14

    .line 7625
    .local v14, "uSecTime":J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    .local v5, "ip":I
    :goto_0
    if-ltz v5, :cond_5

    .line 7626
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 7627
    .local v6, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v12

    .line 7628
    .local v12, "totalRunningTime":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_4

    .line 7629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7630
    .local v9, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget v0, v9, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v21, v0

    const/16 v22, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 7631
    move/from16 v0, p1

    invoke-virtual {v9, v14, v15, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiRunningTime(JI)J

    move-result-wide v18

    .line 7632
    .local v18, "uidRunningTime":J
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_3

    .line 7633
    const-string v21, "*wifi*"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v16

    .line 7634
    .local v16, "uidProc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getUserTime(I)J

    move-result-wide v10

    .line 7635
    .local v10, "time":J
    mul-long v22, v10, v18

    div-long v10, v22, v12

    .line 7636
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 7637
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v10

    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 7638
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getSystemTime(I)J

    move-result-wide v10

    .line 7639
    mul-long v22, v10, v18

    div-long v10, v22, v12

    .line 7640
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 7641
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v10

    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 7642
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v10

    .line 7643
    mul-long v22, v10, v18

    div-long v10, v22, v12

    .line 7644
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 7645
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v10

    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 7646
    const/4 v7, 0x0

    .local v7, "sb":I
    :goto_2
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    .line 7647
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    aget-object v8, v21, v7

    .line 7648
    .local v8, "sc":Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v8, :cond_1

    .line 7649
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->getCountLocked(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v10, v0

    .line 7650
    mul-long v22, v10, v18

    div-long v10, v22, v12

    .line 7651
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    aget-object v17, v21, v7

    .line 7652
    .local v17, "uidSc":Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-nez v17, :cond_0

    .line 7653
    new-instance v17, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .end local v17    # "uidSc":Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 7654
    .restart local v17    # "uidSc":Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    aput-object v17, v21, v7

    .line 7656
    :cond_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    long-to-int v0, v10

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7657
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    neg-long v0, v10

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7646
    .end local v17    # "uidSc":Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 7660
    .end local v8    # "sc":Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_2
    sub-long v12, v12, v18

    .line 7628
    .end local v7    # "sb":I
    .end local v10    # "time":J
    .end local v16    # "uidProc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v18    # "uidRunningTime":J
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 7625
    .end local v9    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 7666
    .end local v4    # "i":I
    .end local v5    # "ip":I
    .end local v6    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v12    # "totalRunningTime":J
    .end local v14    # "uSecTime":J
    :cond_5
    return-void
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .prologue
    .line 8871
    invoke-super/range {p0 .. p6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 8872
    return-void
.end method

.method public finishAddingCpuLocked(III[J)V
    .locals 13
    .param p1, "perc"    # I
    .param p2, "utime"    # I
    .param p3, "stime"    # I
    .param p4, "cpuSpeedTimes"    # [J

    .prologue
    .line 2858
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2859
    .local v1, "N":I
    if-eqz p1, :cond_5

    .line 2860
    const/4 v7, 0x0

    .line 2861
    .local v7, "num":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 2862
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2863
    .local v9, "st":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v11, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    if-eqz v11, :cond_0

    .line 2864
    iget-object v10, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2867
    .local v10, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v10, :cond_0

    iget v11, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v12, 0x3e8

    if-eq v11, v12, :cond_0

    .line 2868
    add-int/lit8 v7, v7, 0x1

    .line 2861
    .end local v10    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2872
    .end local v9    # "st":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    if-eqz v7, :cond_3

    .line 2873
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 2874
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2875
    .restart local v9    # "st":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v11, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    if-eqz v11, :cond_2

    .line 2876
    iget-object v10, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2877
    .restart local v10    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v10, :cond_2

    iget v11, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v12, 0x3e8

    if-eq v11, v12, :cond_2

    .line 2878
    div-int v6, p2, v7

    .line 2879
    .local v6, "myUTime":I
    div-int v5, p3, v7

    .line 2880
    .local v5, "mySTime":I
    sub-int/2addr p2, v6

    .line 2881
    sub-int p3, p3, v5

    .line 2882
    add-int/lit8 v7, v7, -0x1

    .line 2883
    const-string v11, "*wakelock*"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    .line 2884
    .local v8, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v8, v6, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2885
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addSpeedStepTimes([J)V

    .line 2873
    .end local v5    # "mySTime":I
    .end local v6    # "myUTime":I
    .end local v8    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v10    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2892
    .end local v9    # "st":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    .line 2893
    :cond_4
    const/16 v11, 0x3e8

    invoke-virtual {p0, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v10

    .line 2894
    .restart local v10    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v10, :cond_5

    .line 2895
    const-string v11, "*lost*"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    .line 2896
    .restart local v8    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, p3

    invoke-virtual {v8, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2897
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addSpeedStepTimes([J)V

    .line 2902
    .end local v4    # "i":I
    .end local v7    # "num":I
    .end local v8    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v10    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_5
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2903
    .local v2, "NL":I
    if-eq v1, v2, :cond_6

    const/4 v3, 0x1

    .line 2904
    .local v3, "diff":Z
    :goto_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_8

    if-nez v3, :cond_8

    .line 2905
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eq v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_4
    or-int/2addr v3, v11

    .line 2904
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2903
    .end local v3    # "diff":Z
    .end local v4    # "i":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 2905
    .restart local v3    # "diff":Z
    .restart local v4    # "i":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 2907
    :cond_8
    if-nez v3, :cond_9

    .line 2908
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_b

    .line 2909
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 2908
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2914
    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_a

    .line 2915
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 2914
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2917
    :cond_a
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2918
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_b

    .line 2919
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2920
    .restart local v9    # "st":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 2921
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2918
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2923
    .end local v9    # "st":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_b
    return-void
.end method

.method public finishIteratingHistoryLocked()V
    .locals 2

    .prologue
    .line 6630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 6631
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    .line 6633
    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .locals 2

    .prologue
    .line 6549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 6550
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 6552
    return-void
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .prologue
    .line 7279
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 4

    .prologue
    .line 7283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .locals 3
    .param p1, "curTime"    # J

    .prologue
    .line 7448
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .locals 3
    .param p1, "curTime"    # J

    .prologue
    .line 7443
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked()J
    .locals 6

    .prologue
    .line 7438
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4100
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothPingCount()I
    .locals 2

    .prologue
    .line 1876
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1877
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 1881
    :goto_0
    return v0

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 1879
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1881
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBluetoothStateCount(II)I
    .locals 1
    .param p1, "bluetoothState"    # I
    .param p2, "which"    # I

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getBluetoothStateTime(IJI)J
    .locals 2
    .param p1, "bluetoothState"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChargeStepDurationsArray()[J
    .locals 1

    .prologue
    .line 7434
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    return-object v0
.end method

.method public getCpuSpeedSteps()I
    .locals 1

    .prologue
    .line 7552
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    return v0
.end method

.method public getDischargeAmount(I)I
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 7497
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v0

    .line 7500
    .local v0, "dischargeAmount":I
    :goto_0
    if-gez v0, :cond_0

    .line 7501
    const/4 v0, 0x0

    .line 7503
    :cond_0
    return v0

    .line 7497
    .end local v0    # "dischargeAmount":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevel()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getDischargeAmountScreenOff()I
    .locals 3

    .prologue
    .line 7529
    monitor-enter p0

    .line 7530
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 7531
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 7533
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 7535
    :cond_0
    monitor-exit p0

    return v0

    .line 7536
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .locals 3

    .prologue
    .line 7540
    monitor-enter p0

    .line 7541
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 7542
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 7544
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 7546
    :cond_0
    monitor-exit p0

    return v0

    .line 7547
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeAmountScreenOn()I
    .locals 3

    .prologue
    .line 7507
    monitor-enter p0

    .line 7508
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 7509
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 7511
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 7513
    :cond_0
    monitor-exit p0

    return v0

    .line 7514
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .locals 3

    .prologue
    .line 7518
    monitor-enter p0

    .line 7519
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 7520
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 7522
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 7524
    :cond_0
    monitor-exit p0

    return v0

    .line 7525
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeCurrentLevel()I
    .locals 1

    .prologue
    .line 7464
    monitor-enter p0

    .line 7465
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 7466
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .locals 1

    .prologue
    .line 7470
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    return v0
.end method

.method public getDischargeStartLevel()I
    .locals 1

    .prologue
    .line 7453
    monitor-enter p0

    .line 7454
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 7455
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .locals 1

    .prologue
    .line 7459
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    return v0
.end method

.method public getDischargeStepDurationsArray()[J
    .locals 1

    .prologue
    .line 7397
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    return-object v0
.end method

.method public getEndPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4161
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashlightOnCount(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4118
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFlashlightOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 7486
    monitor-enter p0

    .line 7487
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 7488
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 7489
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 7491
    :cond_0
    monitor-exit p0

    return v0

    .line 7492
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHistoryBaseTime()J
    .locals 2

    .prologue
    .line 6637
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    return-wide v0
.end method

.method public getHistoryStringPoolBytes()I
    .locals 2

    .prologue
    .line 6594
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getHistoryStringPoolSize()I
    .locals 1

    .prologue
    .line 6587
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getHistoryTagPoolString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6599
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHistoryTagPoolUid(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6604
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getHistoryTotalSize()I
    .locals 1

    .prologue
    .line 6555
    const/high16 v0, 0x40000

    return v0
.end method

.method public getHistoryUsedSize()I
    .locals 1

    .prologue
    .line 6559
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0
.end method

.method public getInteractiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 3986
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsOnBattery()Z
    .locals 1

    .prologue
    .line 4169
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1857
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1858
    .local v0, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    .line 1859
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1860
    .restart local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    :cond_0
    return-object v0
.end method

.method protected getKernelWakelockUpdateVersion()I
    .locals 1

    .prologue
    .line 7560
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    return v0
.end method

.method protected getLogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6483
    const-string v0, "BatteryStats"

    return-object v0
.end method

.method public getLowDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 7475
    monitor-enter p0

    .line 7476
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 7477
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 7478
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 7480
    :cond_0
    monitor-exit p0

    return v0

    .line 7481
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLowPowerModeEnabledCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 3994
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getLowPowerModeEnabledTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 3990
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveAdjustedTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4050
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4046
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getMobileRadioActiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveUnknownCount(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMobileRadioActiveUnknownTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4054
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4123
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4124
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 4126
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4132
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4133
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 4135
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 10
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6609
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 6610
    .local v1, "pos":I
    if-nez v1, :cond_0

    .line 6611
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 6613
    :cond_0
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    if-lt v1, v8, :cond_1

    move v0, v7

    .line 6614
    .local v0, "end":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 6625
    :goto_1
    return v6

    .end local v0    # "end":Z
    :cond_1
    move v0, v6

    .line 6613
    goto :goto_0

    .line 6618
    .restart local v0    # "end":Z
    :cond_2
    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 6619
    .local v2, "lastRealtime":J
    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 6620
    .local v4, "lastWalltime":J
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 6621
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v6, v8, :cond_3

    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-eq v6, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_3

    .line 6623
    iget-wide v8, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v8, v2

    add-long/2addr v8, v4

    iput-wide v8, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :cond_3
    move v6, v7

    .line 6625
    goto :goto_1
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 10
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6516
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-lt v1, v3, :cond_2

    move v8, v7

    .line 6517
    .local v8, "end":Z
    :goto_0
    if-nez v8, :cond_0

    .line 6518
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 6519
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x6

    if-ne v1, v9, :cond_3

    move v1, v7

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 6521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 6522
    .local v0, "cur":Landroid/os/BatteryStats$HistoryItem;
    if-nez v0, :cond_4

    .line 6523
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_1

    if-nez v8, :cond_1

    .line 6524
    const-string v1, "BatteryStatsImpl"

    const-string v3, "Old history ends before new history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6544
    :cond_1
    :goto_2
    return v6

    .end local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "end":Z
    :cond_2
    move v8, v6

    .line 6516
    goto :goto_0

    .restart local v8    # "end":Z
    :cond_3
    move v1, v6

    .line 6519
    goto :goto_1

    .line 6528
    .restart local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 6529
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 6530
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_5

    .line 6531
    if-eqz v8, :cond_6

    .line 6532
    const-string v1, "BatteryStatsImpl"

    const-string v3, "New history ends before old history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    move v6, v7

    .line 6544
    goto :goto_2

    .line 6533
    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v1}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6534
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const/4 v3, 0x5

    const-string v9, "BatteryStatsImpl"

    invoke-direct {v1, v3, v9}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6535
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string v1, "Histories differ!"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6536
    const-string v1, "Old history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6537
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6538
    const-string v1, "New history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6539
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6541
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_3
.end method

.method public getNumChargeStepDurations()I
    .locals 1

    .prologue
    .line 7430
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    return v0
.end method

.method public getNumConnectivityChange(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 3998
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 3999
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4000
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    sub-int/2addr v0, v1

    .line 4004
    :cond_0
    :goto_0
    return v0

    .line 4001
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4002
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getNumDischargeStepDurations()I
    .locals 1

    .prologue
    .line 7393
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    return v0
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 7601
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 7602
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 7603
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v1

    return-object v1
.end method

.method public getParcelVersion()I
    .locals 1

    .prologue
    .line 4165
    const/16 v0, 0x74

    return v0
.end method

.method public getPhoneDataConnectionCount(II)I
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "which"    # I

    .prologue
    .line 4038
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4012
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4008
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalScanningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4023
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4028
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4017
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 7591
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 7592
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 7593
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    return-object v1
.end method

.method public getProcessWakeTime(IIJ)J
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 2934
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2935
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2936
    .local v1, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v1, :cond_1

    .line 2937
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 2938
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    .line 2939
    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_0

    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v2, p3, v2

    :cond_0
    add-long/2addr v2, v4

    .line 2942
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-wide v2
.end method

.method public getScreenBrightnessTime(IJI)J
    .locals 2
    .param p1, "brightnessBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getScreenOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 3972
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 7611
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 7612
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 7613
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    return-object v1
.end method

.method public getStartClockTime()J
    .locals 8

    .prologue
    .line 4144
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isStartClockTimeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 4148
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isStartClockTimeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4149
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    .line 4153
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    return-wide v0
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 6642
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    return v0
.end method

.method public getStartPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4157
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected getStatsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6478
    const-string v0, "batterystats"

    return-object v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4173
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 7571
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7572
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v0, :cond_0

    .line 7573
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 7574
    .restart local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7576
    :cond_0
    return-object v0
.end method

.method public getWakeupReasonStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1707
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1708
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    .line 1709
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1710
    .restart local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    :cond_0
    return-object v0
.end method

.method public getWifiOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4062
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4091
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiStateCount(II)I
    .locals 1
    .param p1, "wifiState"    # I
    .param p2, "which"    # I

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiStateTime(IJI)J
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4071
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSupplStateCount(II)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "which"    # I

    .prologue
    .line 4086
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSupplStateTime(IJI)J
    .locals 2
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method initDischarge()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 6664
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 6665
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 6666
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6667
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 6668
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6669
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 6670
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepTime:J

    .line 6671
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    .line 6672
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepTime:J

    .line 6673
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    .line 6674
    return-void
.end method

.method initTimes(JJ)V
    .locals 5
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 6654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 6655
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 6656
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 6657
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 6658
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 6659
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 6660
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 6661
    return-void
.end method

.method public isOnBattery()Z
    .locals 1

    .prologue
    .line 6646
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 6650
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStartClockTimeValid()Z
    .locals 4

    .prologue
    .line 4140
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapUid(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2495
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2496
    .local v0, "isolated":I
    if-lez v0, :cond_0

    .end local v0    # "isolated":I
    :goto_0
    return v0

    .restart local v0    # "isolated":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public noteActivityPausedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 3557
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3558
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    .line 3559
    return-void
.end method

.method public noteActivityResumedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 3552
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3553
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    .line 3554
    return-void
.end method

.method public noteAudioOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3469
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_0

    .line 3483
    :goto_0
    return-void

    .line 3472
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3474
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3475
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_1

    .line 3476
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3479
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3480
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3482
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked(J)V

    goto :goto_0
.end method

.method public noteAudioOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3454
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3456
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3457
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_0

    .line 3458
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3461
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3462
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3464
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3465
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked(J)V

    .line 3466
    return-void
.end method

.method public noteBluetoothOffLocked()V
    .locals 7

    .prologue
    .line 3739
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    if-eqz v4, :cond_0

    .line 3740
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3741
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3742
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3745
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3746
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 3747
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3749
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteBluetoothOnLocked()V
    .locals 7

    .prologue
    .line 3726
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    if-nez v4, :cond_0

    .line 3727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3728
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3729
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3732
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3733
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 3734
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3736
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteBluetoothStateLocked(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .prologue
    .line 3753
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothState:I

    if-eq v2, p1, :cond_1

    .line 3754
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3755
    .local v0, "elapsedRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothState:I

    if-ltz v2, :cond_0

    .line 3756
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothState:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3758
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothState:I

    .line 3759
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3761
    .end local v0    # "elapsedRealtime":J
    :cond_1
    return-void
.end method

.method public noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 16
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 2774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2775
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2779
    .local v12, "uptime":J
    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    .line 2780
    .local v2, "NN":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v2, :cond_0

    .line 2781
    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    move-object/from16 v3, p0

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2780
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2784
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/WorkSource;->size()I

    move-result v14

    .line 2785
    .local v14, "NO":I
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    .line 2786
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2785
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2788
    :cond_1
    return-void
.end method

.method public noteConnectivityChangedLocked(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 3134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3135
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3136
    .local v4, "uptime":J
    const/16 v6, 0x9

    move-object v1, p0

    move-object v7, p2

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3138
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 3139
    return-void
.end method

.method public noteCurrentTimeChangedLocked()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    .line 2510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2511
    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2512
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2513
    .local v6, "uptime":J
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isStartClockTimeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2515
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockTime:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 2516
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRecordedClockRealtime:J

    sub-long v10, v4, v10

    add-long v8, v0, v10

    .line 2518
    .local v8, "expectedClockTime":J
    sub-long v0, v8, v12

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    add-long v0, v8, v12

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 2529
    .end local v8    # "expectedClockTime":J
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p0

    .line 2525
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    .line 2526
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isStartClockTimeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    goto :goto_0
.end method

.method public noteEventLocked(ILjava/lang/String;I)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 2500
    invoke-virtual {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p3

    .line 2501
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2507
    :goto_0
    return-void

    .line 2504
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2505
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    .line 2506
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_0
.end method

.method public noteFlashlightOffLocked()V
    .locals 7

    .prologue
    .line 3585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3586
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3587
    .local v2, "uptime":J
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOn:Z

    if-eqz v4, :cond_0

    .line 3588
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3591
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3592
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOn:Z

    .line 3593
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3595
    :cond_0
    return-void
.end method

.method public noteFlashlightOnLocked()V
    .locals 7

    .prologue
    .line 3572
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOn:Z

    if-nez v4, :cond_0

    .line 3573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3574
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3575
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3578
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3579
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOn:Z

    .line 3580
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3582
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3866
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3867
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3868
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 3867
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3870
    :cond_0
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3766
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3768
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3769
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_0

    .line 3770
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3773
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3775
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3776
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked(J)V

    .line 3777
    return-void
.end method

.method public noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3873
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3874
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3875
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 3874
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3877
    :cond_0
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3780
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3782
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3783
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3784
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_0

    .line 3785
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3788
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3790
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked(J)V

    .line 3791
    return-void
.end method

.method public noteInteractiveLocked(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .prologue
    .line 3121
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    if-eq v2, p1, :cond_0

    .line 3122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3123
    .local v0, "elapsedRealtime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 3125
    if-eqz p1, :cond_1

    .line 3126
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3131
    .end local v0    # "elapsedRealtime":J
    :cond_0
    :goto_0
    return-void

    .line 3128
    .restart local v0    # "elapsedRealtime":J
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_0
.end method

.method public noteJobFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4006

    .line 2619
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2621
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2622
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopJobLocked(Ljava/lang/String;J)V

    .line 2623
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2627
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2626
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_0
.end method

.method public noteJobStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8006

    .line 2608
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2610
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2611
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartJobLocked(Ljava/lang/String;J)V

    .line 2612
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2616
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2615
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_0
.end method

.method public noteLowPowerMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 3181
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabled:Z

    if-eq v3, p1, :cond_0

    .line 3182
    if-eqz p1, :cond_1

    const/4 v2, 0x4

    .line 3183
    .local v2, "stepState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v6, v6, 0x4

    xor-int/2addr v6, v2

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3184
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v3, v3, -0x5

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3186
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3187
    .local v4, "uptime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabled:Z

    .line 3188
    if-eqz p1, :cond_2

    .line 3189
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3192
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3199
    :goto_1
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3201
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "stepState":I
    .end local v4    # "uptime":J
    :cond_0
    return-void

    .line 3182
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3194
    .restart local v0    # "elapsedRealtime":J
    .restart local v2    # "stepState":I
    .restart local v4    # "uptime":J
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3197
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 12
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 3142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3143
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3144
    .local v8, "uptime":J
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    if-eq v1, p1, :cond_1

    .line 3146
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p1, v1, :cond_0

    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 3149
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 3150
    move-wide v6, v2

    .local v6, "realElapsedRealtimeMs":J
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    .line 3151
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3167
    :goto_1
    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3168
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 3169
    if-eqz v0, :cond_6

    .line 3170
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3171
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3178
    .end local v0    # "active":Z
    .end local v6    # "realElapsedRealtimeMs":J
    :cond_1
    :goto_2
    return-void

    .line 3146
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3153
    .restart local v0    # "active":Z
    :cond_3
    const-wide/32 v10, 0xf4240

    div-long v6, p2, v10

    .line 3154
    .restart local v6    # "realElapsedRealtimeMs":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    .line 3155
    .local v4, "lastUpdateTimeMs":J
    cmp-long v1, v6, v4

    if-gez v1, :cond_5

    .line 3156
    const-string v1, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Data connection inactive timestamp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is before start time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    move-wide v6, v2

    .line 3163
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v11, -0x2000001

    and-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1

    .line 3159
    :cond_5
    cmp-long v1, v6, v2

    if-gez v1, :cond_4

    .line 3160
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    sub-long v10, v2, v6

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_3

    .line 3173
    .end local v4    # "lastUpdateTimeMs":J
    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3174
    const/4 v1, 0x1

    invoke-direct {p0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateNetworkActivityLocked(IJ)V

    .line 3175
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_2
.end method

.method public noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 3947
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3962
    :goto_0
    return-void

    .line 3948
    :cond_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3949
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 3955
    :goto_1
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3956
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    goto :goto_0

    .line 3952
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    goto :goto_1

    .line 3959
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    goto :goto_0
.end method

.method public noteNetworkStatsEnabledLocked()V
    .locals 4

    .prologue
    .line 3968
    const v0, 0xffff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateNetworkActivityLocked(IJ)V

    .line 3969
    return-void
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .locals 8
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 3356
    const/4 v0, 0x0

    .line 3357
    .local v0, "bin":I
    if-eqz p2, :cond_0

    .line 3358
    packed-switch p1, :pswitch_data_0

    .line 3405
    const/16 v0, 0x10

    .line 3410
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-eq v1, v0, :cond_2

    .line 3411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3412
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3413
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v6, v6, -0x3e01

    shl-int/lit8 v7, v0, 0x9

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3417
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3418
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-ltz v1, :cond_1

    .line 3419
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3422
    :cond_1
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 3423
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3425
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    .line 3360
    :pswitch_0
    const/4 v0, 0x2

    .line 3361
    goto :goto_0

    .line 3363
    :pswitch_1
    const/4 v0, 0x1

    .line 3364
    goto :goto_0

    .line 3366
    :pswitch_2
    const/4 v0, 0x3

    .line 3367
    goto :goto_0

    .line 3369
    :pswitch_3
    const/4 v0, 0x4

    .line 3370
    goto :goto_0

    .line 3372
    :pswitch_4
    const/4 v0, 0x5

    .line 3373
    goto :goto_0

    .line 3375
    :pswitch_5
    const/4 v0, 0x6

    .line 3376
    goto :goto_0

    .line 3378
    :pswitch_6
    const/4 v0, 0x7

    .line 3379
    goto :goto_0

    .line 3381
    :pswitch_7
    const/16 v0, 0x8

    .line 3382
    goto :goto_0

    .line 3384
    :pswitch_8
    const/16 v0, 0x9

    .line 3385
    goto :goto_0

    .line 3387
    :pswitch_9
    const/16 v0, 0xa

    .line 3388
    goto :goto_0

    .line 3390
    :pswitch_a
    const/16 v0, 0xb

    .line 3391
    goto :goto_0

    .line 3393
    :pswitch_b
    const/16 v0, 0xc

    .line 3394
    goto :goto_0

    .line 3396
    :pswitch_c
    const/16 v0, 0xd

    .line 3397
    goto :goto_0

    .line 3399
    :pswitch_d
    const/16 v0, 0xe

    .line 3400
    goto :goto_0

    .line 3402
    :pswitch_e
    const/16 v0, 0xf

    .line 3403
    goto :goto_0

    .line 3358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .locals 7

    .prologue
    .line 3217
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-eqz v4, :cond_0

    .line 3218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3219
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3220
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x40001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3223
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3224
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3225
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3227
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneOnLocked()V
    .locals 7

    .prologue
    .line 3204
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-nez v4, :cond_0

    .line 3205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3206
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3207
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3210
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3211
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3212
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3214
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 3351
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 3352
    .local v0, "bin":I
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 3353
    return-void
.end method

.method public notePhoneStateLocked(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "simState"    # I

    .prologue
    .line 3346
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 3347
    return-void
.end method

.method public noteProcessAnrLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2557
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2558
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2559
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2560
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumAnrsLocked()V

    .line 2562
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessCrashLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2549
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2550
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2551
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2552
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumCrashesLocked()V

    .line 2554
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessDiedLocked(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2926
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2927
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2928
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    .line 2929
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2931
    :cond_0
    return-void
.end method

.method public noteProcessFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4001

    .line 2571
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2572
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2583
    :cond_0
    :goto_0
    return-void

    .line 2575
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2576
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2577
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2579
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2582
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_0
.end method

.method public noteProcessStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8001

    .line 2532
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2533
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2534
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2535
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incStartsLocked()V

    .line 2537
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, p1, p2, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2546
    :cond_1
    :goto_0
    return-void

    .line 2540
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v1, :cond_1

    .line 2543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2544
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2545
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_0
.end method

.method public noteProcessStateLocked(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 2565
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2567
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p1, p3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2568
    return-void
.end method

.method public noteResetAudioLocked()V
    .locals 9

    .prologue
    .line 3518
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-lez v6, :cond_0

    .line 3519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3520
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3521
    .local v4, "uptime":J
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3522
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3525
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3526
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3527
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3528
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3529
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetAudioLocked(J)V

    .line 3527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3532
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked()V
    .locals 9

    .prologue
    .line 3535
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-lez v6, :cond_0

    .line 3536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3537
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3538
    .local v4, "uptime":J
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3539
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3542
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3543
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3544
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3545
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3546
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetVideoLocked(J)V

    .line 3544
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3549
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .locals 8
    .param p1, "brightness"    # I

    .prologue
    .line 3092
    div-int/lit8 v0, p1, 0x33

    .line 3093
    .local v0, "bin":I
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 3095
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-eq v1, v0, :cond_3

    .line 3096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3097
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3098
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v6, v6, -0x8

    shl-int/lit8 v7, v0, 0x0

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3102
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3103
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 3104
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_1

    .line 3105
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3107
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3109
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 3111
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3
    return-void

    .line 3094
    :cond_4
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public noteScreenStateLocked(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    .line 3022
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    if-eq v1, p1, :cond_2

    .line 3023
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 3024
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 3028
    if-eqz p1, :cond_0

    .line 3029
    add-int/lit8 v12, p1, -0x1

    .line 3030
    .local v12, "stepState":I
    const/4 v1, 0x4

    if-ge v12, v1, :cond_3

    .line 3031
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v2, v2, 0x3

    xor-int/2addr v2, v12

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3032
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v1, v1, -0x4

    or-int/2addr v1, v12

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3038
    .end local v12    # "stepState":I
    :cond_0
    :goto_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 3040
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3041
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3042
    .local v10, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3045
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3046
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3047
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_1

    .line 3048
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3051
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 3056
    const/4 v2, -0x1

    const/4 v3, -0x1

    const-string v4, "screen"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 3060
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_2

    .line 3061
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 3088
    .end local v0    # "oldState":I
    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    :cond_2
    :goto_1
    return-void

    .line 3034
    .restart local v0    # "oldState":I
    .restart local v12    # "stepState":I
    :cond_3
    const-string v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected screen state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3063
    .end local v12    # "stepState":I
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3066
    .restart local v8    # "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3067
    .restart local v10    # "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3070
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3071
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3072
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_5

    .line 3073
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3076
    :cond_5
    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string v5, "screen"

    const-string v6, "screen"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 3079
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 3083
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_2

    .line 3084
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    goto :goto_1
.end method

.method public noteStartGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2994
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2995
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2996
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2997
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_0

    .line 2998
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3001
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3003
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 3004
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps(J)V

    .line 3005
    return-void
.end method

.method public noteStartSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 2964
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2965
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2966
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2967
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_0

    .line 2968
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2971
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2973
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2974
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    .line 2975
    return-void
.end method

.method public noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 2762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2763
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2764
    .local v10, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 2765
    .local v0, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_0

    .line 2766
    invoke-virtual {p1, v12}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2765
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2769
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .prologue
    .line 2683
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2684
    if-nez p5, :cond_3

    .line 2687
    move-wide/from16 v0, p9

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    .line 2688
    if-nez p4, :cond_0

    .line 2689
    move-object/from16 p4, p3

    .line 2691
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_1

    .line 2692
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v5, 0x8005

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2694
    const v10, 0x8005

    move-object v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v11, p4

    move v12, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2698
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_6

    .line 2699
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2702
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2703
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2704
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2705
    if-nez p6, :cond_5

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    .line 2706
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2719
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2721
    :cond_3
    if-ltz p1, :cond_4

    .line 2725
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    .line 2726
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(ILjava/lang/String;IJ)V

    .line 2728
    :cond_4
    return-void

    .line 2705
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 2707
    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    if-nez v4, :cond_2

    if-nez p6, :cond_2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v4, :cond_2

    .line 2709
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_7

    .line 2711
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2712
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2713
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2714
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2715
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2717
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    goto :goto_1
.end method

.method public noteStopGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3008
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3010
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3011
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 3012
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_0

    .line 3013
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x20000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3016
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3018
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps(J)V

    .line 3019
    return-void
.end method

.method public noteStopSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 2978
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2979
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2980
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2981
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2982
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_0

    .line 2983
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x800001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2986
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2988
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    .line 2989
    return-void
.end method

.method public noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 2792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2793
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2794
    .local v8, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v10

    .line 2795
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 2796
    invoke-virtual {p1, v11}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2795
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2798
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .prologue
    .line 2732
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2733
    if-nez p5, :cond_2

    .line 2734
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2735
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_1

    .line 2736
    if-nez p4, :cond_0

    .line 2737
    move-object/from16 p4, p3

    .line 2739
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v5, 0x4005

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2741
    const/16 v10, 0x4005

    move-object v5, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v11, p4

    move v12, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2745
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_2

    .line 2746
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2749
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    .line 2750
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 2751
    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2754
    :cond_2
    if-ltz p1, :cond_3

    .line 2755
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    .line 2756
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(ILjava/lang/String;IJ)V

    .line 2758
    :cond_3
    return-void
.end method

.method public noteSyncFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4004

    .line 2597
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2599
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2600
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSyncLocked(Ljava/lang/String;J)V

    .line 2601
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2605
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2604
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_0
.end method

.method public noteSyncStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8004

    .line 2586
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2588
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2589
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSyncLocked(Ljava/lang/String;J)V

    .line 2590
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2594
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2593
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_0
.end method

.method public noteUserActivityLocked(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3114
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v0, :cond_0

    .line 3115
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3116
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    .line 3118
    :cond_0
    return-void
.end method

.method public noteVibratorOffLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3567
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3568
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOffLocked()V

    .line 3569
    return-void
.end method

.method public noteVibratorOnLocked(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 3562
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3563
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOnLocked(J)V

    .line 3564
    return-void
.end method

.method public noteVideoOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3501
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_0

    .line 3515
    :goto_0
    return-void

    .line 3504
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3506
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3507
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_1

    .line 3508
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3511
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3512
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3514
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked(J)V

    goto :goto_0
.end method

.method public noteVideoOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3486
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3488
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3489
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_0

    .line 3490
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3493
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3494
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3496
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    .line 3497
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked(J)V

    .line 3498
    return-void
.end method

.method public noteWakeupReasonLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2811
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2812
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2815
    .local v2, "uptime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    .line 2816
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2817
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p1, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2818
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2819
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 2820
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 2821
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2822
    return-void
.end method

.method public noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 3894
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3895
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3896
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedLocked(II)V

    .line 3895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3898
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "csph"    # I

    .prologue
    .line 3824
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3825
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3826
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 3827
    return-void
.end method

.method public noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3901
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3902
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3903
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedLocked(I)V

    .line 3902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3905
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3830
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3832
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    .line 3833
    return-void
.end method

.method public noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3915
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3916
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3917
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 3916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3919
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3852
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3854
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3855
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 3856
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_0

    .line 3857
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x4000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3860
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3862
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    .line 3863
    return-void
.end method

.method public noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3908
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3909
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3910
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 3909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3912
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3838
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3839
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3840
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3841
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_0

    .line 3842
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x4000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3845
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3847
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 3848
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    .line 3849
    return-void
.end method

.method public noteWifiOffLocked()V
    .locals 7

    .prologue
    .line 3441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3442
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3443
    .local v2, "uptime":J
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-eqz v4, :cond_0

    .line 3444
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3447
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3448
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3449
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3451
    :cond_0
    return-void
.end method

.method public noteWifiOnLocked()V
    .locals 7

    .prologue
    .line 3428
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-nez v4, :cond_0

    .line 3429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3430
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3431
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3434
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3435
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3436
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3438
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteWifiRssiChangedLocked(I)V
    .locals 8
    .param p1, "newRssi"    # I

    .prologue
    .line 3699
    const/4 v3, 0x5

    invoke-static {p1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 3701
    .local v2, "strengthBin":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-eq v3, v2, :cond_2

    .line 3702
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3703
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3704
    .local v4, "uptime":J
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-ltz v3, :cond_0

    .line 3705
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    aget-object v3, v3, v6

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3708
    :cond_0
    if-ltz v2, :cond_3

    .line 3709
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3710
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3712
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v6, v6, -0x71

    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3717
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3721
    :goto_0
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 3723
    .end local v0    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    .line 3719
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_3
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllWifiSignalStrengthTimersLocked(I)V

    goto :goto_0
.end method

.method public noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 3618
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_1

    .line 3619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3620
    .local v2, "elapsedRealtime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3621
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3622
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3623
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3625
    .end local v4    # "uid":I
    :cond_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3626
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3627
    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3628
    .restart local v4    # "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3626
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3631
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uid":I
    :cond_1
    const-string v5, "BatteryStatsImpl"

    const-string v6, "noteWifiRunningChangedLocked -- called while WIFI not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_2
    return-void
.end method

.method public noteWifiRunningLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3598
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-nez v5, :cond_0

    .line 3599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3600
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3601
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3604
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3605
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3606
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3607
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3608
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3609
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3610
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3608
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3613
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uid":I
    .end local v6    # "uptime":J
    :cond_0
    const-string v5, "BatteryStatsImpl"

    const-string v8, "noteWifiRunningLocked -- called while WIFI running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3880
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3881
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3882
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 3881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3884
    :cond_0
    return-void
.end method

.method public noteWifiScanStartedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3796
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3797
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3798
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3799
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_0

    .line 3800
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3803
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3805
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3806
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStartedLocked(J)V

    .line 3807
    return-void
.end method

.method public noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3887
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3888
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3889
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 3888
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3891
    :cond_0
    return-void
.end method

.method public noteWifiScanStoppedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3810
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3811
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3812
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3813
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3814
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_0

    .line 3815
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3818
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3820
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStoppedLocked(J)V

    .line 3821
    return-void
.end method

.method public noteWifiStateLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 3657
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-eq v2, p1, :cond_1

    .line 3658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3659
    .local v0, "elapsedRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-ltz v2, :cond_0

    .line 3660
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3662
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 3663
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3665
    .end local v0    # "elapsedRealtime":J
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3636
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_0

    .line 3637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3638
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3639
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v9, -0x20000001

    and-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3642
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3643
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3644
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3645
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3646
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3647
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3648
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3651
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uid":I
    .end local v6    # "uptime":J
    :cond_0
    const-string v5, "BatteryStatsImpl"

    const-string v8, "noteWifiStoppedLocked -- called while WIFI not running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_1
    return-void
.end method

.method public noteWifiSupplicantStateChangedLocked(IZ)V
    .locals 7
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 3669
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-eq v4, p1, :cond_1

    .line 3670
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3671
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3672
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-ltz v4, :cond_0

    .line 3673
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3675
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 3676
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3677
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v5, v5, -0x10

    shl-int/lit8 v6, p1, 0x0

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3682
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3684
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_1
    return-void
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 8805
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 8809
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    .line 8810
    return-void
.end method

.method public pullPendingStateUpdatesLocked()V
    .locals 4

    .prologue
    .line 6819
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 6820
    const v1, 0xffff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateNetworkActivityLocked(IJ)V

    .line 6821
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_0

    .line 6822
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 6823
    .local v0, "screenOn":Z
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 6825
    .end local v0    # "screenOn":Z
    :cond_0
    return-void

    .line 6822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 8503
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 8504
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 8507
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 8508
    .local v16, "magic":I
    const v4, -0x458a8b8b

    move/from16 v0, v16

    if-eq v0, v4, :cond_0

    .line 8509
    new-instance v4, Landroid/os/ParcelFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad magic number: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 8512
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 8514
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 8515
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 8516
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 8517
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 8518
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 8519
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 8520
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 8521
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 8522
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 8523
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    .line 8524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 8525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 8527
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 8528
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8529
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v12, v4, :cond_2

    .line 8530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int/lit8 v6, v12, -0x64

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 8529
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 8522
    .end local v12    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 8533
    .restart local v12    # "i":I
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 8534
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0x9

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8535
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 8536
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8537
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8538
    const/4 v12, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v12, v4, :cond_3

    .line 8539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0xc8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 8538
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 8542
    :cond_3
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0xc7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8543
    const/4 v12, 0x0

    :goto_3
    const/16 v4, 0x11

    if-ge v12, v4, :cond_4

    .line 8544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x12c

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 8543
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 8547
    :cond_4
    const/4 v12, 0x0

    :goto_4
    const/4 v4, 0x4

    if-ge v12, v4, :cond_5

    .line 8548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 8549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 8547
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 8551
    :cond_5
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 8552
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0x190

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8553
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0x191

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8555
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8556
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8557
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 8558
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 8559
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8560
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 8561
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8562
    const/4 v12, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v12, v4, :cond_6

    .line 8563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x258

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 8562
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 8566
    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/16 v4, 0xd

    if-ge v12, v4, :cond_7

    .line 8567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x2bc

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 8566
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 8570
    :cond_7
    const/4 v12, 0x0

    :goto_7
    const/4 v4, 0x5

    if-ge v12, v4, :cond_8

    .line 8571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x320

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 8570
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 8574
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 8575
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8576
    const/4 v12, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v12, v4, :cond_9

    .line 8577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 8576
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 8580
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 8581
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    .line 8582
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    .line 8583
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 8584
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8585
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    .line 8586
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8587
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOn:Z

    .line 8588
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0x9

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8589
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 8590
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 8591
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8592
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 8593
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 8594
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 8595
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 8596
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 8597
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 8598
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 8599
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    .line 8600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readLongArray([J)V

    .line 8601
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    .line 8602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readLongArray([J)V

    .line 8603
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 8605
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 8606
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 8608
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 8609
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 8610
    .local v10, "NKW":I
    const/4 v13, 0x0

    .local v13, "ikw":I
    :goto_9
    if-ge v13, v10, :cond_b

    .line 8611
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 8612
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 8613
    .local v22, "wakelockName":Ljava/lang/String;
    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v15, v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 8614
    .local v15, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8610
    .end local v15    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v22    # "wakelockName":Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 8618
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 8619
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 8620
    .local v11, "NWR":I
    const/4 v14, 0x0

    .local v14, "iwr":I
    :goto_a
    if-ge v14, v11, :cond_d

    .line 8621
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 8622
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 8623
    .local v18, "reasonName":Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 8624
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8620
    .end local v18    # "reasonName":Ljava/lang/String;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 8628
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 8635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8639
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->setCpuSpeedSteps(I)V

    .line 8641
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 8642
    .local v17, "numUids":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 8643
    const/4 v12, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v12, v0, :cond_e

    .line 8644
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 8645
    .local v21, "uid":I
    new-instance v20, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 8646
    .local v20, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 8647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 8643
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 8649
    .end local v20    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v21    # "uid":I
    :cond_e
    return-void
.end method

.method readHistory(Landroid/os/Parcel;Z)V
    .locals 18
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "andOldHistory"    # Z

    .prologue
    .line 7788
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 7790
    .local v4, "historyBaseTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataSize(I)V

    .line 7791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7792
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 7793
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 7794
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 7796
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 7797
    .local v8, "numTags":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 7798
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 7799
    .local v7, "idx":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7800
    .local v9, "str":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 7801
    .local v13, "uid":I
    new-instance v12, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v12}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 7802
    .local v12, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v9, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 7803
    iput v13, v12, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7804
    iput v7, v12, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 7805
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7806
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    if-lt v7, v14, :cond_0

    .line 7807
    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 7809
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v15, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 7797
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7812
    .end local v7    # "idx":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v12    # "tag":Landroid/os/BatteryStats$HistoryTag;
    .end local v13    # "uid":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7813
    .local v2, "bufSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 7814
    .local v3, "curPos":I
    const/high16 v14, 0xf0000

    if-lt v2, v14, :cond_4

    .line 7815
    const-string v14, "BatteryStatsImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File corrupt: history data buffer too large "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7825
    :goto_1
    if-eqz p2, :cond_2

    .line 7826
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->readOldHistory(Landroid/os/Parcel;)V

    .line 7835
    :cond_2
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 7845
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 7846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 7847
    .local v10, "oldnow":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 7855
    .end local v10    # "oldnow":J
    :cond_3
    return-void

    .line 7816
    :cond_4
    and-int/lit8 v14, v2, -0x4

    if-eq v14, v2, :cond_5

    .line 7817
    const-string v14, "BatteryStatsImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File corrupt: history data buffer not aligned "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7821
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 7822
    add-int v14, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1
.end method

.method public readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 18
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2068
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2069
    .local v7, "firstToken":I
    const v13, 0x7ffff

    and-int v6, v7, v13

    .line 2070
    .local v6, "deltaTimeToken":I
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2071
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2075
    const v13, 0x7fffd

    if-ge v6, v13, :cond_2

    .line 2076
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2095
    :goto_0
    const/high16 v13, 0x80000

    and-int/2addr v13, v7

    if-eqz v13, :cond_0

    .line 2096
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2097
    .local v2, "batteryLevelInt":I
    shr-int/lit8 v13, v2, 0x19

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2098
    shl-int/lit8 v13, v2, 0x7

    shr-int/lit8 v13, v13, 0x15

    int-to-short v13, v13

    move-object/from16 v0, p2

    iput-short v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2099
    and-int/lit16 v13, v2, 0x3fff

    int-to-char v13, v13

    move-object/from16 v0, p2

    iput-char v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2100
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2108
    .end local v2    # "batteryLevelInt":I
    :cond_0
    const/high16 v13, 0x100000

    and-int/2addr v13, v7

    if-eqz v13, :cond_5

    .line 2109
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2110
    .local v10, "stateInt":I
    const/high16 v13, -0x1000000

    and-int/2addr v13, v7

    const v14, 0xffffff

    and-int/2addr v14, v10

    or-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2111
    shr-int/lit8 v13, v10, 0x1d

    and-int/lit8 v13, v13, 0x7

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2113
    shr-int/lit8 v13, v10, 0x1a

    and-int/lit8 v13, v13, 0x7

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2115
    shr-int/lit8 v13, v10, 0x18

    and-int/lit8 v13, v13, 0x3

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2117
    move-object/from16 v0, p2

    iget-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v13, :pswitch_data_0

    .line 2128
    :goto_1
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2139
    .end local v10    # "stateInt":I
    :goto_2
    const/high16 v13, 0x200000

    and-int/2addr v13, v7

    if-eqz v13, :cond_1

    .line 2140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2145
    :cond_1
    const/high16 v13, 0x400000

    and-int/2addr v13, v7

    if-eqz v13, :cond_8

    .line 2146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2147
    .local v9, "indexes":I
    const v13, 0xffff

    and-int v11, v9, v13

    .line 2148
    .local v11, "wakeLockIndex":I
    shr-int/lit8 v13, v9, 0x10

    const v14, 0xffff

    and-int v12, v13, v14

    .line 2149
    .local v12, "wakeReasonIndex":I
    const v13, 0xffff

    if-eq v11, v13, :cond_6

    .line 2150
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2151
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2157
    :goto_3
    const v13, 0xffff

    if-eq v12, v13, :cond_7

    .line 2158
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2159
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2165
    :goto_4
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2171
    .end local v9    # "indexes":I
    .end local v11    # "wakeLockIndex":I
    .end local v12    # "wakeReasonIndex":I
    :goto_5
    const/high16 v13, 0x800000

    and-int/2addr v13, v7

    if-eqz v13, :cond_9

    .line 2172
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2174
    .local v3, "codeAndIndex":I
    const v13, 0xffff

    and-int/2addr v13, v3

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2175
    shr-int/lit8 v13, v3, 0x10

    const v14, 0xffff

    and-int v8, v13, v14

    .line 2176
    .local v8, "index":I
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2177
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2184
    .end local v3    # "codeAndIndex":I
    .end local v8    # "index":I
    :goto_6
    return-void

    .line 2077
    :cond_2
    const v13, 0x7fffd

    if-ne v6, v13, :cond_3

    .line 2078
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2079
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2081
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_6

    .line 2083
    :cond_3
    const v13, 0x7fffe

    if-ne v6, v13, :cond_4

    .line 2084
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2085
    .local v4, "delta":I
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2086
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_0

    .line 2089
    .end local v4    # "delta":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 2091
    .local v4, "delta":J
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v14, v4

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2092
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_0

    .line 2119
    .end local v4    # "delta":J
    .restart local v10    # "stateInt":I
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_1

    .line 2122
    :pswitch_1
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_1

    .line 2125
    :pswitch_2
    const/4 v13, 0x4

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_1

    .line 2136
    .end local v10    # "stateInt":I
    :cond_5
    const/high16 v13, -0x1000000

    and-int/2addr v13, v7

    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v15, 0xffffff

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_2

    .line 2155
    .restart local v9    # "indexes":I
    .restart local v11    # "wakeLockIndex":I
    .restart local v12    # "wakeReasonIndex":I
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_3

    .line 2163
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_4

    .line 2167
    .end local v9    # "indexes":I
    .end local v11    # "wakeLockIndex":I
    .end local v12    # "wakeReasonIndex":I
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2168
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_5

    .line 2182
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    goto/16 :goto_6

    .line 2117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 7744
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_1

    .line 7745
    const-string v1, "BatteryStats"

    const-string v6, "readLocked: no file associated with this instance"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7781
    :cond_0
    :goto_0
    return-void

    .line 7749
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7752
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 7753
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7756
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7758
    .local v11, "stream":Ljava/io/FileInputStream;
    invoke-static {v11}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v10

    .line 7759
    .local v10, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 7760
    .local v9, "in":Landroid/os/Parcel;
    const/4 v1, 0x0

    array-length v6, v10

    invoke-virtual {v9, v10, v1, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 7761
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7762
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 7764
    invoke-virtual {p0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7769
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "in":Landroid/os/Parcel;
    .end local v10    # "raw":[B
    .end local v11    # "stream":Ljava/io/FileInputStream;
    :goto_1
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 7771
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 7772
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 7773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 7774
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 7778
    .local v4, "uptime":J
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    move-object v1, p0

    move v6, v12

    .line 7779
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    goto :goto_0

    .line 7765
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :catch_0
    move-exception v0

    .line 7766
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BatteryStats"

    const-string v6, "Error reading battery statistics"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method readOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7859
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 36
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7914
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 7915
    .local v31, "version":I
    const/16 v33, 0x74

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 7916
    const-string v33, "BatteryStats"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "readFromParcel: version got "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", expected "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x74

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "; erasing old stats"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8195
    :cond_0
    :goto_0
    return-void

    .line 7921
    :cond_1
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 7923
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 7924
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 7925
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 7926
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 7927
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 7928
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 7929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 7930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 7931
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 7932
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 7933
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 7934
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 7935
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 7936
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 7937
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 7938
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 7939
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    .line 7940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 7941
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    .line 7942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 7944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 7946
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 7947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7948
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/16 v33, 0x5

    move/from16 v0, v33

    if-ge v12, v0, :cond_2

    .line 7949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7948
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 7951
    :cond_2
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 7952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7953
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 7954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7956
    const/4 v12, 0x0

    :goto_2
    const/16 v33, 0x5

    move/from16 v0, v33

    if-ge v12, v0, :cond_3

    .line 7957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7956
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 7959
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7960
    const/4 v12, 0x0

    :goto_3
    const/16 v33, 0x11

    move/from16 v0, v33

    if-ge v12, v0, :cond_4

    .line 7961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7960
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 7963
    :cond_4
    const/4 v12, 0x0

    :goto_4
    const/16 v33, 0x4

    move/from16 v0, v33

    if-ge v12, v0, :cond_5

    .line 7964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7963
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 7967
    :cond_5
    sget v33, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 7968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7973
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 7974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7975
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 7976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7977
    const/4 v12, 0x0

    :goto_5
    const/16 v33, 0x8

    move/from16 v0, v33

    if-ge v12, v0, :cond_6

    .line 7978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7977
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 7980
    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/16 v33, 0xd

    move/from16 v0, v33

    if-ge v12, v0, :cond_7

    .line 7981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7980
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 7983
    :cond_7
    const/4 v12, 0x0

    :goto_7
    const/16 v33, 0x5

    move/from16 v0, v33

    if-ge v12, v0, :cond_8

    .line 7984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7983
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 7986
    :cond_8
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 7987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7988
    const/4 v12, 0x0

    :goto_8
    const/16 v33, 0x4

    move/from16 v0, v33

    if-ge v12, v0, :cond_9

    .line 7989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7988
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 7991
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 7992
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOn:Z

    .line 7993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7995
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 7996
    .local v5, "NKW":I
    const/16 v33, 0x2710

    move/from16 v0, v33

    if-le v5, v0, :cond_a

    .line 7997
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many kernel wake locks "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8000
    :cond_a
    const/4 v14, 0x0

    .local v14, "ikw":I
    :goto_9
    if-ge v14, v5, :cond_c

    .line 8001
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_b

    .line 8002
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 8003
    .local v20, "kwltName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8000
    .end local v20    # "kwltName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 8007
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 8008
    .local v11, "NWR":I
    const/16 v33, 0x2710

    move/from16 v0, v33

    if-le v11, v0, :cond_d

    .line 8009
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many wakeup reasons "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8012
    :cond_d
    const/16 v19, 0x0

    .local v19, "iwr":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v11, :cond_f

    .line 8013
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_e

    .line 8014
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 8015
    .local v25, "reasonName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8012
    .end local v25    # "reasonName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 8019
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setCpuSpeedSteps(I)V

    .line 8020
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v33

    if-ltz v33, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v33

    const/16 v34, 0x64

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_11

    .line 8021
    :cond_10
    new-instance v33, Landroid/os/BadParcelableException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Bad speed steps in data: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 8024
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 8025
    .local v9, "NU":I
    const/16 v33, 0x2710

    move/from16 v0, v33

    if-le v9, v0, :cond_12

    .line 8026
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many uids "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8029
    :cond_12
    const/16 v17, 0x0

    .local v17, "iu":I
    :goto_b
    move/from16 v0, v17

    if-ge v0, v9, :cond_0

    .line 8030
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 8031
    .local v30, "uid":I
    new-instance v29, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 8032
    .local v29, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8034
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 8035
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_13

    .line 8036
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8038
    :cond_13
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 8039
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_14

    .line 8040
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8042
    :cond_14
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 8043
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_15

    .line 8044
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8046
    :cond_15
    const/16 v33, -0x1

    move/from16 v0, v33

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 8047
    const/4 v12, 0x0

    :goto_c
    const/16 v33, 0x5

    move/from16 v0, v33

    if-ge v12, v0, :cond_17

    .line 8048
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_16

    .line 8049
    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 8050
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8047
    :cond_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 8053
    :cond_17
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 8054
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_18

    .line 8055
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8057
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_19

    .line 8058
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8060
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_1a

    .line 8061
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8063
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_1b

    .line 8064
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8066
    :cond_1b
    const/16 v33, 0x3

    move/from16 v0, v33

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 8067
    const/4 v12, 0x0

    :goto_d
    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v12, v0, :cond_1d

    .line 8068
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_1c

    .line 8069
    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 8070
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8067
    :cond_1c
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 8073
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_1e

    .line 8074
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8077
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_20

    .line 8078
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v33, v0

    if-nez v33, :cond_1f

    .line 8079
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 8081
    :cond_1f
    const/4 v12, 0x0

    :goto_e
    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v12, v0, :cond_20

    .line 8082
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8081
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 8086
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_23

    .line 8087
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    if-nez v33, :cond_21

    .line 8088
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 8090
    :cond_21
    const/4 v12, 0x0

    :goto_f
    const/16 v33, 0x4

    move/from16 v0, v33

    if-ge v12, v0, :cond_22

    .line 8091
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8092
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8090
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 8094
    :cond_22
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8095
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8098
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 8099
    .local v10, "NW":I
    const/16 v33, 0x64

    move/from16 v0, v33

    if-le v10, v0, :cond_24

    .line 8100
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many wake locks "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8103
    :cond_24
    const/16 v18, 0x0

    .local v18, "iw":I
    :goto_10
    move/from16 v0, v18

    if-ge v0, v10, :cond_25

    .line 8104
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 8105
    .local v32, "wlName":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 8103
    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    .line 8108
    .end local v32    # "wlName":Ljava/lang/String;
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 8109
    .local v7, "NS":I
    const/16 v33, 0x64

    move/from16 v0, v33

    if-le v7, v0, :cond_26

    .line 8110
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many syncs "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8113
    :cond_26
    const/16 v16, 0x0

    .local v16, "is":I
    :goto_11
    move/from16 v0, v16

    if-ge v0, v7, :cond_27

    .line 8114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 8115
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 8113
    add-int/lit8 v16, v16, 0x1

    goto :goto_11

    .line 8118
    .end local v21    # "name":Ljava/lang/String;
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 8119
    .local v4, "NJ":I
    const/16 v33, 0x64

    move/from16 v0, v33

    if-le v4, v0, :cond_28

    .line 8120
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many job timers "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8123
    :cond_28
    const/4 v13, 0x0

    .local v13, "ij":I
    :goto_12
    if-ge v13, v4, :cond_29

    .line 8124
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 8125
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 8123
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 8128
    .end local v21    # "name":Ljava/lang/String;
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 8129
    .local v6, "NP":I
    const/16 v33, 0x3e8

    move/from16 v0, v33

    if-le v6, v0, :cond_2a

    .line 8130
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many sensors "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8133
    :cond_2a
    const/16 v16, 0x0

    :goto_13
    move/from16 v0, v16

    if-ge v0, v6, :cond_2c

    .line 8134
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 8135
    .local v27, "seNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_2b

    .line 8136
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8133
    :cond_2b
    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    .line 8141
    .end local v27    # "seNumber":I
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 8142
    const/16 v33, 0x3e8

    move/from16 v0, v33

    if-le v6, v0, :cond_2d

    .line 8143
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many processes "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8146
    :cond_2d
    const/4 v15, 0x0

    .local v15, "ip":I
    :goto_14
    if-ge v15, v6, :cond_31

    .line 8147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 8148
    .local v24, "procName":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v22

    .line 8149
    .local v22, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 8150
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 8151
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 8152
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 8153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 8154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 8155
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 8156
    .local v8, "NSB":I
    const/16 v33, 0x64

    move/from16 v0, v33

    if-le v8, v0, :cond_2e

    .line 8157
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many speed bins "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8160
    :cond_2e
    new-array v0, v8, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 8161
    const/4 v12, 0x0

    :goto_15
    if-ge v12, v8, :cond_30

    .line 8162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_2f

    .line 8163
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v33, v0

    new-instance v34, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v34, v33, v12

    .line 8164
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v33, v0

    aget-object v33, v33, v12

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8161
    :cond_2f
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    .line 8167
    :cond_30
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 8146
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_14

    .line 8172
    .end local v8    # "NSB":I
    .end local v22    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v24    # "procName":Ljava/lang/String;
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 8173
    const/16 v33, 0x2710

    move/from16 v0, v33

    if-le v6, v0, :cond_32

    .line 8174
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many packages "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8177
    :cond_32
    const/4 v15, 0x0

    :goto_16
    if-ge v15, v6, :cond_35

    .line 8178
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 8179
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v22

    .line 8180
    .local v22, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    .line 8181
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 8182
    const/16 v33, 0x3e8

    move/from16 v0, v33

    if-le v7, v0, :cond_33

    .line 8183
    const-string v33, "BatteryStatsImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "File corrupt: too many services "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8186
    :cond_33
    const/16 v16, 0x0

    :goto_17
    move/from16 v0, v16

    if-ge v0, v7, :cond_34

    .line 8187
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 8188
    .local v28, "servName":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v26

    .line 8189
    .local v26, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 8190
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v0, v33

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 8191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v0, v33

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 8186
    add-int/lit8 v16, v16, 0x1

    goto :goto_17

    .line 8177
    .end local v26    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v28    # "servName":Ljava/lang/String;
    :cond_34
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_16

    .line 8029
    .end local v22    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v23    # "pkgName":Ljava/lang/String;
    :cond_35
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b
.end method

.method public removeIsolatedUidLocked(II)V
    .locals 3
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2488
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2489
    .local v0, "curUid":I
    if-ne v0, p2, :cond_0

    .line 2490
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2492
    :cond_0
    return-void
.end method

.method public removeUidStatsLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 7583
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7584
    return-void
.end method

.method public reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2954
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2955
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2956
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2957
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveCpuLocked(Ljava/lang/String;JJ)V

    .line 2959
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2946
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2947
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2948
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2949
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveWakeLocked(Ljava/lang/String;JJ)V

    .line 2951
    :cond_0
    return-void
.end method

.method public resetAllStatsCmdLocked()V
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    .line 6677
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 6678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6679
    .local v2, "mSecUptime":J
    mul-long v6, v2, v8

    .line 6680
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6681
    .local v0, "mSecRealtime":J
    mul-long v4, v0, v8

    .line 6682
    .local v4, "realtime":J
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 6683
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 6684
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 6685
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6687
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 6688
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 6689
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 6690
    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 6691
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6692
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 6697
    :goto_0
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6698
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6700
    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    .line 6701
    return-void

    .line 6694
    :cond_1
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6695
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_0
.end method

.method public setBatteryState(IIIIII)V
    .locals 21
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 7006
    monitor-enter p0

    .line 7010
    if-nez p3, :cond_7

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_7

    :cond_0
    const/16 v20, 0x1

    .line 7013
    .local v20, "onBattery":Z
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 7014
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 7015
    .local v4, "elapsedRealtime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v9, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 7016
    .local v9, "oldStatus":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-nez v3, :cond_2

    .line 7017
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 7022
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v20

    if-ne v0, v3, :cond_1

    .line 7023
    if-eqz v20, :cond_8

    .line 7024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v10, -0x80001

    and-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 7029
    :cond_1
    :goto_1
    move/from16 v9, p1

    .line 7031
    :cond_2
    if-eqz v20, :cond_9

    .line 7032
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 7033
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_3

    .line 7034
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 7035
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 7043
    :cond_3
    :goto_2
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 7044
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    if-gez v3, :cond_4

    .line 7045
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 7047
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v20

    if-eq v0, v3, :cond_a

    .line 7048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 7049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 7050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 7051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 7052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 7053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v3, p0

    move/from16 v8, v20

    move/from16 v10, p4

    .line 7054
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V

    .line 7113
    :cond_5
    :goto_3
    if-nez v20, :cond_6

    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 7116
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 7118
    :cond_6
    monitor-exit p0

    .line 7119
    return-void

    .line 7010
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v9    # "oldStatus":I
    .end local v20    # "onBattery":Z
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 7026
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    .restart local v9    # "oldStatus":I
    .restart local v20    # "onBattery":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v10, 0x80000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_1

    .line 7118
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v9    # "oldStatus":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 7037
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    .restart local v9    # "oldStatus":I
    :cond_9
    const/16 v3, 0x60

    move/from16 v0, p4

    if-ge v0, v3, :cond_3

    .line 7038
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_3

    .line 7039
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 7040
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    goto/16 :goto_2

    .line 7056
    :cond_a
    const/4 v2, 0x0

    .line 7057
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v0, p4

    if-eq v3, v0, :cond_b

    .line 7058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 7059
    const/4 v2, 0x1

    .line 7061
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move/from16 v0, p1

    if-eq v3, v0, :cond_c

    .line 7062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 7063
    const/4 v2, 0x1

    .line 7065
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move/from16 v0, p2

    if-eq v3, v0, :cond_d

    .line 7066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 7067
    const/4 v2, 0x1

    .line 7069
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move/from16 v0, p3

    if-eq v3, v0, :cond_e

    .line 7070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 7071
    const/4 v2, 0x1

    .line 7073
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, 0xa

    move/from16 v0, p5

    if-ge v0, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, -0xa

    move/from16 v0, p5

    if-gt v0, v3, :cond_10

    .line 7075
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 7076
    const/4 v2, 0x1

    .line 7078
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, 0x14

    move/from16 v0, p6

    if-gt v0, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, -0x14

    move/from16 v0, p6

    if-ge v0, v3, :cond_12

    .line 7080
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 7081
    const/4 v2, 0x1

    .line 7083
    :cond_12
    if-eqz v2, :cond_13

    .line 7084
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 7086
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    int-to-long v10, v3

    const/16 v3, 0x30

    shl-long/2addr v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    int-to-long v12, v3

    const/16 v3, 0x38

    shl-long/2addr v12, v3

    or-long/2addr v10, v12

    move/from16 v0, p4

    and-int/lit16 v3, v0, 0xff

    int-to-long v12, v3

    const/16 v3, 0x28

    shl-long/2addr v12, v3

    or-long v16, v10, v12

    .line 7089
    .local v16, "modeBits":J
    if-eqz v20, :cond_14

    .line 7090
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_5

    .line 7091
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepTime:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    sub-int v15, v3, p4

    move-wide/from16 v18, v4

    invoke-static/range {v11 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->addLevelSteps([JIJIJJ)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    .line 7094
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    .line 7095
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    .line 7096
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepTime:J

    .line 7097
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 7098
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto/16 :goto_3

    .line 7101
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_5

    .line 7102
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepTime:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    sub-int v15, p4, v3

    move-wide/from16 v18, v4

    invoke-static/range {v11 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->addLevelSteps([JIJIJJ)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    .line 7105
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 7106
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 7107
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepTime:J

    .line 7108
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 7109
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method public setBtHeadset(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 2
    .param p1, "headset"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 1885
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1886
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 1888
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1889
    return-void
.end method

.method public setCallback(Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .prologue
    .line 6487
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .line 6488
    return-void
.end method

.method protected setCpuSpeedSteps(I)V
    .locals 0
    .param p1, "numSpeedSteps"    # I

    .prologue
    .line 7556
    sput p1, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    .line 7557
    return-void
.end method

.method protected setKernelWakelockUpdateVersion(I)V
    .locals 0
    .param p1, "kernelWakelockUpdateVersion"    # I

    .prologue
    .line 7564
    sput p1, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 7565
    return-void
.end method

.method public setNoAutoReset(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2675
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    .line 2676
    return-void
.end method

.method public setNumSpeedSteps(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 6491
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->setCpuSpeedSteps(I)V

    .line 6492
    :cond_0
    return-void
.end method

.method setOnBatteryLocked(JJZII)V
    .locals 21
    .param p1, "mSecRealtime"    # J
    .param p3, "mSecUptime"    # J
    .param p5, "onBattery"    # Z
    .param p6, "oldStatus"    # I
    .param p7, "level"    # I

    .prologue
    .line 6829
    const/4 v4, 0x0

    .line 6830
    .local v4, "doWrite":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 6831
    .local v18, "m":Landroid/os/Message;
    if-eqz p5, :cond_7

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, v18

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 6832
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6834
    const-wide/16 v6, 0x3e8

    mul-long v14, p3, v6

    .line 6835
    .local v14, "uptime":J
    const-wide/16 v6, 0x3e8

    mul-long v16, p1, v6

    .line 6836
    .local v16, "realtime":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    const/16 v20, 0x1

    .line 6837
    .local v20, "screenOn":Z
    :goto_1
    if-eqz p5, :cond_b

    .line 6842
    const/4 v10, 0x0

    .line 6843
    .local v10, "reset":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    if-nez v5, :cond_3

    const/4 v5, 0x5

    move/from16 v0, p6

    if-eq v0, v5, :cond_1

    const/16 v5, 0x5a

    move/from16 v0, p7

    if-ge v0, v5, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_0

    const/16 v5, 0x50

    move/from16 v0, p7

    if-ge v0, v5, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/high16 v6, 0x40000

    if-lt v5, v6, :cond_3

    .line 6848
    :cond_1
    const-string v5, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resetting battery stats: level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dischargeLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lowAmount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " highAmount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6855
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0x14

    if-lt v5, v6, :cond_2

    .line 6856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 6857
    .local v19, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 6858
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6880
    .end local v19    # "parcel":Landroid/os/Parcel;
    :cond_2
    const/4 v4, 0x1

    .line 6881
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 6882
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 6883
    const/4 v10, 0x1

    .line 6884
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    .line 6886
    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 6887
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    .line 6888
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    .line 6889
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepTime:J

    .line 6890
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 6891
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 6892
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 6893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 6894
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x80001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 6897
    if-eqz v10, :cond_4

    .line 6898
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 6899
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 6901
    :cond_4
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 6902
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6903
    if-eqz v20, :cond_9

    .line 6904
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6905
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 6910
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6911
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6912
    const/4 v12, 0x1

    if-nez v20, :cond_a

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 6935
    .end local v10    # "reset":Z
    :goto_4
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v5, v6, p1

    if-gez v5, :cond_6

    .line 6936
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-eqz v5, :cond_6

    .line 6937
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 6940
    :cond_6
    return-void

    .line 6831
    .end local v14    # "uptime":J
    .end local v16    # "realtime":J
    .end local v20    # "screenOn":Z
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 6836
    .restart local v14    # "uptime":J
    .restart local v16    # "realtime":J
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 6907
    .restart local v10    # "reset":Z
    .restart local v20    # "screenOn":Z
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6908
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_2

    .line 6912
    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    .line 6914
    .end local v10    # "reset":Z
    :cond_b
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 6915
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 6916
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 6917
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 6920
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 6921
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6922
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    if-ge v0, v5, :cond_c

    .line 6923
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 6924
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 6926
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 6927
    const/4 v12, 0x0

    if-nez v20, :cond_d

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 6928
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    .line 6929
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 6930
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 6931
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepTime:J

    .line 6932
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 6933
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto/16 :goto_4

    .line 6927
    :cond_d
    const/4 v13, 0x0

    goto :goto_5
.end method

.method public setRadioScanningTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 6495
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 6496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setTimeout(J)V

    .line 6498
    :cond_0
    return-void
.end method

.method public setRecordAllHistoryLocked(Z)V
    .locals 13
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2637
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    .line 2638
    if-nez p1, :cond_1

    .line 2640
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    .line 2643
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2645
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    .line 2646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2647
    .local v2, "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2648
    .local v4, "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2649
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2650
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 2651
    const/16 v6, 0x4001

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2650
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2658
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2660
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    .line 2661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2662
    .restart local v2    # "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2663
    .restart local v4    # "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2664
    .restart local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2665
    .restart local v12    # "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 2666
    const v6, 0x8001

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2665
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2672
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method public shutdownLocked()V
    .locals 4

    .prologue
    .line 7669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordShutdownLocked(JJ)V

    .line 7670
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 7671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    .line 7672
    return-void
.end method

.method public startAddingCpuLocked()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2825
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2827
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2828
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 2829
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2830
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDistributeWakelockCpu:Z

    .line 2854
    :cond_0
    :goto_0
    return v4

    .line 2834
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDistributeWakelockCpu:Z

    if-eqz v5, :cond_0

    .line 2838
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDistributeWakelockCpu:Z

    .line 2842
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 2843
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2844
    .local v2, "st":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v5, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    if-eqz v5, :cond_3

    .line 2845
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2848
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v3, :cond_3

    iget v5, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_3

    .line 2849
    const/16 v4, 0x32

    goto :goto_0

    .line 2842
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public startIteratingHistoryLocked()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6566
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    if-gtz v6, :cond_0

    .line 6582
    :goto_0
    return v4

    .line 6569
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6570
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 6571
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 6572
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    .line 6573
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    .line 6574
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    .line 6575
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6576
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$HistoryTag;

    .line 6577
    .local v3, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6578
    .local v2, "idx":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    iget-object v6, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    aput-object v6, v4, v2

    .line 6579
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    iget v6, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    aput v6, v4, v2

    .line 6580
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    iget-object v6, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    goto :goto_1

    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "idx":I
    .end local v3    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_1
    move v4, v5

    .line 6582
    goto :goto_0
.end method

.method public startIteratingOldHistoryLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6504
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-nez v2, :cond_0

    .line 6511
    :goto_0
    return v0

    .line 6507
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6508
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 6509
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 6510
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    move v0, v1

    .line 6511
    goto :goto_0
.end method

.method stopAllPhoneSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    .prologue
    .line 3230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3231
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 3232
    if-ne v2, p1, :cond_1

    .line 3231
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3235
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3236
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1

    .line 3239
    :cond_2
    return-void
.end method

.method stopAllWifiSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    .prologue
    .line 3687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3688
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 3689
    if-ne v2, p1, :cond_1

    .line 3688
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3692
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3693
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1

    .line 3696
    :cond_2
    return-void
.end method

.method updateDischargeScreenLevelsLocked(ZZ)V
    .locals 4
    .param p1, "oldScreenOn"    # Z
    .param p2, "newScreenOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 6796
    if-eqz p1, :cond_1

    .line 6797
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 6798
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 6799
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6800
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 6809
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 6810
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6811
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 6816
    :goto_1
    return-void

    .line 6803
    .end local v0    # "diff":I
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 6804
    .restart local v0    # "diff":I
    if-lez v0, :cond_0

    .line 6805
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6806
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    goto :goto_0

    .line 6813
    :cond_2
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6814
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_1
.end method

.method public updateKernelWakelocksLocked()V
    .locals 10

    .prologue
    .line 7122
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->readKernelWakelockStats()Ljava/util/Map;

    move-result-object v5

    .line 7124
    .local v5, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    if-nez v5, :cond_1

    .line 7126
    const-string v8, "BatteryStatsImpl"

    const-string v9, "Couldn\'t get kernel wake lock stats"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    :cond_0
    return-void

    .line 7130
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7131
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7132
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .line 7134
    .local v4, "kws":Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7135
    .local v3, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v3, :cond_2

    .line 7136
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 7138
    .restart local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7140
    :cond_2
    iget v8, v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    .line 7141
    iget-wide v8, v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    .line 7142
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockUpdateVersion()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    goto :goto_0

    .line 7145
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v4    # "kws":Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 7147
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7148
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7149
    .local v7, "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockUpdateVersion()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 7150
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    goto :goto_1
.end method

.method public updateTimeBasesLocked(ZZJJ)V
    .locals 9
    .param p1, "unplugged"    # Z
    .param p2, "screenOff"    # Z
    .param p3, "uptime"    # J
    .param p5, "realtime"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2458
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2459
    if-eqz p1, :cond_3

    .line 2461
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 2462
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 2470
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    move v1, v6

    .line 2471
    .local v1, "unpluggedScreenOff":Z
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eq v1, v0, :cond_2

    .line 2472
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 2473
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    .line 2474
    if-nez v1, :cond_1

    .line 2477
    iput-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDistributeWakelockCpu:Z

    .line 2479
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    .line 2481
    :cond_2
    return-void

    .line 2465
    .end local v1    # "unpluggedScreenOff":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 2466
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    goto :goto_0

    :cond_4
    move v1, v7

    .line 2470
    goto :goto_1
.end method

.method public writeAsyncLocked()V
    .locals 1

    .prologue
    .line 7678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 7679
    return-void
.end method

.method writeHistory(Landroid/os/Parcel;ZZ)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclData"    # Z
    .param p3, "andOldHistory"    # Z

    .prologue
    const/4 v8, 0x0

    .line 7878
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 7879
    if-nez p2, :cond_1

    .line 7880
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 7881
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 7899
    :cond_0
    :goto_0
    return-void

    .line 7884
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7885
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7886
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 7887
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7888
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7889
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 7891
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7894
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {p1, v3, v8, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 7896
    if-eqz p3, :cond_0

    .line 7897
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->writeOldHistory(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 24
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1943
    if-eqz p3, :cond_0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1944
    :cond_0
    const v19, 0x7fffd

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1945
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2044
    :cond_1
    :goto_0
    return-void

    .line 1949
    :cond_2
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    sub-long v8, v20, v22

    .line 1950
    .local v8, "deltaTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v12

    .line 1951
    .local v12, "lastBatteryLevelInt":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v13

    .line 1954
    .local v13, "lastStateInt":I
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-ltz v19, :cond_3

    const-wide/32 v20, 0x7fffffff

    cmp-long v19, v8, v20

    if-lez v19, :cond_10

    .line 1955
    :cond_3
    const v7, 0x7ffff

    .line 1961
    .local v7, "deltaTimeToken":I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    const/high16 v20, -0x1000000

    and-int v19, v19, v20

    or-int v10, v7, v19

    .line 1962
    .local v10, "firstToken":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v4

    .line 1963
    .local v4, "batteryLevelInt":I
    if-eq v4, v12, :cond_12

    const/4 v5, 0x1

    .line 1964
    .local v5, "batteryLevelIntChanged":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 1965
    const/high16 v19, 0x80000

    or-int v10, v10, v19

    .line 1967
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    .line 1968
    .local v15, "stateInt":I
    if-eq v15, v13, :cond_13

    const/16 v16, 0x1

    .line 1969
    .local v16, "stateIntChanged":Z
    :goto_3
    if-eqz v16, :cond_5

    .line 1970
    const/high16 v19, 0x100000

    or-int v10, v10, v19

    .line 1972
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    const/4 v14, 0x1

    .line 1973
    .local v14, "state2IntChanged":Z
    :goto_4
    if-eqz v14, :cond_6

    .line 1974
    const/high16 v19, 0x200000

    or-int v10, v10, v19

    .line 1976
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1977
    :cond_7
    const/high16 v19, 0x400000

    or-int v10, v10, v19

    .line 1979
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1980
    const/high16 v19, 0x800000

    or-int v10, v10, v19

    .line 1982
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1986
    const v19, 0x7fffe

    move/from16 v0, v19

    if-lt v7, v0, :cond_a

    .line 1987
    const v19, 0x7fffe

    move/from16 v0, v19

    if-ne v7, v0, :cond_15

    .line 1989
    long-to-int v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    :cond_a
    :goto_5
    if-eqz v5, :cond_b

    .line 1996
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    :cond_b
    if-eqz v16, :cond_c

    .line 2004
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2012
    :cond_c
    if-eqz v14, :cond_d

    .line 2013
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 2020
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    .line 2021
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v17

    .line 2027
    .local v17, "wakeLockIndex":I
    :goto_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    if-eqz v19, :cond_17

    .line 2028
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v18

    .line 2034
    .local v18, "wakeReasonIndex":I
    :goto_7
    shl-int/lit8 v19, v18, 0x10

    or-int v19, v19, v17

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2036
    .end local v17    # "wakeLockIndex":I
    .end local v18    # "wakeReasonIndex":I
    :cond_f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2037
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v11

    .line 2038
    .local v11, "index":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v19, v0

    const v20, 0xffff

    and-int v19, v19, v20

    shl-int/lit8 v20, v11, 0x10

    or-int v6, v19, v20

    .line 2039
    .local v6, "codeAndIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1956
    .end local v4    # "batteryLevelInt":I
    .end local v5    # "batteryLevelIntChanged":Z
    .end local v6    # "codeAndIndex":I
    .end local v7    # "deltaTimeToken":I
    .end local v10    # "firstToken":I
    .end local v11    # "index":I
    .end local v14    # "state2IntChanged":Z
    .end local v15    # "stateInt":I
    .end local v16    # "stateIntChanged":Z
    :cond_10
    const-wide/32 v20, 0x7fffd

    cmp-long v19, v8, v20

    if-ltz v19, :cond_11

    .line 1957
    const v7, 0x7fffe

    .restart local v7    # "deltaTimeToken":I
    goto/16 :goto_1

    .line 1959
    .end local v7    # "deltaTimeToken":I
    :cond_11
    long-to-int v7, v8

    .restart local v7    # "deltaTimeToken":I
    goto/16 :goto_1

    .line 1963
    .restart local v4    # "batteryLevelInt":I
    .restart local v10    # "firstToken":I
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1968
    .restart local v5    # "batteryLevelIntChanged":Z
    .restart local v15    # "stateInt":I
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1972
    .restart local v16    # "stateIntChanged":Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1992
    .restart local v14    # "state2IntChanged":Z
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_5

    .line 2025
    :cond_16
    const v17, 0xffff

    .restart local v17    # "wakeLockIndex":I
    goto :goto_6

    .line 2032
    :cond_17
    const v18, 0xffff

    .restart local v18    # "wakeReasonIndex":I
    goto :goto_7
.end method

.method writeLocked(Z)V
    .locals 4
    .param p1, "sync"    # Z

    .prologue
    .line 7686
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_1

    .line 7687
    const-string v1, "BatteryStats"

    const-string v2, "writeLocked: no file associated with this instance"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7713
    :cond_0
    :goto_0
    return-void

    .line 7691
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    if-nez v1, :cond_0

    .line 7695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7696
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 7697
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 7699
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v1, :cond_2

    .line 7700
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7702
    :cond_2
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7704
    if-eqz p1, :cond_3

    .line 7705
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->commitPendingDataToDisk()V

    goto :goto_0

    .line 7707
    :cond_3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$2;

    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method writeOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 7903
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .locals 46
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    .prologue
    .line 8204
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 8208
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v34

    .line 8210
    .local v34, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v44, 0x3e8

    mul-long v6, v4, v44

    .line 8211
    .local v6, "NOW_SYS":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v44, 0x3e8

    mul-long v8, v4, v44

    .line 8213
    .local v8, "NOWREAL_SYS":J
    const/16 v4, 0x74

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8215
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    .line 8217
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8218
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8219
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8220
    move-object/from16 v0, p1

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 8224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 8225
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8226
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8227
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8228
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8230
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8231
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8232
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOffSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8233
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 8235
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 8238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8239
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    const/4 v4, 0x5

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 8240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8239
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 8242
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8245
    const/16 v19, 0x0

    :goto_1
    const/4 v4, 0x5

    move/from16 v0, v19

    if-ge v0, v4, :cond_1

    .line 8246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8245
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 8248
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8249
    const/16 v19, 0x0

    :goto_2
    const/16 v4, 0x11

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 8250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8249
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 8252
    :cond_2
    const/16 v19, 0x0

    :goto_3
    const/4 v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 8253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8252
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 8256
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8263
    const/16 v19, 0x0

    :goto_4
    const/16 v4, 0x8

    move/from16 v0, v19

    if-ge v0, v4, :cond_4

    .line 8264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8263
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 8266
    :cond_4
    const/16 v19, 0x0

    :goto_5
    const/16 v4, 0xd

    move/from16 v0, v19

    if-ge v0, v4, :cond_5

    .line 8267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8266
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 8269
    :cond_5
    const/16 v19, 0x0

    :goto_6
    const/4 v4, 0x5

    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 8270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8269
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 8272
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8273
    const/16 v19, 0x0

    :goto_7
    const/4 v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_7

    .line 8274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8273
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 8276
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 8281
    .local v17, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    .line 8282
    .local v29, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    if-eqz v29, :cond_8

    .line 8283
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8284
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8285
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_8

    .line 8287
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 8291
    .end local v17    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v29    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 8293
    .restart local v17    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8294
    .local v37, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v37, :cond_a

    .line 8295
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8296
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8297
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_9

    .line 8299
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 8303
    .end local v17    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v37    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 8305
    .local v15, "NU":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 8306
    const/16 v26, 0x0

    .end local v20    # "i$":Ljava/util/Iterator;
    .local v26, "iu":I
    :goto_a
    move/from16 v0, v26

    if-ge v0, v15, :cond_29

    .line 8307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 8310
    .local v40, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_c

    .line 8311
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8312
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8316
    :goto_b
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_d

    .line 8317
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8318
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8322
    :goto_c
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_e

    .line 8323
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8324
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8328
    :goto_d
    const/16 v19, 0x0

    :goto_e
    const/4 v4, 0x5

    move/from16 v0, v19

    if-ge v0, v4, :cond_10

    .line 8329
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    if-eqz v4, :cond_f

    .line 8330
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8331
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8328
    :goto_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 8314
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 8320
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 8326
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 8333
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 8336
    :cond_10
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_11

    .line 8337
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8338
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8342
    :goto_10
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_12

    .line 8343
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8344
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8348
    :goto_11
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_13

    .line 8349
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8350
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8354
    :goto_12
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_14

    .line 8355
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8356
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8360
    :goto_13
    const/16 v19, 0x0

    :goto_14
    const/4 v4, 0x3

    move/from16 v0, v19

    if-ge v0, v4, :cond_16

    .line 8361
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    if-eqz v4, :cond_15

    .line 8362
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8363
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8360
    :goto_15
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 8340
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 8346
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 8352
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 8358
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 8365
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 8368
    :cond_16
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v4, :cond_18

    .line 8369
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8370
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8375
    :goto_16
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v4, :cond_19

    .line 8376
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8384
    :cond_17
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_1a

    .line 8385
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8396
    :goto_17
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v41

    .line 8397
    .local v41, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 8398
    .local v16, "NW":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8399
    const/16 v27, 0x0

    .local v27, "iw":I
    :goto_18
    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_1f

    .line 8400
    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8401
    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 8402
    .local v42, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_1c

    .line 8403
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8404
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8408
    :goto_19
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_1d

    .line 8409
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8410
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8414
    :goto_1a
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_1e

    .line 8415
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8416
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8399
    :goto_1b
    add-int/lit8 v27, v27, 0x1

    goto :goto_18

    .line 8372
    .end local v16    # "NW":I
    .end local v27    # "iw":I
    .end local v41    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v42    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_16

    .line 8378
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8379
    const/16 v19, 0x0

    :goto_1c
    const/4 v4, 0x3

    move/from16 v0, v19

    if-ge v0, v4, :cond_17

    .line 8380
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8379
    add-int/lit8 v19, v19, 0x1

    goto :goto_1c

    .line 8387
    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8388
    const/16 v19, 0x0

    :goto_1d
    const/4 v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_1b

    .line 8389
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8390
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8388
    add-int/lit8 v19, v19, 0x1

    goto :goto_1d

    .line 8392
    :cond_1b
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8393
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto/16 :goto_17

    .line 8406
    .restart local v16    # "NW":I
    .restart local v27    # "iw":I
    .restart local v41    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v42    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_19

    .line 8412
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1a

    .line 8418
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 8422
    .end local v42    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_1f
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v36

    .line 8423
    .local v36, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v36 .. v36}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 8424
    .local v13, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 8425
    const/16 v24, 0x0

    .local v24, "is":I
    :goto_1e
    move/from16 v0, v24

    if-ge v0, v13, :cond_20

    .line 8426
    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8427
    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8425
    add-int/lit8 v24, v24, 0x1

    goto :goto_1e

    .line 8430
    :cond_20
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v28

    .line 8431
    .local v28, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 8432
    .local v11, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 8433
    const/16 v22, 0x0

    .local v22, "ij":I
    :goto_1f
    move/from16 v0, v22

    if-ge v0, v11, :cond_21

    .line 8434
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8435
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8433
    add-int/lit8 v22, v22, 0x1

    goto :goto_1f

    .line 8438
    :cond_21
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 8439
    .local v14, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8440
    const/16 v25, 0x0

    .local v25, "ise":I
    :goto_20
    move/from16 v0, v25

    if-ge v0, v14, :cond_23

    .line 8441
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8442
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 8443
    .local v31, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_22

    .line 8444
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8445
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 8440
    :goto_21
    add-int/lit8 v25, v25, 0x1

    goto :goto_20

    .line 8447
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 8451
    .end local v31    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_23
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 8452
    .local v12, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 8453
    const/16 v23, 0x0

    .local v23, "ip":I
    :goto_22
    move/from16 v0, v23

    if-ge v0, v12, :cond_26

    .line 8454
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8455
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 8456
    .local v30, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8457
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8458
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8459
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8460
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8461
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8462
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v10, v4

    .line 8463
    .local v10, "N":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 8464
    const/16 v19, 0x0

    :goto_23
    move/from16 v0, v19

    if-ge v0, v10, :cond_25

    .line 8465
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v4, v4, v19

    if-eqz v4, :cond_24

    .line 8466
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8467
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v4, v4, v19

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8464
    :goto_24
    add-int/lit8 v19, v19, 0x1

    goto :goto_23

    .line 8469
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 8472
    :cond_25
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 8453
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_22

    .line 8475
    .end local v10    # "N":I
    .end local v30    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_26
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 8476
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 8477
    if-lez v12, :cond_28

    .line 8479
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_27
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 8480
    .local v18, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8481
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 8482
    .local v30, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8483
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 8484
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 8485
    if-lez v13, :cond_27

    .line 8487
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 8488
    .local v32, "sent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8489
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 8490
    .local v33, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v38

    .line 8492
    .local v38, "time":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8493
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8494
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 8306
    .end local v18    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v30    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v32    # "sent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    .end local v33    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v38    # "time":J
    :cond_28
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 8500
    .end local v11    # "NJ":I
    .end local v12    # "NP":I
    .end local v13    # "NS":I
    .end local v14    # "NSE":I
    .end local v16    # "NW":I
    .end local v22    # "ij":I
    .end local v23    # "ip":I
    .end local v24    # "is":I
    .end local v25    # "ise":I
    .end local v27    # "iw":I
    .end local v28    # "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v36    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v40    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v41    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_29
    return-void
.end method

.method public writeSyncLocked()V
    .locals 1

    .prologue
    .line 7682
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 7683
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 8652
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 8653
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;ZI)V
    .locals 26
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclUids"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 8662
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 8666
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v20

    .line 8668
    .local v20, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v6, v4, v24

    .line 8669
    .local v6, "uSecUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v8, v4, v24

    .line 8670
    .local v8, "uSecRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v10

    .line 8671
    .local v10, "batteryRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v12

    .line 8673
    .local v12, "batteryScreenOffRealtime":J
    const v4, -0x458a8b8b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8675
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    .line 8677
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8678
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8681
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8682
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8683
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8684
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8685
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 8687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 8689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8690
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v15, v4, :cond_1

    .line 8691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8690
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 8685
    .end local v15    # "i":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 8693
    .restart local v15    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowPowerModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8696
    const/4 v15, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v15, v4, :cond_2

    .line 8697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8696
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 8699
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8700
    const/4 v15, 0x0

    :goto_3
    const/16 v4, 0x11

    if-ge v15, v4, :cond_3

    .line 8701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8700
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 8703
    :cond_3
    const/4 v15, 0x0

    :goto_4
    const/4 v4, 0x4

    if-ge v15, v4, :cond_4

    .line 8704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8703
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 8707
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8714
    const/4 v15, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v15, v4, :cond_5

    .line 8715
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8714
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 8717
    :cond_5
    const/4 v15, 0x0

    :goto_6
    const/16 v4, 0xd

    if-ge v15, v4, :cond_6

    .line 8718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8717
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 8720
    :cond_6
    const/4 v15, 0x0

    :goto_7
    const/4 v4, 0x5

    if-ge v15, v4, :cond_7

    .line 8721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8720
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 8723
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8724
    const/4 v15, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v15, v4, :cond_8

    .line 8725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8724
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 8727
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8728
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8729
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8731
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8732
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8733
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8734
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8735
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8736
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8737
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8738
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8739
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8740
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8741
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumDischargeStepDurations:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepDurations:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 8743
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumChargeStepDurations:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepDurations:[J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 8745
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8747
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8749
    if-eqz p2, :cond_c

    .line 8750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 8752
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8753
    .local v17, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v17, :cond_9

    .line 8754
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8755
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8756
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_9

    .line 8758
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 8761
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 8763
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8764
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v19, :cond_b

    .line 8765
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8766
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8767
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_a

    .line 8769
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 8773
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8776
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8778
    if-eqz p2, :cond_e

    .line 8779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 8780
    .local v18, "size":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8781
    const/4 v15, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v15, v0, :cond_f

    .line 8782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 8785
    .local v22, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 8781
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 8788
    .end local v18    # "size":I
    .end local v22    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8790
    :cond_f
    return-void
.end method

.method public writeToParcelWithoutUids(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 8656
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 8657
    return-void
.end method
