.class public Landroid/service/persistentdata/PersistentDataBlockManager;
.super Ljava/lang/Object;
.source "PersistentDataBlockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private sService:Landroid/service/persistentdata/IPersistentDataBlockService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/persistentdata/PersistentDataBlockManager;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/persistentdata/IPersistentDataBlockService;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    .line 46
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Landroid/service/persistentdata/PersistentDataBlockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getDataBlockSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getting data block size"

    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    .line 90
    const/4 v1, -0x1

    return v1
.end method

.method public getMaximumDataBlockSize()J
    .locals 4

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getMaximumDataBlockSize()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getting maximum data block size"

    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    .line 104
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getOemUnlockEnabled()Z
    .locals 2

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getOemUnlockEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getting OEM unlock enabled bit"

    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    return v1
.end method

.method public read()[B
    .locals 2

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->read()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "reading data"

    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    return-object v1
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setOemUnlockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting OEM unlock enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public wipe()V
    .locals 2

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->wipe()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "wiping persistent partition"

    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->write([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "writing data"

    invoke-direct {p0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->onError(Ljava/lang/String;)V

    .line 64
    const/4 v1, -0x1

    return v1
.end method
