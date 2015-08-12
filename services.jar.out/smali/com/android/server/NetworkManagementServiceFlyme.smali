.class public Lcom/android/server/NetworkManagementServiceFlyme;
.super Landroid/os/INetworkManagementServiceFlyme$Stub;
.source "NetworkManagementServiceFlyme.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManagementServiceFlyme"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/INetworkManagementServiceFlyme$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "flymed"

    const/16 v3, 0x1f4

    const-string v4, "flymed_connector"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    .line 43
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "flymed_connector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 44
    .local v7, "thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementServiceFlyme;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Lcom/android/server/NetworkManagementServiceFlyme;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementServiceFlyme;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "service":Lcom/android/server/NetworkManagementServiceFlyme;
    return-object v0
.end method


# virtual methods
.method public clearFirewallChain(Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clear_fw_chain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "dest"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "prifex"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "route"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public deleteVpnProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v3, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v2

    .line 180
    .local v2, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v2, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1

    .line 184
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/server/MzVpnKeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 186
    .local v1, "ret":Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "meizu.intent.action.VPN_PROFILE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "delete"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v3, "key"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v3, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getAllVpnKeys()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v1

    .line 140
    .local v1, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    const/4 v0, 0x0

    .line 141
    .local v0, "result":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/android/server/MzVpnKeyStore;->getAllKeys()[Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    const-string v2, "NetworkManagementServiceFlyme"

    const-string v3, "getAllVpnKeys"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v0
.end method

.method public getVpnProfile(Ljava/lang/String;Z)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "passwordIncluded"    # Z

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 167
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 170
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/MzVpnKeyStore;->get(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getVpnProfileDefaultKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 232
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 236
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/MzVpnKeyStore;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVpnProfileVersion(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 200
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/MzVpnKeyStore;->getVersion(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "NetworkManagementServiceFlyme"

    const-string v1, "flymed connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "onEvent::"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " raw= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    if-eqz p3, :cond_0

    .line 277
    const-string v5, " cooked = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 279
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    const-string v5, "NetworkManagementServiceFlyme"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v5, 0x1

    return v5
.end method

.method public putVpnProfile(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 154
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v1, "NetworkManagementServiceFlyme"

    const-string v2, "putVpnProfile"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/android/server/MzVpnKeyStore;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setFirewallUidChainRule(IIZ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "networkType"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v5, 0x1

    .line 60
    const-string v0, "mobile"

    .line 61
    .local v0, "MOBILE":Ljava/lang/String;
    const-string v1, "wifi"

    .line 63
    .local v1, "WIFI":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v4, "allow"

    .line 64
    .local v4, "rule":Ljava/lang/String;
    :goto_0
    if-ne p2, v5, :cond_1

    const-string v2, "wifi"

    .line 67
    .local v2, "chain":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "firewall"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "set_uid_fw_rule"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 63
    .end local v2    # "chain":Ljava/lang/String;
    .end local v4    # "rule":Ljava/lang/String;
    :cond_0
    const-string v4, "deny"

    goto :goto_0

    .line 64
    .restart local v4    # "rule":Ljava/lang/String;
    :cond_1
    const-string v2, "mobile"

    goto :goto_1

    .line 68
    .restart local v2    # "chain":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
.end method

.method public setMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "dest"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "prifex"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "route"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setVpnProfileDefaultKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v0

    .line 245
    .local v0, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/MzVpnKeyStore;->setDefaultKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVpnProfileVersion(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 211
    iget-object v3, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/MzVpnKeyStore;->getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;

    move-result-object v2

    .line 212
    .local v2, "vpnKeyStore":Lcom/android/server/MzVpnKeyStore;
    if-nez v2, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 222
    :goto_0
    return v1

    .line 216
    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/android/server/MzVpnKeyStore;->setVersion(Ljava/lang/String;I)Z

    move-result v1

    .line 218
    .local v1, "ret":Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "meizu.intent.action.VPN_PROFILE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "set_version"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v3, "key"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v3, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
