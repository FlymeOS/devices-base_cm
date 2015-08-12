.class public Landroid/net/pppoe/PppoeService;
.super Landroid/net/pppoe/IPppoeManager$Stub;
.source "PppoeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/pppoe/PppoeService$PppoeHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MESSAGE_DISABLE_PPPOE:I = 0x1

.field private static final MESSAGE_ENABLE_PPPOE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PppoeService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastEnableUid:I

.field private final mPppoeHandler:Landroid/net/pppoe/PppoeService$PppoeHandler;

.field private mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/net/pppoe/IPppoeManager$Stub;-><init>()V

    .line 57
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, p0, Landroid/net/pppoe/PppoeService;->mLastEnableUid:I

    .line 75
    iput-object p1, p0, Landroid/net/pppoe/PppoeService;->mContext:Landroid/content/Context;

    .line 76
    new-instance v1, Landroid/net/pppoe/PppoeStateTracker;

    invoke-direct {v1, p1}, Landroid/net/pppoe/PppoeStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PppoeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "pppoeThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v1, Landroid/net/pppoe/PppoeService$PppoeHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/net/pppoe/PppoeService$PppoeHandler;-><init>(Landroid/net/pppoe/PppoeService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/pppoe/PppoeService;->mPppoeHandler:Landroid/net/pppoe/PppoeService$PppoeHandler;

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/net/pppoe/PppoeService;ZZI)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/pppoe/PppoeService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/net/pppoe/PppoeService;->setPppoeEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/pppoe/PppoeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "PppoeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Landroid/net/pppoe/PppoeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "PppoeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Landroid/net/pppoe/PppoeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private persistPppoeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 122
    return-void
.end method

.method private sendEnableMessage(ZZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "persist"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v4, p0, Landroid/net/pppoe/PppoeService;->mPppoeHandler:Landroid/net/pppoe/PppoeService$PppoeHandler;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v1

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setPppoeEnabledBlocking(ZZI)Z
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "persist"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-direct {p0, p1}, Landroid/net/pppoe/PppoeService;->persistPppoeEnabled(Z)V

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 140
    .local v0, "eventualWifiState":I
    :goto_0
    iget-object v3, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v1

    .line 141
    .local v1, "wifiState":I
    const-string v3, "PppoeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter setPppoeEnabledBlocking!!!wifi state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-ne v1, v0, :cond_2

    .line 143
    const-string v3, "PppoeService"

    const-string v4, "enter return true!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 178
    :goto_1
    return v4

    .end local v0    # "eventualWifiState":I
    .end local v1    # "wifiState":I
    :cond_1
    move v0, v2

    .line 139
    goto :goto_0

    .line 147
    .restart local v0    # "eventualWifiState":I
    .restart local v1    # "wifiState":I
    :cond_2
    if-ne v1, v7, :cond_3

    if-nez p1, :cond_3

    .line 148
    const-string v2, "PppoeService"

    const-string v3, "enter return false!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    :cond_3
    const-string v3, "PppoeService"

    const-string v5, "enter setPppoeState"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p1, :cond_4

    const/4 v3, 0x2

    :goto_2
    invoke-direct {p0, v3, p3}, Landroid/net/pppoe/PppoeService;->setPppoeState(II)V

    .line 154
    if-eqz p1, :cond_7

    .line 155
    iget-object v3, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->startPppoe()Z

    move-result v3

    if-nez v3, :cond_5

    .line 156
    const-string v2, "PppoeService"

    const-string v3, "Failed to enable pppoe."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, v7, p3}, Landroid/net/pppoe/PppoeService;->setPppoeState(II)V

    goto :goto_1

    :cond_4
    move v3, v4

    .line 152
    goto :goto_2

    .line 162
    :cond_5
    iget-object v3, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->startEventLoop()V

    :cond_6
    move v4, v2

    .line 178
    goto :goto_1

    .line 165
    :cond_7
    iget-object v3, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3, v4}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeStarted(Z)V

    .line 166
    iget-object v3, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v3}, Landroid/net/pppoe/PppoeStateTracker;->stopPppoe()Z

    move-result v3

    if-nez v3, :cond_6

    .line 167
    const-string v2, "PppoeService"

    const-string v3, "Failed to stop pppoe."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, v7, p3}, Landroid/net/pppoe/PppoeService;->setPppoeState(II)V

    goto :goto_1
.end method

.method private setPppoeState(II)V
    .locals 4
    .param p1, "pppoeState"    # I
    .param p2, "uid"    # I

    .prologue
    .line 183
    const-string v1, "PppoeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPppoeState in = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v0

    .line 187
    .local v0, "previousWifiState":I
    iget-object v1, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v1, p1}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    .line 190
    return-void
.end method


# virtual methods
.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/net/pppoe/PppoeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public forceDisconnect()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v2, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v0

    .line 97
    .local v0, "pppoeState":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 98
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v1, v2}, Landroid/net/pppoe/PppoeService;->sendEnableMessage(ZZI)V

    .line 99
    const/4 v1, 0x1

    .line 101
    :cond_1
    return v1
.end method

.method public getPppoeState()I
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/net/pppoe/PppoeService;->enforceAccessPermission()V

    .line 219
    iget-object v0, p0, Landroid/net/pppoe/PppoeService;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v0

    return v0
.end method

.method public setPppoeEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 104
    invoke-direct {p0}, Landroid/net/pppoe/PppoeService;->enforceChangePermission()V

    .line 105
    iget-object v3, p0, Landroid/net/pppoe/PppoeService;->mPppoeHandler:Landroid/net/pppoe/PppoeService$PppoeHandler;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 116
    :goto_0
    return v2

    .line 107
    :cond_0
    iget-object v3, p0, Landroid/net/pppoe/PppoeService;->mPppoeHandler:Landroid/net/pppoe/PppoeService$PppoeHandler;

    monitor-enter v3

    .line 110
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 111
    .local v0, "ident":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Landroid/net/pppoe/PppoeService;->mLastEnableUid:I

    .line 113
    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Landroid/net/pppoe/PppoeService;->sendEnableMessage(ZZI)V

    .line 114
    monitor-exit v3

    goto :goto_0

    .end local v0    # "ident":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
