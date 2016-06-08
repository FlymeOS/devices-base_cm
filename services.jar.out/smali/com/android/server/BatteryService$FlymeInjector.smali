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
        Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;,
        Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;,
        Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;
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
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    return-void
.end method

.method private static isOverLowVolt(Lcom/android/server/BatteryService;)Z
    .locals 8
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    const/4 v3, 0x0

    .line 1025
    new-instance v2, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1026
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string v0, "battery.low.volt"

    .line 1027
    .local v0, "OVER_LOW_VOLT":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1028
    .local v1, "overLowVolt":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryProperties;->batteryVoltage:I

    int-to-double v4, v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method static onBatteryLow(Lcom/android/server/BatteryService;)V
    .locals 13
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    const/16 v12, 0x14

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 958
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldCriticalBatteryLevel()I

    move-result v3

    .line 959
    .local v3, "levelCritical":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldPlugType()I

    move-result v10

    if-eqz v10, :cond_2

    move v4, v8

    .line 960
    .local v4, "plugged":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v10

    iget v10, v10, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v10, v12, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v10

    iget v10, v10, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v10, v8, :cond_3

    sget-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mSystemReady:Z

    if-eqz v10, :cond_3

    move v6, v8

    .line 962
    .local v6, "sendBatteryLowWarningDialog":Z
    :goto_1
    if-eqz v6, :cond_0

    .line 963
    const/16 v7, 0x14

    .line 964
    .local v7, "warningLevel":I
    const/4 v2, 0x1

    .line 965
    .local v2, "isBatteryLow":Z
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v10

    iget v10, v10, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v10, v3, :cond_4

    sget-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow5:Z

    if-nez v10, :cond_4

    .line 966
    move v7, v3

    .line 969
    sput-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow5:Z

    .line 970
    sput-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    .line 971
    sput-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    .line 983
    :goto_2
    if-eqz v2, :cond_0

    .line 984
    sput-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mSendBatteryLowWarningDialog:Z

    .line 985
    move v5, v7

    .line 986
    .local v5, "runlevel":I
    new-instance v0, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;

    invoke-direct {v0, p0, v5}, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;-><init>(Lcom/android/server/BatteryService;I)V

    .line 987
    .local v0, "batteryLowWarningRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    .end local v0    # "batteryLowWarningRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryLowWarningRunnable;
    .end local v2    # "isBatteryLow":Z
    .end local v5    # "runlevel":I
    .end local v7    # "warningLevel":I
    :cond_0
    sget-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mSendBatteryLowWarningDialog:Z

    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    .line 991
    sput-boolean v9, Lcom/android/server/BatteryService$FlymeInjector;->mSendBatteryLowWarningDialog:Z

    .line 992
    new-instance v1, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;-><init>(Lcom/android/server/BatteryService;)V

    .line 993
    .local v1, "batteryOkayRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 994
    sput-boolean v9, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    .line 995
    sput-boolean v9, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    .line 996
    sput-boolean v9, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow5:Z

    .line 998
    .end local v1    # "batteryOkayRunnable":Lcom/android/server/BatteryService$FlymeInjector$FlymeBatteryOkayRunnable;
    :cond_1
    return-void

    .end local v4    # "plugged":Z
    .end local v6    # "sendBatteryLowWarningDialog":Z
    :cond_2
    move v4, v9

    .line 959
    goto :goto_0

    .restart local v4    # "plugged":Z
    :cond_3
    move v6, v9

    .line 960
    goto :goto_1

    .line 972
    .restart local v2    # "isBatteryLow":Z
    .restart local v6    # "sendBatteryLowWarningDialog":Z
    .restart local v7    # "warningLevel":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v10

    iget v10, v10, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v11, 0xa

    if-ge v10, v11, :cond_5

    sget-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    if-nez v10, :cond_5

    .line 973
    const/16 v7, 0xa

    .line 974
    sput-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow10:Z

    .line 975
    sput-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    goto :goto_2

    .line 976
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v10

    iget v10, v10, Landroid/os/BatteryProperties;->batteryLevel:I

    if-ge v10, v12, :cond_6

    sget-boolean v10, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    if-nez v10, :cond_6

    .line 977
    const/16 v7, 0x14

    .line 978
    sput-boolean v8, Lcom/android/server/BatteryService$FlymeInjector;->mBatteryLow20:Z

    goto :goto_2

    .line 980
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method static onBootPhase()V
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/BatteryService$FlymeInjector;->mSystemReady:Z

    .line 936
    return-void
.end method

.method static registerBootCompleted(Lcom/android/server/BatteryService;)V
    .locals 3
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 929
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 930
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$FlymeInjector$FlymeBootCompletedReceiver;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 932
    return-void
.end method

.method static shutdownIfNoPowerLocked(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 939
    sget-boolean v0, Lcom/android/server/BatteryService$FlymeInjector;->mEnableScreen:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/BatteryService$FlymeInjector;->isOverLowVolt(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    const/4 v0, 0x0

    .line 942
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static shutdownIfOverTempLocked()Z
    .locals 1

    .prologue
    .line 950
    sget-boolean v0, Lcom/android/server/BatteryService$FlymeInjector;->mEnableScreen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeMessageToFile(Ljava/lang/String;)V
    .locals 10
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1002
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v5, "root":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "close_message.txt"

    invoke-direct {v3, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1004
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 1006
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1011
    :cond_0
    :goto_0
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1012
    .local v7, "stream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy\u5e74MM\u6708dd\u65e5   HH:mm:ss     "

    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1014
    .local v1, "curDate":Ljava/util/Date;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1015
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1016
    .local v0, "buf":[B
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1017
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1021
    .end local v0    # "buf":[B
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "root":Ljava/io/File;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1018
    :catch_0
    move-exception v2

    .line 1019
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1007
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "root":Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method static writeMessageToFileIfNoPowerLocked(Lcom/android/server/BatteryService;)V
    .locals 2
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBatteryLevel == 0 mBatteryVoltage == "

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

    .line 947
    return-void
.end method

.method static writeMessageToFileIfOverTempLocked(Lcom/android/server/BatteryService;)V
    .locals 2
    .param p0, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBatteryTemperature== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->flymeGetFieldBatteryProps()Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBatteryVoltage == "

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

    .line 955
    return-void
.end method
