.class public Lcom/android/server/connectivity/TetherMonitor;
.super Landroid/os/Handler;
.source "TetherMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_TETHER:Ljava/lang/String; = "com.meizu.action.DISABLE_TETHER"

.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final BT_TETHERED:I = 0x2

.field private static final CMD_CHECK_TETHER_STATE:I = 0x3

.field private static final CMD_TETHER_CONFIG_CHANGED:I = 0x1

.field private static final CMD_TETHER_ENABLED:I = 0x0

.field private static final CMD_UPDATE_TETHER_TIMER:I = 0x2

.field private static final DEFAULT_TETHER_TIMEOUT:J = 0x493e0L

.field private static final INVALID:I = -0x1

.field public static final MZ_ENABLE_TETHER_TOTAL:Ljava/lang/String; = "mz_enable_tether_total"

.field private static final TAG:Ljava/lang/String; = "TetherMonitor"

.field public static final TETHER_CONFIG_STR:Ljava/lang/String; = "wifi_bt_usb_tether_config"

.field private static final USB_TETHERED:I = 0x4

.field private static final USB_TETHERING:I = 0x1

.field private static final WIFI_TETHERING:I = 0x0

.field private static final WLAN_TETHERED:I = 0x1

.field private static mBluetoothEnableForTether:Z


# instance fields
.field private getBluetoothPanProxyDone:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTetherSet:Z

.field private mBluetoothTethering:Z

.field private mContext:Landroid/content/Context;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mQuiet:Z

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherConfig:I

.field private mTetherConfigObserver:Landroid/database/ContentObserver;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTetherSet:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiTetherSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "quiet"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mQuiet:Z

    .line 535
    new-instance v0, Lcom/android/server/connectivity/TetherMonitor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/TetherMonitor$1;-><init>(Lcom/android/server/connectivity/TetherMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfigObserver:Landroid/database/ContentObserver;

    .line 542
    new-instance v0, Lcom/android/server/connectivity/TetherMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/TetherMonitor$2;-><init>(Lcom/android/server/connectivity/TetherMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 100
    iput-boolean p3, p0, Lcom/android/server/connectivity/TetherMonitor;->mQuiet:Z

    .line 101
    iput-object p1, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->onCreate()V

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/TetherMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/TetherMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTethering:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/TetherMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTethering:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/TetherMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/TetherMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/TetherMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/TetherMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/TetherMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/TetherMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherMonitor;->startTether(I)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothEnableForTether:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/TetherMonitor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/TetherMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherMonitor;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/TetherMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/TetherMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/connectivity/TetherMonitor;->getBluetoothPanProxyDone:Z

    return p1
.end method

.method private cancelTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 633
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 634
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.meizu.action.DISABLE_TETHER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "enable"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 637
    .local v2, "pending":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 638
    const-string v3, "TetherMonitor"

    const-string v4, "Cancel alarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 641
    :cond_0
    return-void
.end method

.method private enableTether(Z)V
    .locals 23
    .param p1, "enable"    # Z

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    .line 175
    .local v9, "config":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    const/16 v18, 0x1

    .line 176
    .local v18, "usbAvailable":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 179
    .local v8, "cm":Landroid/net/ConnectivityManager;
    if-eqz p1, :cond_2

    .line 180
    const-string v20, "TetherMonitor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "enable tether with config: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-gtz v9, :cond_1

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/TetherMonitor;->putTetherEnableState(Landroid/content/Context;I)V

    .line 227
    :goto_1
    return-void

    .line 175
    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    .end local v18    # "usbAvailable":Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 185
    .restart local v8    # "cm":Landroid/net/ConnectivityManager;
    .restart local v18    # "usbAvailable":Z
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/connectivity/TetherMonitor;->startTether(I)V

    goto :goto_1

    .line 188
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/TetherMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 189
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->setSoftapEnabled(Z)V

    .line 191
    :cond_3
    const-string v20, "TetherMonitor"

    const-string v21, "Disabled WLAN tether"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 195
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    .line 196
    .local v7, "btState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothPan;

    .line 197
    .local v6, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v20, 0xc

    move/from16 v0, v20

    if-ne v7, v0, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 199
    const/4 v10, 0x0

    .line 201
    .local v10, "errored":Z
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v17

    .line 202
    .local v17, "tethered":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "bluetoothIface":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v8, v5}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_4

    .line 205
    const-string v20, "TetherMonitor"

    const-string v21, "Error happened to untether BT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4
    if-eqz v6, :cond_5

    .line 208
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 209
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/TetherMonitor;->resetBTState()V

    .line 211
    .end local v5    # "bluetoothIface":Ljava/lang/String;
    .end local v10    # "errored":Z
    .end local v17    # "tethered":[Ljava/lang/String;
    :cond_6
    const-string v20, "TetherMonitor"

    const-string v21, "Disabled BT tether"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v17

    .line 215
    .restart local v17    # "tethered":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 216
    .local v19, "usbTethered":Z
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_9

    aget-object v16, v3, v12

    .line 217
    .local v16, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/TetherMonitor;->mUsbRegexs:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_3
    if-ge v11, v14, :cond_8

    aget-object v15, v4, v11

    .line 218
    .local v15, "regex":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 219
    const/16 v19, 0x1

    .line 217
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 216
    .end local v15    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_2

    .line 222
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v16    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v19, :cond_a

    .line 223
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->setUsbTethering(Z)V

    .line 225
    :cond_a
    const-string v20, "TetherMonitor"

    const-string v21, "Disabled usb tether"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 677
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 678
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 683
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 677
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 676
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 683
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static getIntFromSecureProvider(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getTetherConfig(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 695
    const-string v0, "wifi_bt_usb_tether_config"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->getIntFromSecureProvider(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTetherConfig(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "def"    # I

    .prologue
    .line 699
    const-string v0, "wifi_bt_usb_tether_config"

    invoke-static {p0, v0, p1}, Lcom/android/server/connectivity/TetherMonitor;->getIntFromSecureProvider(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTetherEnableState(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 687
    const-string v0, "mz_enable_tether_total"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->getIntFromSecureProvider(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x3

    .line 409
    packed-switch p1, :pswitch_data_0

    .line 439
    const-string v0, "TetherMonitor"

    const-string v1, "Unknow wifi AP state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 411
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/TetherMonitor;->removeMessages(I)V

    goto :goto_0

    .line 416
    :pswitch_2
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 417
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    .line 418
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->putTetherConfig(Landroid/content/Context;I)V

    goto :goto_0

    .line 424
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/TetherMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/connectivity/TetherMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isPollTetherActivityNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiTetherSet:Z

    if-eqz v2, :cond_0

    .line 591
    const-string v2, "TetherMonitor"

    const-string v3, "wifi tether has device connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :goto_0
    return v1

    .line 595
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 596
    .local v0, "pan":Landroid/bluetooth/BluetoothPan;
    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTetherSet:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 598
    const-string v2, "TetherMonitor"

    const-string v3, "BT tether device connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbTetherSet:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z

    if-nez v2, :cond_2

    .line 603
    const-string v2, "TetherMonitor"

    const-string v3, "usb tether connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 106
    iput-boolean v6, p0, Lcom/android/server/connectivity/TetherMonitor;->getBluetoothPanProxyDone:Z

    .line 107
    iput-boolean v6, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTethering:Z

    .line 108
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 110
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x5

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/server/connectivity/TetherMonitor;->getTetherConfig(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    .line 116
    iget v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    if-eq v3, v7, :cond_1

    iget v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    if-nez v3, :cond_2

    .line 118
    :cond_1
    iput v8, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    .line 119
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    invoke-static {v3, v4}, Lcom/android/server/connectivity/TetherMonitor;->putTetherConfig(Landroid/content/Context;I)V

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 124
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbRegexs:[Ljava/lang/String;

    .line 125
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiRegexs:[Ljava/lang/String;

    .line 126
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothRegexs:[Ljava/lang/String;

    .line 128
    new-instance v3, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/connectivity/TetherMonitor$TetherChangeReceiver;-><init>(Lcom/android/server/connectivity/TetherMonitor;Lcom/android/server/connectivity/TetherMonitor$1;)V

    iput-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v3, "com.meizu.action.wifi_ap_device_state_change"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v3, "com.meizu.action.DISABLE_TETHER"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_bt_usb_tether_config"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z

    .line 151
    iget-boolean v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mQuiet:Z

    if-nez v3, :cond_3

    .line 152
    invoke-direct {p0, v8}, Lcom/android/server/connectivity/TetherMonitor;->enableTether(Z)V

    .line 154
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/TetherMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/TetherMonitor;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method public static putIntToSecureProvider(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 714
    return-void
.end method

.method public static putTetherConfig(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 703
    const-string v0, "wifi_bt_usb_tether_config"

    invoke-static {p0, v0, p1}, Lcom/android/server/connectivity/TetherMonitor;->putIntToSecureProvider(Landroid/content/Context;Ljava/lang/String;I)V

    .line 704
    return-void
.end method

.method public static putTetherEnableState(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 691
    const-string v0, "mz_enable_tether_total"

    invoke-static {p0, v0, p1}, Lcom/android/server/connectivity/TetherMonitor;->putIntToSecureProvider(Landroid/content/Context;Ljava/lang/String;I)V

    .line 692
    return-void
.end method

.method private resetBTState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 392
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 393
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 394
    iget-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_enable_bluetooth"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 396
    .local v1, "preBtState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 397
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    if-nez v2, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_enable_bluetooth"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    .end local v1    # "preBtState":I
    :cond_1
    return-void
.end method

.method private resetTetherTimer()V
    .locals 2

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiTetherSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTetherSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbTetherSet:Z

    if-eqz v0, :cond_1

    .line 611
    :cond_0
    const-string v0, "TetherMonitor"

    const-string v1, "reset timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->startTimer()V

    .line 614
    :cond_1
    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 230
    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 232
    .local v3, "wifiState":I
    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 234
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 235
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    :cond_1
    const-string v4, "TetherMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set wifi ap enabled by tehter services "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 239
    if-nez p1, :cond_2

    .line 240
    const/4 v2, 0x0

    .line 242
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 247
    :goto_0
    if-ne v2, v8, :cond_2

    .line 248
    iget-object v4, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 249
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    .end local v2    # "wifiSavedState":I
    :cond_2
    return-void

    .line 243
    .restart local v2    # "wifiSavedState":I
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 256
    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 257
    .local v1, "usbAvailable":Z
    :goto_0
    if-nez v1, :cond_2

    .line 258
    if-eqz p1, :cond_0

    .line 274
    :cond_0
    :goto_1
    return-void

    .line 256
    .end local v1    # "usbAvailable":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 266
    .restart local v1    # "usbAvailable":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 388
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    return-void
.end method

.method private startTether(I)V
    .locals 7
    .param p1, "con"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    const-string v3, "TetherMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTether the config is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbConnected:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mMassStorageActive:Z

    if-nez v3, :cond_1

    move v0, v1

    .line 323
    .local v0, "usbAvailable":Z
    :goto_0
    const-string v3, "TetherMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbAvailable is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    if-nez v0, :cond_2

    .line 377
    :cond_0
    :goto_1
    return-void

    .end local v0    # "usbAvailable":Z
    :cond_1
    move v0, v2

    .line 320
    goto :goto_0

    .line 328
    .restart local v0    # "usbAvailable":Z
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 373
    const-string v1, "TetherMonitor"

    const-string v2, "startTether config is wrong, we should never go to here"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 330
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    goto :goto_1

    .line 333
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    goto :goto_1

    .line 337
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    goto :goto_1

    .line 340
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    .line 341
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    goto :goto_1

    .line 345
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    goto :goto_1

    .line 354
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    goto :goto_1

    .line 364
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    .line 365
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/TetherMonitor;->startTethering(I)V

    goto :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private startTethering(I)V
    .locals 6
    .param p1, "choice"    # I

    .prologue
    const/4 v5, 0x1

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 279
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/TetherMonitor;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 284
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 285
    const-string v2, "TetherMonitor"

    const-string v3, "enable bt tether -->enalbe bt "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sput-boolean v5, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothEnableForTether:Z

    .line 287
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 288
    iget-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_enable_bluetooth"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 292
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const-string v2, "TetherMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetoothPan is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_0

    .line 302
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->getBluetoothPanProxyDone:Z

    if-nez v2, :cond_0

    .line 303
    iput-boolean v5, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTethering:Z

    goto :goto_0

    .line 310
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/TetherMonitor;->setUsbTethering(Z)V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startTimer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 617
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 618
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.meizu.action.DISABLE_TETHER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "enable"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 621
    .local v2, "pending":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 622
    const-string v3, "TetherMonitor"

    const-string v4, "Cancel previous alarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 625
    :cond_0
    const-string v3, "TetherMonitor"

    const-string v4, "set up timer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v3, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    invoke-virtual {v0, v8, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 630
    return-void
.end method

.method private updateTetherConfig()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 565
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/TetherMonitor;->getTetherConfig(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    .line 566
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    if-ne v0, v3, :cond_1

    .line 567
    const-string v0, "TetherMonitor"

    const-string v1, "No tether config set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiTetherSet:Z

    .line 572
    iput-boolean v1, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTetherSet:Z

    .line 573
    iput-boolean v1, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbTetherSet:Z

    .line 574
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    .line 575
    const-string v0, "TetherMonitor"

    const-string v1, "WLAN tether set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mWifiTetherSet:Z

    .line 578
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 579
    const-string v0, "TetherMonitor"

    const-string v1, "BT tether set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iput-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mBluetoothTetherSet:Z

    .line 582
    :cond_3
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 583
    const-string v0, "TetherMonitor"

    const-string v1, "usb tether set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iput-boolean v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mUsbTetherSet:Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 645
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 648
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->updateTetherConfig()V

    .line 649
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->resetTetherTimer()V

    goto :goto_0

    .line 652
    :pswitch_1
    const-string v0, "TetherMonitor"

    const-string v1, "Update tether timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->isPollTetherActivityNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    const-string v0, "TetherMonitor"

    const-string v1, "Need to poll tether activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->startTimer()V

    goto :goto_0

    .line 657
    :cond_1
    const-string v0, "TetherMonitor"

    const-string v1, "Has device tethered, remove timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->cancelTimer()V

    goto :goto_0

    .line 665
    :pswitch_2
    iget v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfig:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->putTetherEnableState(Landroid/content/Context;I)V

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isQuiet()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mQuiet:Z

    return v0
.end method

.method public notifyInProgress()V
    .locals 2

    .prologue
    .line 380
    const-string v0, "TetherMonitor"

    const-string v1, "Already has one tether monitor running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/TetherMonitor;->enableTether(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    iput-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    iput-object v2, p0, Lcom/android/server/connectivity/TetherMonitor;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherMonitor;->cancelTimer()V

    .line 169
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/TetherMonitor;->removeMessages(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherMonitor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 171
    return-void
.end method
