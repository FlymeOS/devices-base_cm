.class public Lcom/android/server/TorchService;
.super Landroid/hardware/ITorchService$Stub;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TorchService$CameraUserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DISPATCH_AVAILABILITY_CHANGED:I = 0x2

.field private static final DISPATCH_ERROR:I = 0x0

.field private static final DISPATCH_STATE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCamerasInUse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/TorchService$CameraUserRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mHandler:Landroid/os/Handler;

.field private final mKillFlashlightRunnable:Ljava/lang/Runnable;

.field private mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/ITorchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOpeningCamera:Z

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTorchAppUid:I

.field private mTorchAvailable:Z

.field private mTorchCameraId:I

.field private final mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private mTorchEnabled:Z

.field private final mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

.field private final mUpdateFlashlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/android/server/TorchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/hardware/ITorchService$Stub;-><init>()V

    .line 64
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    .line 347
    new-instance v0, Lcom/android/server/TorchService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$2;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/android/server/TorchService$3;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$3;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    .line 398
    new-instance v0, Lcom/android/server/TorchService$4;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$4;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    .line 428
    new-instance v0, Lcom/android/server/TorchService$5;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$5;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    .line 447
    new-instance v0, Lcom/android/server/TorchService$6;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$6;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 96
    iput-object p1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    .line 98
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 99
    invoke-virtual {p0}, Lcom/android/server/TorchService;->initialize()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TorchService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/TorchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/TorchService;->teardownTorch()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/TorchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/TorchService;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/TorchService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/TorchService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/TorchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/TorchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TorchService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TorchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->updateFlashlight(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/TorchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TorchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->dispatchStateChange(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TorchService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/TorchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/TorchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TorchService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/TorchService;->postUpdateFlashlight()V

    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 374
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    .line 375
    return-void
.end method

.method private dispatchError()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-direct {p0, v0, v0}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    .line 371
    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 7
    .param p1, "message"    # I
    .param p2, "argument"    # Z

    .prologue
    .line 378
    iget-object v5, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 379
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 380
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 381
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/hardware/ITorchCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .local v3, "l":Landroid/hardware/ITorchCallback;
    if-nez p1, :cond_1

    .line 384
    :try_start_1
    invoke-interface {v3}, Landroid/hardware/ITorchCallback;->onTorchError()V

    .line 380
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 386
    invoke-interface {v3, p2}, Landroid/hardware/ITorchCallback;->onTorchStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v6, "Unable to post progress to client listener"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 395
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "l":Landroid/hardware/ITorchCallback;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 387
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "l":Landroid/hardware/ITorchCallback;
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 388
    :try_start_3
    invoke-interface {v3, p2}, Landroid/hardware/ITorchCallback;->onTorchAvailabilityChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 394
    .end local v3    # "l":Landroid/hardware/ITorchCallback;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 395
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 396
    return-void
.end method

.method private dispatchStateChange(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    .line 367
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 216
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v8, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 265
    .local v4, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 266
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 267
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 268
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 273
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 264
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSmallestSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v6, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v7, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    .line 244
    .local v4, "outputSizes":[Landroid/util/Size;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_1

    .line 245
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "doesn\'t support any outputSize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 248
    :cond_1
    const/4 v6, 0x0

    aget-object v1, v4, v6

    .line 249
    .local v1, "chosen":Landroid/util/Size;
    move-object v0, v4

    .local v0, "arr$":[Landroid/util/Size;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 250
    .local v5, "s":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 251
    move-object v1, v5

    .line 249
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v5    # "s":Landroid/util/Size;
    :cond_3
    return-object v1
.end method

.method private handleError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    monitor-enter p0

    .line 339
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-direct {p0}, Lcom/android/server/TorchService;->dispatchError()V

    .line 342
    invoke-direct {p0, v1}, Lcom/android/server/TorchService;->dispatchStateChange(Z)V

    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/TorchService;->updateFlashlight(Z)V

    .line 344
    return-void

    .line 340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postUpdateFlashlight()V
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/TorchService;->ensureHandler()V

    .line 259
    iget-object v0, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TorchService;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method private removeCameraUserLocked(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # I

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TorchService$CameraUserRecord;

    .line 315
    .local v0, "record":Lcom/android/server/TorchService$CameraUserRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/TorchService$CameraUserRecord;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 316
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing camera user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 319
    :cond_1
    return-void
.end method

.method private startDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    .line 223
    invoke-direct {p0}, Lcom/android/server/TorchService;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "cameraId":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDevice(), cameraID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    .line 227
    iget-object v1, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/TorchService;->mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    iget-object v3, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 228
    return-void
.end method

.method private startSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v2, Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 232
    iget-object v2, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/TorchService;->getSmallestSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 233
    .local v1, "size":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 234
    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v0, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    iget-object v2, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v2, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/android/server/TorchService;->mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    iget-object v4, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 238
    return-void
.end method

.method private teardownTorch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 324
    iput-object v1, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    .line 327
    iput-object v1, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 328
    iput-object v1, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 329
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 331
    iget-object v0, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 333
    :cond_1
    iput-object v1, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    .line 334
    iput-object v1, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 335
    return-void
.end method

.method private updateFlashlight(Z)V
    .locals 7
    .param p1, "forceDisable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 279
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 280
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 281
    .local v2, "enabled":Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    if-eqz v2, :cond_4

    .line 283
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_2

    .line 284
    iget-boolean v4, p0, Lcom/android/server/TorchService;->mOpeningCamera:Z

    if-nez v4, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/server/TorchService;->startDevice()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 311
    .end local v2    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    .line 280
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v5, "Error in updateFlashlight"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V

    goto :goto_1

    .line 289
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "enabled":Z
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v4, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/android/server/TorchService;->startSession()V

    goto :goto_1

    .line 307
    .end local v2    # "enabled":Z
    :catch_1
    move-exception v1

    goto :goto_2

    .line 293
    .restart local v2    # "enabled":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v4, :cond_0

    .line 294
    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 296
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 297
    iget-object v4, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 298
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 299
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v4, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 300
    iput-object v3, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 301
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/TorchService;->dispatchStateChange(Z)V

    goto :goto_1

    .line 307
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "enabled":Z
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 304
    .restart local v2    # "enabled":Z
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TorchService;->teardownTorch()V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1
.end method


# virtual methods
.method public addListener(Landroid/hardware/ITorchCallback;)V
    .locals 3
    .param p1, "l"    # Landroid/hardware/ITorchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 204
    return-void
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/TorchService;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/server/TorchService;->ensureHandler()V

    .line 112
    iget-object v1, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/TorchService;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v3, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTorchOn()Z
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    return v0
.end method

.method public onCameraClosed(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # I

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed(token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraOpened(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # I

    .prologue
    .line 118
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpened(token= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, "needTorchShutdown":Z
    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2

    .line 122
    :try_start_0
    iget v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-ne v1, v3, :cond_4

    .line 123
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v3, "Camera was opened by torch app"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iput p2, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    .line 135
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    iget-object v1, p0, Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 143
    :cond_3
    :try_start_1
    new-instance v1, Lcom/android/server/TorchService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/TorchService$1;-><init>(Lcom/android/server/TorchService;ILandroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 152
    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/TorchService$CameraUserRecord;

    invoke-direct {v3, p1}, Lcom/android/server/TorchService$CameraUserRecord;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :goto_1
    return-void

    .line 128
    :cond_4
    :try_start_3
    iget v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    if-ne p2, v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 130
    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v3, "Need to kill torch"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 154
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 155
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeListener(Landroid/hardware/ITorchCallback;)V
    .locals 3
    .param p1, "l"    # Landroid/hardware/ITorchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 211
    return-void
.end method

.method public declared-synchronized setTorchEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 173
    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    .line 174
    invoke-direct {p0}, Lcom/android/server/TorchService;->postUpdateFlashlight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toggleTorch()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/TorchService;->setTorchEnabled(Z)V

    .line 183
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
