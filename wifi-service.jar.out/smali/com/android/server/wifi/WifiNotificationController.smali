.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$3;,
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static final ACTION_TURN_WIFI_OFF:Ljava/lang/String; = "com.android.server.WifiService.ACTION_TURN_WIFI_OFF"

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x108065f

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mContext:Landroid/content/Context;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 110
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x384

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 148
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    .line 149
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    .line 150
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return p1
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 8
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v6, 0x3

    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    if-ne v4, v6, :cond_0

    .line 161
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 162
    .local v3, "state":Landroid/net/NetworkInfo$State;
    if-eqz p1, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 165
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_6

    .line 167
    :cond_3
    if-eqz p2, :cond_6

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "numOpenNetworks":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 170
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 174
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[ESS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 169
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 180
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    if-lez v1, :cond_6

    .line 181
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    if-lt v4, v6, :cond_0

    .line 189
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    .end local v1    # "numOpenNetworks":I
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 197
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    .prologue
    .line 205
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    .line 207
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    .prologue
    .line 229
    if-nez p1, :cond_1

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v6, :cond_1

    if-nez p3, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 236
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1140015

    invoke-virtual {v6, v7, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 245
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1140016

    invoke-virtual {v6, v7, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 248
    .local v1, "details":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    if-nez v6, :cond_2

    .line 249
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 252
    .local v0, "color":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const v7, 0x10400da

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 254
    .local v5, "wifiOffText":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.server.WifiService.ACTION_TURN_WIFI_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x8000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 258
    .local v4, "wifiOffPi":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x108065f

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    .line 273
    .end local v0    # "color":I
    .end local v4    # "wifiOffPi":Landroid/app/PendingIntent;
    .end local v5    # "wifiOffText":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 275
    const/4 v6, 0x0

    const v7, 0x108065f

    iget-object v8, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 278
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v6, :cond_3

    .line 279
    new-instance v6, Lcom/android/server/wifi/WifiNotificationController$2;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiNotificationController$2;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.server.WifiService.ACTION_TURN_WIFI_OFF"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    goto/16 :goto_0

    .line 295
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_5

    .line 296
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    :cond_5
    const/4 v6, 0x0

    const v7, 0x108065f

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationRepeatTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScansSinceNetworkStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    return-void
.end method
