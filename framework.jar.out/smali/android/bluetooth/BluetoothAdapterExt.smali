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
    .locals 7
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
    .line 74
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x1

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;I)V

    .line 76
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 77
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v6

    .line 78
    .local v6, "errno":I
    if-eqz v6, :cond_0

    .line 82
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    return-object v0
.end method

.method public static disable(Landroid/bluetooth/BluetoothAdapter;Z)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "persist"    # Z

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public static getBtSessionStatus(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_bt_session_status"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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

    .line 68
    invoke-static {p0, p1, v0, v0, p2}, Landroid/bluetooth/BluetoothAdapterExt;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZI)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public static setBtSessionStatus(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_bt_session_status"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
