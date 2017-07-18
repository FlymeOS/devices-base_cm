.class public Landroid/bluetooth/BluetoothAdapterExt;
.super Ljava/lang/Object;
.source "BluetoothAdapterExt.java"


# static fields
.field public static final ACTION_BT_TURN_OFF_PROMPT:Ljava/lang/String; = "android.btopp.nfcp2p.ACTION_BT_TURN_OFF_PROMPT"

.field public static final BROADCAST_PERMISSION_BT_TURN_OFF_PROMPT:Ljava/lang/String; = "com.android.permission.WHITELIST_BLUETOOTH_DEVICE"

.field public static final EXTRA_PROMPT_DISABLED:Ljava/lang/String; = "android.bluetooth.adapter.extra.PROMPT_DISABLED"

.field public static final SESSION_STATUS_COMPLETED:I = 0x1

.field public static final SESSION_STATUS_RUNNING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZI)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    .line 63
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 62
    const/4 v3, 0x1

    invoke-direct {v1, v3, p2, p3, v2}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .line 64
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 65
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 66
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 70
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    return-object v1
.end method

.method public static disable(Landroid/bluetooth/BluetoothAdapter;Z)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "persist"    # Z

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public static enableNoAutoConnect(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    return v0
.end method

.method public static getBtSessionStatus(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "mz_bt_session_status"

    const/4 v2, 0x1

    .line 49
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, v0, v0, p2}, Landroid/bluetooth/BluetoothAdapterExt;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZI)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public static setBtSessionStatus(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "mz_bt_session_status"

    .line 39
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    return-void
.end method
