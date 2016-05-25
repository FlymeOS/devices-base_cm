.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final BSERVICE_APP_THRESHOLD:I

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static final EMPTY_APP_PERCENT:I

.field static final ENABLE_B_SERVICE_PROPAGATION:Z

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_BSERVICE_AGING_TIME:I

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CACHE_PERCENT:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_EMPTY_PERCENT:I

.field static final TRIM_ENABLE_MEMORY:J

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x10

.field static final USE_TRIM_SETTINGS:Z

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeHigh32Bit:[I

.field private final mOomMinFreeLow:[I

.field private final mOomMinFreeLow32Bit:[I

.field private final mOomMinFreeLowRam:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v2, 0x64

    const/16 v4, 0xe

    .line 124
    const-string v0, "ro.sys.fw.bservice_age"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_BSERVICE_AGING_TIME:I

    .line 126
    const-string v0, "ro.sys.fw.bservice_limit"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->BSERVICE_APP_THRESHOLD:I

    .line 128
    const-string v0, "ro.sys.fw.bservice_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->ENABLE_B_SERVICE_PROPAGATION:Z

    .line 139
    const-string v0, "ro.sys.fw.bg_apps_limit"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 140
    const-string v0, "ro.sys.fw.use_trim_settings"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    .line 142
    const-string v0, "ro.sys.fw.empty_app_percent"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    .line 143
    const-string v0, "ro.sys.fw.trim_empty_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_PERCENT:I

    .line 145
    const-string v0, "ro.sys.fw.trim_cache_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHE_PERCENT:I

    .line 147
    const-string v0, "ro.sys.fw.trim_enable_memory"

    const-wide/32 v2, 0x40000000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    .line 155
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 166
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimEmptyApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 177
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimCachedApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 543
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 560
    new-array v0, v4, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 577
    new-array v0, v4, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 594
    new-array v0, v4, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 611
    new-array v0, v4, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    return-void

    .line 543
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 560
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 577
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 594
    :array_3
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 611
    :array_4
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x6

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 204
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32Bit:[I

    .line 209
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32Bit:[I

    .line 215
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 221
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 226
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 228
    new-array v1, v2, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLowRam:[I

    .line 243
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 244
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 246
    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 247
    return-void

    .line 198
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 204
    :array_1
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 209
    :array_2
    .array-data 4
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data

    .line 215
    :array_3
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    .line 221
    :array_4
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data

    .line 228
    :array_5
    .array-data 4
        0x3000
        0x4ffe
        0x7ffe
        0xa002
        0xc000
        0xdffe
    .end array-data
.end method

.method public static allowTrim()Z
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 481
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 482
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 483
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 384
    if-ne p2, p3, :cond_1

    .line 385
    if-nez p1, :cond_0

    .line 388
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 386
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 376
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    .line 379
    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, p0, 0x2

    goto :goto_0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .locals 4
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 638
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 647
    .local v0, "table":[J
    :goto_0
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_4

    .line 648
    :cond_0
    const-string v1, "ActivityManager"

    const-string v2, "Invalid Process State within computeNextPssTime"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-wide/16 v2, 0x3a98

    add-long/2addr v2, p4

    .line 653
    :goto_1
    return-wide v2

    .line 638
    .end local v0    # "table":[J
    :cond_1
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    .line 653
    .restart local v0    # "table":[J
    :cond_4
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    goto :goto_1
.end method

.method public static computeTrimCachedApps()I
    .locals 2

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->TRIM_CACHE_PERCENT:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 174
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static computeTrimEmptyApps()I
    .locals 2

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_PERCENT:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 163
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 392
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 393
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 394
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 395
    const-string v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 397
    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 399
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 401
    const-string v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 403
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 405
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 407
    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_7
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    .line 409
    const-string v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_8
    if-ltz p0, :cond_9

    .line 411
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_9
    if-lt p0, v5, :cond_a

    .line 413
    const-string v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_a
    if-lt p0, v4, :cond_b

    .line 415
    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_b
    if-lt p0, v3, :cond_c

    .line 417
    const-string v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_c
    if-lt p0, v1, :cond_d

    .line 419
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 421
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 427
    packed-switch p0, :pswitch_data_0

    .line 474
    const-string v0, "??"

    .line 477
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 429
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .line 430
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 432
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .line 433
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .line 436
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 438
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .line 439
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 441
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "IF"

    .line 442
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "IB"

    .line 445
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 447
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "BU"

    .line 448
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 450
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HW"

    .line 451
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 453
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "S "

    .line 454
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "R "

    .line 457
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 459
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HO"

    .line 460
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 462
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "LA"

    .line 463
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 465
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CA"

    .line 466
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 468
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "Ca"

    .line 469
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 471
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CE"

    .line 472
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch -0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .prologue
    .line 633
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    goto :goto_0
.end method

.method private static openLmkdSocket()Z
    .locals 5

    .prologue
    .line 712
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 713
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 716
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    const/4 v1, 0x1

    .local v0, "ex":Ljava/io/IOException;
    :goto_0
    return v1

    .line 717
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 718
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 721
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 629
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 704
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 705
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 706
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 707
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 708
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    .line 683
    if-ne p2, v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 687
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 688
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 689
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 690
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 691
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 692
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 694
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 695
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOomLevels(IIZ)V
    .locals 24
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x15e

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43af0000    # 350.0f

    div-float v18, v19, v20

    .line 266
    .local v18, "scaleMem":F
    const v10, 0x5dc00

    .line 267
    .local v10, "minSize":I
    const v9, 0xfa000

    .line 268
    .local v9, "maxSize":I
    mul-int v19, p1, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    sub-float v19, v19, v20

    const v20, 0x9c400

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    .line 275
    .local v17, "scaleDisp":F
    cmpl-float v19, v18, v17

    if-lez v19, :cond_2

    move/from16 v16, v18

    .line 276
    .local v16, "scale":F
    :goto_0
    const/16 v19, 0x0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_3

    const/16 v16, 0x0

    .line 278
    :cond_0
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e0009

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 280
    .local v12, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e0008

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 286
    .local v11, "minfree_abs":I
    sget-object v19, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    const/4 v7, 0x1

    .line 287
    .local v7, "is64bit":Z
    :goto_2
    if-eqz v7, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const v21, 0x36ee8

    aput v21, v19, v20

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v19, v0

    const/16 v20, 0x5

    const v21, 0x4f588

    aput v21, v19, v20

    .line 293
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 294
    const/4 v8, 0x0

    .line 295
    .local v8, "low":I
    const/4 v5, 0x0

    .line 297
    .local v5, "high":I
    if-eqz v7, :cond_5

    .line 301
    const-string v19, "XXXXXX"

    const-string v20, "choosing minFree values for 64 Bit"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v19, v0

    aget v8, v19, v6

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v19, v0

    aget v5, v19, v6

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-int v21, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 293
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v11    # "minfree_abs":I
    .end local v12    # "minfree_adj":I
    .end local v16    # "scale":F
    :cond_2
    move/from16 v16, v17

    .line 275
    goto/16 :goto_0

    .line 277
    .restart local v16    # "scale":F
    :cond_3
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v16, v19

    if-lez v19, :cond_0

    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 286
    .restart local v11    # "minfree_abs":I
    .restart local v12    # "minfree_adj":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 309
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v7    # "is64bit":Z
    .restart local v8    # "low":I
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 311
    const-string v19, "XXXXXX"

    const-string v20, "choosing minFree values for lowram"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLowRam:[I

    move-object/from16 v20, v0

    aget v20, v20, v6

    aput v20, v19, v6

    goto :goto_4

    .line 314
    :cond_6
    const-string v19, "XXXXXX"

    const-string v20, "choosing minFree values for 32 Bit"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32Bit:[I

    move-object/from16 v19, v0

    aget v8, v19, v6

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32Bit:[I

    move-object/from16 v19, v0

    aget v5, v19, v6

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-int v21, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    goto :goto_4

    .line 321
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_7
    if-ltz v11, :cond_8

    .line 322
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_8

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 322
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 328
    :cond_8
    if-eqz v12, :cond_a

    .line 329
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_a

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v20, v19, v6

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    aget v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v19, v6

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    if-gez v19, :cond_9

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v20, v19, v6

    .line 329
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 341
    :cond_a
    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 345
    mul-int v19, p1, p2

    mul-int/lit8 v19, v19, 0x4

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    div-int/lit16 v13, v0, 0x400

    .line 346
    .local v13, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e000b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 347
    .local v15, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 349
    .local v14, "reserve_abs":I
    if-ltz v14, :cond_b

    .line 350
    move v13, v14

    .line 353
    :cond_b
    if-eqz v15, :cond_c

    .line 354
    add-int/2addr v13, v15

    .line 355
    if-gez v13, :cond_c

    .line 356
    const/4 v13, 0x0

    .line 360
    :cond_c
    if-eqz p3, :cond_e

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 362
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 363
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 363
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 368
    :cond_d
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 369
    const-string v19, "sys.sysctl.extra_free_kbytes"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_e
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 729
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 730
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_0

    .line 731
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 733
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 729
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 755
    :cond_1
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :try_start_2
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 752
    :goto_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_1

    .line 734
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 749
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 250
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 251
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 252
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 253
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 254
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 255
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 258
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 670
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    .prologue
    .line 657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    .line 662
    :goto_1
    return-wide v2

    .line 657
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    goto :goto_1
.end method
