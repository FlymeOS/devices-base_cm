.class final Lcom/android/server/BatteryService$FlymeInjector;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;,
        Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;,
        Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;
    }
.end annotation


# static fields
.field static mBatteryLow10:Z

.field static mBatteryLow20:Z

.field static mBatteryLow5:Z

.field static mEnableScreen:Z

.field static mSendBatteryLowWarningDialog:Z

.field static mSystemReady:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOverLowVolt(Lcom/android/server/BatteryService;)Z
    .locals 8
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    const/4 v3, 0x0

    .line 1047
    new-instance v2, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1048
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string/jumbo v0, "battery.low.volt"

    .line 1049
    .local v0, "OVER_LOW_VOLT":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1050
    .local v1, "overLowVolt":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 1051
    return v3

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryProperties;->batteryVoltage:I

    int-to-double v4, v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method static onBatteryLow(Lcom/android/server/BatteryService;)V
    .locals 13
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 980
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldCriticalBatteryLevel()I

    move-result v3

    .line 981
    .local v3, "levelCritical":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldPlugType()I

    move-result v8

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    .line 982
    .local v4, "plugged":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v8

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v8, v12, :cond_0

    if-eqz v4, :cond_7

    :cond_0
    const/4 v6, 0x0

    .line 984
    :goto_1
    if-eqz v6, :cond_4

    .line 985
    const/16 v7, 0x14

    .line 986
    .local v7, "warningLevel":I
    const/4 v2, 0x1

    .line 987
    .local v2, "isBatteryLow":Z
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v8

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v8, v3, :cond_1

    sget-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow5:Z

    if-eqz v8, :cond_8

    .line 994
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v8

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_2

    sget-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    if-eqz v8, :cond_9

    .line 998
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v8

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    if-ge v8, v12, :cond_3

    sget-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    if-eqz v8, :cond_a

    .line 1002
    :cond_3
    const/4 v2, 0x0

    .line 1005
    :goto_2
    if-eqz v2, :cond_4

    .line 1006
    sput-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mSendBatteryLowWarningDialog:Z

    .line 1007
    move v5, v7

    .line 1008
    .local v5, "runlevel":I
    new-instance v0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;

    invoke-direct {v0, p0, v5}, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;-><init>(Lcom/android/server/BatteryService;I)V

    .line 1009
    .local v0, "batteryLowWarningRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    .end local v0    # "batteryLowWarningRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;
    .end local v2    # "isBatteryLow":Z
    .end local v5    # "runlevel":I
    .end local v7    # "warningLevel":I
    :cond_4
    sget-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mSendBatteryLowWarningDialog:Z

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    .line 1013
    sput-boolean v11, Lcom/android/server/BatteryService$FlymeInjector;->mSendBatteryLowWarningDialog:Z

    .line 1014
    new-instance v1, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;-><init>(Lcom/android/server/BatteryService;)V

    .line 1015
    .local v1, "batteryOkayRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1016
    sput-boolean v11, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    .line 1017
    sput-boolean v11, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    .line 1018
    sput-boolean v11, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow5:Z

    .line 979
    .end local v1    # "batteryOkayRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;
    :cond_5
    return-void

    .line 981
    .end local v4    # "plugged":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "plugged":Z
    goto :goto_0

    .line 983
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v8

    iget v8, v8, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v8, v10, :cond_0

    sget-boolean v6, Lcom/android/server/BatteryService$FlymeInjector;->mSystemReady:Z

    .local v6, "sendBatteryLowWarningDialog":Z
    goto :goto_1

    .line 988
    .end local v6    # "sendBatteryLowWarningDialog":Z
    .restart local v2    # "isBatteryLow":Z
    .restart local v7    # "warningLevel":I
    :cond_8
    move v7, v3

    .line 991
    sput-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow5:Z

    .line 992
    sput-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    .line 993
    sput-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    goto :goto_2

    .line 995
    :cond_9
    const/16 v7, 0xa

    .line 996
    sput-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    .line 997
    sput-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    goto :goto_2

    .line 999
    :cond_a
    const/16 v7, 0x14

    .line 1000
    sput-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    goto :goto_2
.end method

.method static onBootPhase()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/BatteryService$FlymeInjector;->mSystemReady:Z

    .line 956
    return-void
.end method

.method static registerBootCompleted(Lcom/android/server/BatteryService;)V
    .locals 3
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 951
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 952
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 950
    return-void
.end method

.method static shutdownIfNoPowerLocked(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 961
    sget-boolean v0, Lcom/android/server/BatteryService$FlymeInjector;->mEnableScreen:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/BatteryService$FlymeInjector;->isOverLowVolt(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const/4 v0, 0x0

    return v0

    .line 964
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static shutdownIfOverTempLocked()Z
    .locals 1

    .prologue
    .line 972
    sget-boolean v0, Lcom/android/server/BatteryService$FlymeInjector;->mEnableScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static writeMessageToFile(Ljava/lang/String;)V
    .locals 12
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1024
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/data/system/"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v6, "root":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "close_message.txt"

    invoke-direct {v4, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1026
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_0

    .line 1028
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    :cond_0
    :goto_0
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1034
    .local v8, "stream":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy\u5e74MM\u6708dd\u65e5   HH:mm:ss     "

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v5, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 1036
    .local v1, "curDate":Ljava/util/Date;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1038
    .local v0, "buf":[B
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1039
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1022
    .end local v0    # "buf":[B
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "root":Ljava/io/File;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1029
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "root":Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1040
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "root":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 1041
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static writeMessageToFileIfNoPowerLocked(Lcom/android/server/BatteryService;)V
    .locals 2
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBatteryLevel == 0 mBatteryVoltage == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BatteryService$FlymeInjector;->writeMessageToFile(Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method static writeMessageToFileIfOverTempLocked(Lcom/android/server/BatteryService;)V
    .locals 2
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBatteryTemperature== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mBatteryVoltage == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BatteryService$FlymeInjector;->writeMessageToFile(Ljava/lang/String;)V

    .line 975
    return-void
.end method
