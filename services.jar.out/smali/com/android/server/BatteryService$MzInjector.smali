.class Lcom/android/server/BatteryService$MzInjector;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MzInjector"
.end annotation


# static fields
.field private static mBatteryLow10:Z

.field private static mBatteryLow20:Z

.field private static mBatteryLow5:Z

.field static mEnableScreen:Z

.field private static mSendBatteryLowWarningDialog:Z

.field private static mSystemReady:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onBatteryLow(Lcom/android/server/BatteryService;)V
    .locals 12
    .param p0, "service"    # Lcom/android/server/BatteryService;

    .prologue
    const/16 v11, 0x14

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 896
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldCriticalBatteryLevel()I

    move-result v2

    .line 897
    .local v2, "levelCritical":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldPlugType()I

    move-result v9

    if-eqz v9, :cond_2

    move v3, v7

    .line 899
    .local v3, "plugged":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v0

    .line 901
    .local v0, "batteryProps":Landroid/os/BatteryProperties;
    iget v9, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v9, v11, :cond_3

    if-nez v3, :cond_3

    iget v9, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v9, v7, :cond_3

    sget-boolean v9, Lcom/android/server/BatteryService$MzInjector;->mSystemReady:Z

    if-eqz v9, :cond_3

    move v5, v7

    .line 906
    .local v5, "sendBatteryLowWarningDialog":Z
    :goto_1
    if-eqz v5, :cond_0

    .line 907
    const/16 v6, 0x14

    .line 908
    .local v6, "warningLevel":I
    const/4 v1, 0x1

    .line 909
    .local v1, "isBatteryLow":Z
    iget v9, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v9, v2, :cond_4

    sget-boolean v9, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow5:Z

    if-nez v9, :cond_4

    .line 910
    move v6, v2

    .line 913
    sput-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow5:Z

    .line 914
    sput-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow10:Z

    .line 915
    sput-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow20:Z

    .line 927
    :goto_2
    if-eqz v1, :cond_0

    .line 928
    sput-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mSendBatteryLowWarningDialog:Z

    .line 929
    move v4, v6

    .line 930
    .local v4, "runlevel":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v9, Lcom/android/server/BatteryService$MzInjector$2;

    invoke-direct {v9, v4, p0}, Lcom/android/server/BatteryService$MzInjector$2;-><init>(ILcom/android/server/BatteryService;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 941
    .end local v1    # "isBatteryLow":Z
    .end local v4    # "runlevel":I
    .end local v6    # "warningLevel":I
    :cond_0
    sget-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mSendBatteryLowWarningDialog:Z

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    .line 942
    sput-boolean v8, Lcom/android/server/BatteryService$MzInjector;->mSendBatteryLowWarningDialog:Z

    .line 943
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v9, Lcom/android/server/BatteryService$MzInjector$3;

    invoke-direct {v9, p0}, Lcom/android/server/BatteryService$MzInjector$3;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    sput-boolean v8, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow20:Z

    .line 952
    sput-boolean v8, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow10:Z

    .line 953
    sput-boolean v8, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow5:Z

    .line 955
    :cond_1
    return-void

    .end local v0    # "batteryProps":Landroid/os/BatteryProperties;
    .end local v3    # "plugged":Z
    .end local v5    # "sendBatteryLowWarningDialog":Z
    :cond_2
    move v3, v8

    .line 897
    goto :goto_0

    .restart local v0    # "batteryProps":Landroid/os/BatteryProperties;
    .restart local v3    # "plugged":Z
    :cond_3
    move v5, v8

    .line 901
    goto :goto_1

    .line 916
    .restart local v1    # "isBatteryLow":Z
    .restart local v5    # "sendBatteryLowWarningDialog":Z
    .restart local v6    # "warningLevel":I
    :cond_4
    iget v9, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_5

    sget-boolean v9, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow10:Z

    if-nez v9, :cond_5

    .line 917
    const/16 v6, 0xa

    .line 918
    sput-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow10:Z

    .line 919
    sput-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow20:Z

    goto :goto_2

    .line 920
    :cond_5
    iget v9, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-ge v9, v11, :cond_6

    sget-boolean v9, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow20:Z

    if-nez v9, :cond_6

    .line 921
    const/16 v6, 0x14

    .line 922
    sput-boolean v7, Lcom/android/server/BatteryService$MzInjector;->mBatteryLow20:Z

    goto :goto_2

    .line 924
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method static registerBootCompleted(Lcom/android/server/BatteryService;)V
    .locals 3
    .param p0, "service"    # Lcom/android/server/BatteryService;

    .prologue
    .line 880
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 881
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/BatteryService$MzInjector$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$MzInjector$1;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 889
    return-void
.end method

.method static setSystemReady()V
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/BatteryService$MzInjector;->mSystemReady:Z

    .line 893
    return-void
.end method

.method private static writeMessageToFile(Ljava/lang/String;)V
    .locals 10
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 976
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    .local v4, "root":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "close_message.txt"

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 978
    .local v3, "mFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_0

    .line 980
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 984
    :cond_0
    :goto_0
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 985
    .local v6, "stream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy\u5e74MM\u6708dd\u65e5   HH:mm:ss     "

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 987
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 988
    .local v1, "curDate":Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 989
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 990
    .local v0, "buf":[B
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 991
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 994
    .end local v0    # "buf":[B
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v3    # "mFile":Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 981
    .restart local v3    # "mFile":Ljava/io/File;
    .restart local v4    # "root":Ljava/io/File;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 992
    .end local v3    # "mFile":Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method static writeMessageToFileIfNoPowerLocked(Lcom/android/server/BatteryService;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/BatteryService;

    .prologue
    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "mBatteryLevel == 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    const-string v1, " mBatteryVoltage == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BatteryService$MzInjector;->writeMessageToFile(Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method static writeMessageToFileIfOverTempLocked(Lcom/android/server/BatteryService;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/BatteryService;

    .prologue
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "mBatteryTemperature== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    const-string v1, " mBatteryVoltage == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->mzGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BatteryService$MzInjector;->writeMessageToFile(Ljava/lang/String;)V

    .line 972
    return-void
.end method
