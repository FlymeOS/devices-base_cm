.class Lcom/android/server/shrinker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BACKUP:Ljava/lang/String; = "Backup"

.field public static final BACKUP_APP_ADJ:I = 0x3

.field public static final CACHED:Ljava/lang/String; = "Cached"

.field public static final CACHED_APP_MAX_ADJ:I = 0xf

.field public static final CACHED_APP_MIN_ADJ:I = 0x9

.field public static DENSITY:I = 0x0

.field public static final FOREGROUND:Ljava/lang/String; = "Foreground"

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY:Ljava/lang/String; = "Heavy"

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field public static final HOME:Ljava/lang/String; = "Home"

.field public static final HOME_APP_ADJ:I = 0x6

.field public static IS_2K:Z = false

.field public static IS_ABOVE_4G:Z = false

.field public static LOW_STATUS_KB:I = 0x0

.field public static final MEMINFO_GPU_CACHED:I = 0xe

.field public static final MEMINFO_ION_CACHED:I = 0xd

.field public static final MEM_FACTOR_CRITICAL:I = 0x2

.field public static final MEM_FACTOR_LOW:I = 0x1

.field public static final MEM_FACTOR_NORMAL:I = 0x0

.field private static final MEM_READER:Lcom/android/internal/util/MemInfoReader;

.field public static final PERCEPTIBLE:Ljava/lang/String; = "Perceptible"

.field public static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field public static final PERSISTENT:Ljava/lang/String; = "Persistent"

.field public static final PERSISTENT_PROC_ADJ:I = -0xc

.field public static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field public static final PREVIOUS:Ljava/lang/String; = "Previous"

.field public static final PREVIOUS_APP_ADJ:I = 0x7

.field public static PROC_KILL_ALL:I = 0x0

.field public static PROC_KILL_MAIN:I = 0x0

.field private static final PROC_STATS_FORMAT:[I

.field public static final SERVICES:Ljava/lang/String; = "Services"

.field public static final SERVICE_ADJ:I = 0x5

.field public static final SERVICE_B_ADJ:I = 0x8

.field public static final SYSTEM:Ljava/lang/String; = "System"

.field public static final SYSTEM_ADJ:I = -0x10

.field public static final TAG:Ljava/lang/String; = "Shrinker"

.field public static TOTAL_MEMORY_G:I = 0x0

.field public static final UNKNOWN_ADJ:I = 0x10

.field public static final VISIBLE:Ljava/lang/String; = "Visible"

.field public static final VISIBLE_APP_ADJ:I = 0x1

.field private static final sBuffer:[B

.field public static sGetRawInfo:Ljava/lang/reflect/Method;

.field public static sReadExtraMemInfo:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x1e0

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 52
    const/16 v4, 0x80

    new-array v4, v4, [B

    sput-object v4, Lcom/android/server/shrinker/Utils;->sBuffer:[B

    .line 62
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v4, Lcom/android/server/shrinker/Utils;->MEM_READER:Lcom/android/internal/util/MemInfoReader;

    .line 63
    invoke-static {}, Lcom/android/server/shrinker/Utils;->totalMemoryG()I

    move-result v4

    sput v4, Lcom/android/server/shrinker/Utils;->TOTAL_MEMORY_G:I

    .line 64
    const-string/jumbo v4, "ro.sf.lcd_density"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/shrinker/Utils;->DENSITY:I

    .line 65
    sget v4, Lcom/android/server/shrinker/Utils;->DENSITY:I

    if-le v4, v8, :cond_0

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/server/shrinker/Utils;->IS_2K:Z

    .line 66
    sget v4, Lcom/android/server/shrinker/Utils;->TOTAL_MEMORY_G:I

    if-lt v4, v7, :cond_1

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/android/server/shrinker/Utils;->IS_ABOVE_4G:Z

    .line 67
    const/16 v4, 0x18

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/android/server/shrinker/Utils;->PROC_STATS_FORMAT:[I

    .line 94
    sput v6, Lcom/android/server/shrinker/Utils;->PROC_KILL_ALL:I

    .line 95
    sput v5, Lcom/android/server/shrinker/Utils;->PROC_KILL_MAIN:I

    .line 270
    :try_start_0
    const-string/jumbo v4, "com.android.internal.util.MemInfoReader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 271
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "readExtraMemInfo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/server/shrinker/Utils;->sReadExtraMemInfo:Ljava/lang/reflect/Method;

    .line 272
    const-string/jumbo v4, "getRawInfo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/server/shrinker/Utils;->sGetRawInfo:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_2
    const/4 v1, 0x0

    .line 278
    .local v1, "defaultLowSize":I
    invoke-static {}, Lcom/android/server/shrinker/Utils;->totalMemoryG()I

    move-result v3

    .line 279
    .local v3, "total":I
    if-lt v3, v7, :cond_2

    .line 280
    const v1, 0x7d000

    .line 286
    :goto_3
    const-string/jumbo v4, "persist.sys.shrink_mem_level"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const v5, 0x32000

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/android/server/shrinker/Utils;->LOW_STATUS_KB:I

    .line 22
    return-void

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultLowSize":I
    .end local v3    # "total":I
    :cond_0
    move v4, v6

    .line 65
    goto :goto_0

    :cond_1
    move v4, v6

    .line 66
    goto :goto_1

    .line 273
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Shrinker"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 281
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "defaultLowSize":I
    .restart local v3    # "total":I
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 282
    const v1, 0x64000

    goto :goto_3

    .line 284
    :cond_3
    const v1, 0x3e800

    goto :goto_3

    .line 67
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classify(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    const/4 v2, 0x0

    .line 138
    .local v2, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    const/4 v0, 0x0

    .line 139
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 140
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "label":Ljava/lang/String;
    .end local v2    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    .local v4, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/shrinker/PackageRecordExt;

    .line 141
    .local v3, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget v5, v3, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    invoke-static {v5}, Lcom/android/server/shrinker/Utils;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 143
    .local v2, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    if-nez v2, :cond_0

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .restart local v2    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v0    # "label":Ljava/lang/String;
    .end local v2    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/shrinker/PackageRecordExt;>;"
    .end local v3    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_1
    return-object v1
.end method

.method public static getCmdline(I)Ljava/lang/String;
    .locals 12
    .param p0, "pid"    # I

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, "is":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 157
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/proc/%d/cmdline"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v8, Lcom/android/server/shrinker/Utils;->sBuffer:[B

    invoke-virtual {v4, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 159
    .local v5, "len":I
    const/4 v7, -0x1

    .line 160
    .local v7, "slashIndex":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 161
    if-lez v5, :cond_3

    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "i":I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 164
    sget-object v8, Lcom/android/server/shrinker/Utils;->sBuffer:[B

    aget-byte v8, v8, v2

    if-nez v8, :cond_1

    .line 170
    :cond_0
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/android/server/shrinker/Utils;->sBuffer:[B

    add-int/lit8 v10, v7, 0x1

    sub-int v11, v2, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 170
    return-object v8

    .line 166
    :cond_1
    :try_start_2
    sget-object v8, Lcom/android/server/shrinker/Utils;->sBuffer:[B

    aget-byte v8, v8, v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_2

    .line 167
    move v7, v2

    .line 163
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :cond_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v3, v4

    .line 178
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v7    # "slashIndex":I
    :goto_1
    const/4 v8, 0x0

    return-object v8

    .line 173
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 175
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 172
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 175
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 174
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v8

    .line 175
    .end local v3    # "is":Ljava/io/FileInputStream;
    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 176
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 174
    throw v8

    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 172
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 173
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getCurrentMemFree()J
    .locals 4

    .prologue
    .line 237
    sget-object v0, Lcom/android/server/shrinker/Utils;->MEM_READER:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 238
    sget-object v0, Lcom/android/server/shrinker/Utils;->MEM_READER:Lcom/android/internal/util/MemInfoReader;

    invoke-static {v0}, Lcom/android/server/shrinker/Utils;->getExtraMemFree(Ljava/lang/Object;)J

    move-result-wide v0

    sget-object v2, Lcom/android/server/shrinker/Utils;->MEM_READER:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/android/server/shrinker/Utils;->MEM_READER:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getExtraMemFree(Ljava/lang/Object;)J
    .locals 8
    .param p0, "receiver"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0xe

    .line 221
    sget-object v2, Lcom/android/server/shrinker/Utils;->sReadExtraMemInfo:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/shrinker/Utils;->sGetRawInfo:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 222
    :cond_0
    return-wide v6

    .line 225
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/shrinker/Utils;->sReadExtraMemInfo:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v2, Lcom/android/server/shrinker/Utils;->sGetRawInfo:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 227
    .local v0, "buf":[J
    if-eqz v0, :cond_2

    array-length v2, v0

    if-le v2, v4, :cond_2

    .line 228
    const/16 v2, 0xd

    aget-wide v2, v0, v2

    const/16 v4, 0xe

    aget-wide v4, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    return-wide v2

    .line 230
    .end local v0    # "buf":[J
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Shrinker"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-wide v6
.end method

.method public static getMemTotalSize()J
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/android/server/shrinker/Utils;->MEM_READER:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 243
    sget-object v0, Lcom/android/server/shrinker/Utils;->MEM_READER:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "adj"    # I

    .prologue
    .line 98
    packed-switch p0, :pswitch_data_0

    .line 123
    :pswitch_0
    const-string/jumbo v0, "Cached"

    return-object v0

    .line 100
    :pswitch_1
    const-string/jumbo v0, "System"

    return-object v0

    .line 103
    :pswitch_2
    const-string/jumbo v0, "Persistent"

    return-object v0

    .line 105
    :pswitch_3
    const-string/jumbo v0, "Foreground"

    return-object v0

    .line 107
    :pswitch_4
    const-string/jumbo v0, "Visible"

    return-object v0

    .line 109
    :pswitch_5
    const-string/jumbo v0, "Perceptible"

    return-object v0

    .line 111
    :pswitch_6
    const-string/jumbo v0, "Backup"

    return-object v0

    .line 113
    :pswitch_7
    const-string/jumbo v0, "Heavy"

    return-object v0

    .line 115
    :pswitch_8
    const-string/jumbo v0, "Services"

    return-object v0

    .line 117
    :pswitch_9
    const-string/jumbo v0, "Home"

    return-object v0

    .line 119
    :pswitch_a
    const-string/jumbo v0, "Previous"

    return-object v0

    .line 121
    :pswitch_b
    const-string/jumbo v0, "Services"

    return-object v0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getRss(I)J
    .locals 6
    .param p0, "pid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 128
    new-array v0, v2, [J

    .line 129
    .local v0, "out":[J
    const-string/jumbo v1, "/proc/%d/stat"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/shrinker/Utils;->PROC_STATS_FORMAT:[I

    invoke-static {v1, v2, v5, v0, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    aget-wide v2, v0, v4

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    return-wide v2

    .line 133
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static isEqual(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "rhs"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "lhs"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 199
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    .line 200
    invoke-static {p0}, Lcom/android/server/am/Ams_Utils;->getCloneId(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/am/Ams_Utils;->getCloneId(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "rhs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "lhs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLargeHalfScreen(II)Z
    .locals 4
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 258
    sget v2, Lcom/android/server/shrinker/Utils;->DENSITY:I

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_1

    .line 259
    mul-int v2, p0, p1

    const v3, 0xfd200

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 260
    :cond_1
    sget v2, Lcom/android/server/shrinker/Utils;->DENSITY:I

    const/16 v3, 0x280

    if-ne v2, v3, :cond_3

    .line 261
    mul-int v2, p0, p1

    const v3, 0x1c2000

    if-lt v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 262
    :cond_3
    sget v2, Lcom/android/server/shrinker/Utils;->DENSITY:I

    const/16 v3, 0x140

    if-ne v2, v3, :cond_5

    .line 263
    mul-int v2, p0, p1

    const v3, 0x5eec0

    if-lt v2, v3, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 265
    :cond_5
    return v0
.end method

.method public static isMTK()Z
    .locals 2

    .prologue
    .line 213
    const-string/jumbo v0, "MTK"

    const-string/jumbo v1, "ro.soc.vendor"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMemStatusLow()Z
    .locals 4

    .prologue
    .line 254
    invoke-static {}, Lcom/android/server/shrinker/Utils;->getCurrentMemFree()J

    move-result-wide v0

    sget v2, Lcom/android/server/shrinker/Utils;->LOW_STATUS_KB:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSamSung()Z
    .locals 2

    .prologue
    .line 217
    const-string/jumbo v0, "SAMSUNG"

    const-string/jumbo v1, "ro.soc.vendor"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValid(Lcom/android/server/shrinker/ProcessRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/shrinker/ProcessRecord;

    .prologue
    const/4 v0, 0x0

    .line 209
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static printStackTrace()V
    .locals 7

    .prologue
    .line 182
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 183
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 185
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 186
    .local v1, "s":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "Shrinker"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static sleep(I)V
    .locals 4
    .param p0, "duration"    # I

    .prologue
    .line 192
    int-to-long v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static totalMemoryG()I
    .locals 5

    .prologue
    const/high16 v4, 0x44800000    # 1024.0f

    .line 247
    invoke-static {}, Lcom/android/server/shrinker/Utils;->getMemTotalSize()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v1, v2, v4

    .line 248
    .local v1, "totalM":F
    div-float v2, v1, v4

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 249
    .local v0, "N":I
    return v0
.end method
