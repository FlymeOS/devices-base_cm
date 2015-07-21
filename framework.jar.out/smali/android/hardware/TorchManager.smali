.class public Landroid/hardware/TorchManager;
.super Ljava/lang/Object;
.source "TorchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/TorchManager$TorchCallback;,
        Landroid/hardware/TorchManager$TorchHandler;
    }
.end annotation


# static fields
.field private static final DISPATCH_TORCH_AVAILABILITY_CHANGE:I = 0x3

.field private static final DISPATCH_TORCH_ERROR:I = 0x2

.field private static final DISPATCH_TORCH_STATE_CHANGE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/TorchManager$TorchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/hardware/TorchManager$TorchHandler;

.field private mService:Landroid/hardware/ITorchService;

.field private final mTorchChangeListener:Landroid/hardware/ITorchCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Landroid/hardware/TorchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/TorchManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/ITorchService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/ITorchService;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    .line 149
    new-instance v0, Landroid/hardware/TorchManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/TorchManager$1;-><init>(Landroid/hardware/TorchManager;)V

    iput-object v0, p0, Landroid/hardware/TorchManager;->mTorchChangeListener:Landroid/hardware/ITorchCallback;

    .line 47
    iput-object p1, p0, Landroid/hardware/TorchManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Landroid/hardware/TorchManager;->mService:Landroid/hardware/ITorchService;

    .line 49
    new-instance v0, Landroid/hardware/TorchManager$TorchHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/TorchManager$TorchHandler;-><init>(Landroid/hardware/TorchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/TorchManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/TorchManager;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/TorchManager;)Landroid/hardware/TorchManager$TorchHandler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/TorchManager;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/TorchManager;)Landroid/hardware/ITorchService;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/TorchManager;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/TorchManager;->mService:Landroid/hardware/ITorchService;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/hardware/TorchManager$TorchCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/TorchManager$TorchCallback;

    .prologue
    .line 121
    iget-object v2, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Torch client was already added"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 125
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :try_start_2
    iget-object v1, p0, Landroid/hardware/TorchManager;->mService:Landroid/hardware/ITorchService;

    iget-object v3, p0, Landroid/hardware/TorchManager;->mTorchChangeListener:Landroid/hardware/ITorchCallback;

    invoke-interface {v1, v3}, Landroid/hardware/ITorchService;->addListener(Landroid/hardware/ITorchCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v2

    .line 134
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/hardware/TorchManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to register torch listener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/hardware/TorchManager;->mService:Landroid/hardware/ITorchService;

    invoke-interface {v1}, Landroid/hardware/ITorchService;->isAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTorchOn()Z
    .locals 2

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Landroid/hardware/TorchManager;->mService:Landroid/hardware/ITorchService;

    invoke-interface {v1}, Landroid/hardware/ITorchService;->isTorchOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 198
    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTorchSupported()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Landroid/hardware/TorchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Landroid/hardware/TorchManager$TorchCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/TorchManager$TorchCallback;

    .prologue
    .line 137
    iget-object v2, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Landroid/hardware/TorchManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 141
    :try_start_1
    iget-object v1, p0, Landroid/hardware/TorchManager;->mService:Landroid/hardware/ITorchService;

    iget-object v3, p0, Landroid/hardware/TorchManager;->mTorchChangeListener:Landroid/hardware/ITorchCallback;

    invoke-interface {v1, v3}, Landroid/hardware/ITorchService;->removeListener(Landroid/hardware/ITorchCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 147
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/hardware/TorchManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to remove torch listener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setTorchEnabled(Z)V
    .locals 2
    .param p1, "newState"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;

    new-instance v1, Landroid/hardware/TorchManager$3;

    invoke-direct {v1, p0, p1}, Landroid/hardware/TorchManager$3;-><init>(Landroid/hardware/TorchManager;Z)V

    invoke-virtual {v0, v1}, Landroid/hardware/TorchManager$TorchHandler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public toggleTorch()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/TorchManager;->mHandler:Landroid/hardware/TorchManager$TorchHandler;

    new-instance v1, Landroid/hardware/TorchManager$2;

    invoke-direct {v1, p0}, Landroid/hardware/TorchManager$2;-><init>(Landroid/hardware/TorchManager;)V

    invoke-virtual {v0, v1}, Landroid/hardware/TorchManager$TorchHandler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method
