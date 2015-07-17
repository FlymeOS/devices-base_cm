.class Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsComputer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    }
.end annotation


# static fields
.field private static final DEFAULT_BASE_PERIOD_MS:I = 0x1388

.field private static final DEFAULT_MAX_AP_PER_SCAN:I = 0xa

.field private static final DEFAULT_REPORT_THRESHOLD:I = 0xa

.field private static final MAX_BUCKETS:I = 0x8

.field private static final MAX_CHANNELS:I = 0x8

.field private static final mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;


# instance fields
.field mChannelToBucketMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v6, 0x5

    .line 760
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v1, v4, v2, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v1, v6, v6, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v2, v3, v3, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v3, 0x1e

    const/16 v4, 0x37

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v3, 0x3c

    const/16 v4, 0x37

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v2, 0x12c

    const/16 v3, 0xf0

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v3, 0x258

    const/16 v4, 0x1f4

    const/16 v5, 0x5dc

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v3, 0x708

    const/16 v4, 0x5dc

    const v5, 0xfa000

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(III)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    new-instance v4, Lcom/android/server/wifi/WifiNative$ScanSettings;

    invoke-direct {v4}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 779
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput v8, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 780
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/16 v5, 0x1388

    iput v5, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 781
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput v8, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold:I

    .line 783
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    new-array v5, v7, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    iput-object v5, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 784
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 785
    new-instance v0, Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    .line 786
    .local v0, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iput v2, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    .line 787
    iput v6, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 788
    new-array v4, v7, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v4, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 789
    iput v6, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 790
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 791
    new-instance v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .line 792
    .local v1, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v4, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aput-object v1, v4, v3

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 794
    .end local v1    # "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aput-object v0, v4, v2

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    .end local v0    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    .end local v3    # "j":I
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$1;

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>()V

    return-void
.end method

.method private getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 13
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v10, -0x1

    .line 806
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 807
    .local v3, "channels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    if-nez v3, :cond_0

    .line 809
    iget v9, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1300(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v3

    .line 812
    :cond_0
    if-nez v3, :cond_1

    .line 814
    const-string v9, "WifiScanningService"

    const-string v11, "No channels to scan!!"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 855
    :goto_0
    return v8

    .line 818
    :cond_1
    sget-object v9, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    array-length v8, v9

    .line 820
    .local v8, "mostFrequentBucketIndex":I
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v4, v0, v6

    .line 821
    .local v4, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 822
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 823
    .local v2, "bucket":I
    if-ge v2, v8, :cond_2

    .line 824
    move v8, v2

    .line 820
    .end local v2    # "bucket":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 829
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    const/4 v1, -0x1

    .line 830
    .local v1, "bestBucketIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    sget-object v9, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    array-length v9, v9

    if-ge v5, v9, :cond_4

    .line 831
    sget-object v9, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    aget-object v2, v9, v5

    .line 832
    .local v2, "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    iget v9, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMinInSecond:I

    mul-int/lit16 v9, v9, 0x3e8

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-gt v9, v11, :cond_5

    iget v9, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iget v11, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMaxInSecond:I

    mul-int/lit16 v11, v11, 0x3e8

    if-ge v9, v11, :cond_5

    .line 835
    move v1, v5

    .line 840
    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_4
    if-ge v8, v1, :cond_7

    .line 841
    move-object v0, v3

    array-length v7, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_6

    aget-object v4, v0, v6

    .line 842
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 830
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 844
    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_6
    const-string v9, "WifiScanningService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "returning mf bucket number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 846
    :cond_7
    if-eq v1, v10, :cond_9

    .line 847
    move-object v0, v3

    array-length v7, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_8

    aget-object v4, v0, v6

    .line 848
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 850
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_8
    const-string v9, "WifiScanningService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "returning best bucket number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 851
    goto/16 :goto_0

    .line 854
    :cond_9
    const-string v9, "WifiScanningService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find suitable bucket for period "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 855
    goto/16 :goto_0
.end method


# virtual methods
.method addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 20
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 864
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v6

    .line 865
    .local v6, "bucketIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_0

    .line 866
    const-string v17, "WifiScanningService"

    const-string v18, "Ignoring invalid settings"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v17, -0x1

    .line 948
    :goto_0
    return v17

    .line 870
    :cond_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 871
    .local v9, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    if-eqz v9, :cond_1

    array-length v0, v9

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 875
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    move/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1300(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v9

    .line 876
    if-nez v9, :cond_2

    .line 878
    const-string v17, "WifiScanningService"

    const-string v18, "No channels to scan!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/16 v17, -0x1

    goto :goto_0

    .line 884
    :cond_2
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "merging "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v9

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " channels "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for period "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    move-object/from16 v17, v0

    aget-object v5, v17, v6

    .line 888
    .local v5, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    const/4 v2, 0x1

    .line 890
    .local v2, "added":Z
    :goto_1
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "existing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " channels "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 893
    .local v16, "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    move-object v3, v9

    .local v3, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v13, v12

    .end local v3    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .local v13, "i$":I
    :goto_2
    if-ge v13, v14, :cond_7

    aget-object v8, v3, v13

    .line 895
    .local v8, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "desired channel "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v11, 0x0

    .line 898
    .local v11, "found":Z
    iget-object v4, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .local v4, "arr$":[Lcom/android/server/wifi/WifiNative$ChannelSettings;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v12, 0x0

    .end local v13    # "i$":I
    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v15, :cond_3

    aget-object v10, v4, v12

    .line 899
    .local v10, "existingChannelSpec":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget v0, v8, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v17, v0

    iget v0, v10, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 900
    const/4 v11, 0x1

    .line 905
    .end local v10    # "existingChannelSpec":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_3
    if-nez v11, :cond_6

    .line 906
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 893
    :goto_4
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_2

    .line 888
    .end local v2    # "added":Z
    .end local v4    # "arr$":[Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .end local v8    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v11    # "found":Z
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 898
    .restart local v2    # "added":Z
    .restart local v4    # "arr$":[Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .restart local v8    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v10    # "existingChannelSpec":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .restart local v11    # "found":Z
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v16    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 908
    .end local v10    # "existingChannelSpec":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_6
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Already scanning channel "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 912
    .end local v4    # "arr$":[Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .end local v8    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v11    # "found":Z
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .restart local v13    # "i$":I
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v18

    add-int v17, v17, v18

    iget-object v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 915
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 916
    iget-object v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1400([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    move-result v17

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1500([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    move-result v18

    or-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 918
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 919
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "switching to using band "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .end local v13    # "i$":I
    :cond_9
    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 933
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setting report_events to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 939
    :goto_5
    if-eqz v2, :cond_a

    .line 940
    sget-object v17, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    aget-object v17, v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodInSecond:I

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    .line 944
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 948
    :cond_b
    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    move/from16 v17, v0

    goto/16 :goto_0

    .line 921
    .restart local v13    # "i$":I
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13    # "i$":I
    .local v12, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 923
    .restart local v8    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adding new channel spec "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    move/from16 v18, v0

    aget-object v7, v17, v18

    .line 926
    .local v7, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget v0, v8, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    .line 927
    iget v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v0, v7, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 936
    .end local v7    # "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .end local v8    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_d
    const-string v17, "WifiScanningService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "report_events is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public compressBuckets()V
    .locals 5

    .prologue
    .line 956
    const/4 v1, 0x0

    .line 957
    .local v1, "num_buckets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 958
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-eqz v2, :cond_1

    .line 960
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    .line 961
    add-int/lit8 v1, v1, 0x1

    .line 957
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 965
    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 966
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 969
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput v1, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    .line 970
    if-eqz v1, :cond_4

    .line 971
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 973
    :cond_4
    return-void
.end method

.method public getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object v0
.end method

.method prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    .line 860
    return-void
.end method
