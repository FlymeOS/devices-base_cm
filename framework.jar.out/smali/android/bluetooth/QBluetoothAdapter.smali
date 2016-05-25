.class public final Landroid/bluetooth/QBluetoothAdapter;
.super Ljava/lang/Object;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;,
        Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "QBluetoothAdapter"

.field private static final VDBG:Z

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sAdapter:Landroid/bluetooth/QBluetoothAdapter;


# instance fields
.field private final mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mLppClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;",
            "Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mQService:Landroid/bluetooth/IQBluetooth;

.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 4
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    .line 360
    new-instance v1, Landroid/bluetooth/QBluetoothAdapter$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/QBluetoothAdapter$1;-><init>(Landroid/bluetooth/QBluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 379
    new-instance v1, Landroid/bluetooth/QBluetoothAdapter$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/QBluetoothAdapter$2;-><init>(Landroid/bluetooth/QBluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bluetooth manager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 109
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothManager;->registerQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)Landroid/bluetooth/IQBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    .line 110
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mQService= :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetooth;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IQBluetooth;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    return-object v0
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/QBluetoothAdapter;
    .locals 3

    .prologue
    .line 92
    const-class v2, Landroid/bluetooth/QBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    sget-object v1, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 94
    .local v0, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v1, Landroid/bluetooth/QBluetoothAdapter;

    invoke-direct {v1, v0}, Landroid/bluetooth/QBluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v1, Landroid/bluetooth/QBluetoothAdapter;->sAdapter:Landroid/bluetooth/QBluetoothAdapter;

    .line 95
    sget-object v1, Landroid/bluetooth/QBluetoothAdapter;->sAdapter:Landroid/bluetooth/QBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public enableRssiMonitor(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Z)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "enable"    # Z

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 193
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 194
    monitor-exit v3

    .line 195
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 198
    :goto_0
    return v2

    .line 194
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 197
    :cond_0
    invoke-virtual {v1, p2}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->enableMonitor(Z)V

    .line 198
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 231
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public readRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 215
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 216
    monitor-exit v3

    .line 217
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 220
    :goto_0
    return v2

    .line 216
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 219
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->readRssiThreshold()V

    .line 220
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "add"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 131
    if-eqz p3, :cond_2

    .line 132
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const-string v2, "QBluetoothAdapter"

    const-string v4, "Lpp Client has been already registered"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-exit v3

    .line 149
    :goto_0
    return v1

    .line 137
    :cond_0
    new-instance v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-direct {v0, p0, v4, p2, p1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;-><init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;Ljava/lang/String;Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)V

    .line 138
    .local v0, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->register2(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 142
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 151
    .end local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 144
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    .line 145
    .restart local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    if-eqz v0, :cond_3

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->register2(Z)Z

    .line 147
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 149
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public writeRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;II)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 171
    monitor-exit v3

    .line 172
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 175
    :goto_0
    return v2

    .line 171
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 174
    :cond_0
    int-to-byte v2, p2

    int-to-byte v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->writeRssiThreshold(BB)V

    .line 175
    const/4 v2, 0x1

    goto :goto_0
.end method
