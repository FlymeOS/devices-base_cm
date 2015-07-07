.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# static fields
.field private static final ATT_KEYGUARD:Ljava/lang/String; = "keyguard"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPackageOnKeyguard:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePriorities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageVisibilities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Landroid/os/Handler;

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rankingHandler"    # Landroid/os/Handler;
    .param p3, "extractorNames"    # [Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v5, Lcom/android/server/notification/NotificationComparator;

    invoke-direct {v5}, Lcom/android/server/notification/NotificationComparator;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 59
    new-instance v5, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v5}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 71
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    .line 73
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    .line 74
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    .line 75
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    .line 77
    array-length v0, p3

    .line 78
    .local v0, "N":I
    new-array v5, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 79
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 81
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 82
    .local v3, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 84
    .local v2, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;)V

    .line 85
    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 86
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v2, v5, v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    .end local v2    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v3    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 89
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t instantiate extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 91
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem accessing extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 96
    return-void
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 329
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 334
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 336
    .restart local p1    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private updateConfig()V
    .locals 4

    .prologue
    .line 244
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 245
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 417
    if-nez p3, :cond_0

    .line 418
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v1, v8

    .line 419
    .local v1, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    const-string v8, "mSignalExtractors.length = "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 422
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 429
    .restart local v1    # "N":I
    if-nez p3, :cond_1

    .line 430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    const-string v8, "package priorities:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 434
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 435
    .local v4, "name":Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-virtual {p3, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 436
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    .line 437
    .local v6, "priorityByUid":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 438
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 439
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 440
    .local v7, "uid":I
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 441
    .local v5, "priority":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    const-string v8, " ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 446
    const-string v8, ") has priority: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 433
    .end local v0    # "M":I
    .end local v3    # "j":I
    .end local v5    # "priority":I
    .end local v6    # "priorityByUid":Landroid/util/SparseIntArray;
    .end local v7    # "uid":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 110
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v8

    .line 111
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 112
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v8, v4

    .line 114
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v6

    .line 115
    .local v6, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v6, :cond_0

    .line 116
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-static {v8, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 118
    .local v5, "m":Landroid/os/Message;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 119
    .local v2, "delay":J
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "delay":J
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v7

    .line 122
    .local v7, "t":Ljava/lang/Throwable;
    const-string v8, "RankingHelper"

    const-string v9, "NotificationSignalExtractor failed."

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v3

    .line 100
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v3, v2

    .line 102
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :goto_1
    return-object v1

    .line 100
    .restart local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "priority":I
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 346
    .local v1, "priorityByUid":Landroid/util/SparseIntArray;
    if-eqz v1, :cond_0

    .line 347
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 349
    :cond_0
    return v0
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 368
    const/16 v0, -0x3e8

    .line 369
    .local v0, "visibility":I
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 370
    .local v1, "visibilityByUid":Landroid/util/SparseIntArray;
    if-eqz v1, :cond_0

    .line 371
    const/16 v2, -0x3e8

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 374
    :cond_0
    return v0
.end method

.method public getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 393
    const/4 v0, 0x1

    .line 394
    .local v0, "keyguard":I
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 395
    .local v1, "keyguardByUid":Landroid/util/SparseIntArray;
    if-eqz v1, :cond_0

    .line 396
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 398
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 129
    .local v6, "type":I
    const/4 v11, 0x2

    if-eq v6, v11, :cond_1

    .line 137
    :cond_0
    return-void

    .line 130
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "tag":Ljava/lang/String;
    const-string v11, "ranking"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 132
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 133
    const-string v11, "version"

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 134
    .local v8, "version":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v11, 0x1

    if-eq v6, v11, :cond_9

    .line 135
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 136
    const/4 v11, 0x3

    if-ne v6, v11, :cond_3

    const-string v11, "ranking"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 139
    :cond_3
    const/4 v11, 0x2

    if-ne v6, v11, :cond_2

    .line 140
    const-string v11, "package"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 141
    const-string v11, "uid"

    const/4 v12, -0x1

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 142
    .local v7, "uid":I
    const-string v11, "priority"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 143
    .local v3, "priority":I
    const-string v11, "visibility"

    const/16 v12, -0x3e8

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 145
    .local v9, "vis":I
    const-string v11, "keyguard"

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, "keyguard":I
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 150
    if-eqz v3, :cond_5

    .line 151
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 152
    .local v4, "priorityByUid":Landroid/util/SparseIntArray;
    if-nez v4, :cond_4

    .line 153
    new-instance v4, Landroid/util/SparseIntArray;

    .end local v4    # "priorityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 154
    .restart local v4    # "priorityByUid":Landroid/util/SparseIntArray;
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_4
    invoke-virtual {v4, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    .end local v4    # "priorityByUid":Landroid/util/SparseIntArray;
    :cond_5
    const/16 v11, -0x3e8

    if-eq v9, v11, :cond_7

    .line 159
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseIntArray;

    .line 160
    .local v10, "visibilityByUid":Landroid/util/SparseIntArray;
    if-nez v10, :cond_6

    .line 161
    new-instance v10, Landroid/util/SparseIntArray;

    .end local v10    # "visibilityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 162
    .restart local v10    # "visibilityByUid":Landroid/util/SparseIntArray;
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_6
    invoke-virtual {v10, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    .end local v10    # "visibilityByUid":Landroid/util/SparseIntArray;
    :cond_7
    const/4 v11, 0x1

    if-eq v0, v11, :cond_2

    .line 167
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 168
    .local v1, "keyguardByUid":Landroid/util/SparseIntArray;
    if-nez v1, :cond_8

    .line 169
    new-instance v1, Landroid/util/SparseIntArray;

    .end local v1    # "keyguardByUid":Landroid/util/SparseIntArray;
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 170
    .restart local v1    # "keyguardByUid":Landroid/util/SparseIntArray;
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_8
    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "keyguard":I
    .end local v1    # "keyguardByUid":Landroid/util/SparseIntArray;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "priority":I
    .end local v7    # "uid":I
    .end local v9    # "vis":I
    :cond_9
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Failed to reach END_DOCUMENT"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePriority(Ljava/lang/String;I)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 358
    .local v0, "priorityByUid":Landroid/util/SparseIntArray;
    if-nez v0, :cond_1

    .line 359
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0    # "priorityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 360
    .restart local v0    # "priorityByUid":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    goto :goto_0
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 383
    .local v0, "visibilityByUid":Landroid/util/SparseIntArray;
    if-nez v0, :cond_1

    .line 384
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0    # "visibilityByUid":Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 385
    .restart local v0    # "visibilityByUid":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    goto :goto_0
.end method

.method public setShowNotificationForPackageOnKeyguard(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyguard"    # I

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 408
    .local v0, "keyguardByUid":Landroid/util/SparseIntArray;
    if-nez v0, :cond_1

    .line 409
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0    # "keyguardByUid":Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 410
    .restart local v0    # "keyguardByUid":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 413
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    goto :goto_0
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 254
    .local v1, "N":I
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 260
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 278
    add-int/lit8 v7, v1, -0x1

    :goto_1
    if-ltz v7, :cond_4

    .line 279
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 280
    .local v10, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v10, v7}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 281
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "groupKey":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .line 283
    .local v8, "isGroupSummary":Z
    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 284
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 261
    .end local v3    # "groupKey":Ljava/lang/String;
    .end local v8    # "isGroupSummary":Z
    .end local v10    # "record":Lcom/android/server/notification/NotificationRecord;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v11, "RankingHelper"

    const-string v12, "Extreme badness during notification sort"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    const-string v11, "RankingHelper"

    const-string v12, "Current notification list: "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_3

    .line 266
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    .line 267
    .local v9, "nr":Lcom/android/server/notification/NotificationRecord;
    const-string v11, "RankingHelper"

    const-string v12, "  [%d] %s (group %s, rank %d, sortkey %s)"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    const/4 v14, 0x2

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 273
    .end local v9    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    throw v2

    .line 289
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v1, :cond_9

    .line 290
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 291
    .restart local v10    # "record":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 292
    .local v4, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "groupSortKey":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 301
    const-string v6, "nsk"

    .line 308
    .local v6, "groupSortKeyPortion":Ljava/lang/String;
    :goto_4
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .line 309
    .restart local v8    # "isGroupSummary":Z
    const-string v13, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v11, 0x5

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x30

    :goto_5
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v14, v15

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x2

    if-eqz v8, :cond_8

    const/16 v11, 0x30

    :goto_6
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v14, v15

    const/4 v11, 0x3

    aput-object v6, v14, v11

    const/4 v11, 0x4

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 289
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 302
    .end local v6    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v8    # "isGroupSummary":Z
    :cond_5
    const-string v11, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 303
    const-string v6, "esk"

    .restart local v6    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    .line 305
    .end local v6    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gsk="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    .line 309
    .restart local v8    # "isGroupSummary":Z
    :cond_7
    const/16 v11, 0x31

    goto :goto_5

    :cond_8
    const/16 v11, 0x31

    goto :goto_6

    .line 317
    .end local v4    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "groupSortKey":Ljava/lang/String;
    .end local v6    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v8    # "isGroupSummary":Z
    .end local v10    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 318
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 322
    return-void

    .line 318
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 21
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/16 v18, 0x0

    const-string v19, "ranking"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const/16 v18, 0x0

    const-string v19, "version"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    new-instance v11, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 187
    .local v11, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 191
    .local v12, "packageUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 192
    .local v10, "packageName":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackagePriorities:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseIntArray;

    .line 194
    .local v14, "priorityByUid":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackageVisibilities:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/SparseIntArray;

    .line 195
    .local v17, "visibilityByUid":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/RankingHelper;->mPackageOnKeyguard:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    .line 197
    .local v9, "keyguardByUid":Landroid/util/SparseIntArray;
    if-eqz v14, :cond_1

    .line 198
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 199
    .local v4, "M":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 200
    invoke-virtual {v14, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 203
    .end local v4    # "M":I
    .end local v7    # "j":I
    :cond_1
    if-eqz v17, :cond_2

    .line 204
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 205
    .restart local v4    # "M":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_1
    if-ge v7, v4, :cond_2

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 209
    .end local v4    # "M":I
    .end local v7    # "j":I
    :cond_2
    if-eqz v9, :cond_3

    .line 210
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 211
    .restart local v4    # "M":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_2
    if-ge v7, v4, :cond_3

    .line 212
    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 215
    .end local v4    # "M":I
    .end local v7    # "j":I
    :cond_3
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 216
    .local v15, "uid":Ljava/lang/Integer;
    const/16 v18, 0x0

    const-string v19, "package"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    if-eqz v14, :cond_4

    .line 219
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    .line 220
    .local v13, "priority":I
    if-eqz v13, :cond_4

    .line 221
    const/16 v18, 0x0

    const-string v19, "priority"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    .end local v13    # "priority":I
    :cond_4
    if-eqz v17, :cond_5

    .line 225
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    .line 226
    .local v16, "visibility":I
    const/16 v18, -0x3e8

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 227
    const/16 v18, 0x0

    const-string v19, "visibility"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    .end local v16    # "visibility":I
    :cond_5
    if-eqz v9, :cond_6

    .line 231
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 232
    .local v8, "keyguard":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_6

    .line 233
    const/16 v18, 0x0

    const-string v19, "keyguard"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    .end local v8    # "keyguard":I
    :cond_6
    const/16 v18, 0x0

    const-string v19, "uid"

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    const/16 v18, 0x0

    const-string v19, "package"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3

    .line 240
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "keyguardByUid":Landroid/util/SparseIntArray;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "priorityByUid":Landroid/util/SparseIntArray;
    .end local v15    # "uid":Ljava/lang/Integer;
    .end local v17    # "visibilityByUid":Landroid/util/SparseIntArray;
    :cond_7
    const/16 v18, 0x0

    const-string v19, "ranking"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    return-void
.end method
