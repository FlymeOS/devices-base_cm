.class public Landroid/hardware/camera2/legacy/RequestThreadManager;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_TOLERANCE:F = 0.01f

.field private static final DEBUG:Z

.field private static final JPEG_FRAME_TIMEOUT:I = 0xfa0

.field private static final MAX_IN_FLIGHT_REQUESTS:I = 0x2

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_CONFIGURE_OUTPUTS:I = 0x1

.field private static final MSG_SUBMIT_CAPTURE_REQUEST:I = 0x2

.field private static final PREVIEW_FRAME_TIMEOUT:I = 0x3e8

.field private static final REQUEST_COMPLETE_TIMEOUT:I = 0xfa0

.field private static final USE_BLOB_FORMAT_OVERRIDE:Z = true

.field private static final VERBOSE:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallbackOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private final mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private mDummySurface:Landroid/view/Surface;

.field private mDummyTexture:Landroid/graphics/SurfaceTexture;

.field private final mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private final mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

.field private final mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field private mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

.field private final mIdleLock:Ljava/lang/Object;

.field private mIntermediateBufferSize:Landroid/util/Size;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private final mJpegSurfaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private final mPreviewOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewRunning:Z

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private final mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mReceivedJpeg:Landroid/os/ConditionVariable;

.field private final mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mRequestHandlerCb:Landroid/os/Handler$Callback;

.field private final mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

.field private final mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "HAL1ShimLogging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    .line 70
    const-string v0, "HAL1ShimLogging"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 5
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "deviceState"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    const/4 v4, 0x0

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    .line 103
    new-instance v1, Landroid/hardware/camera2/legacy/RequestQueue;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestQueue;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 108
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    .line 109
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    const-string v2, "Incoming Preview"

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 110
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    const-string v2, "Incoming Requests"

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 112
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 199
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;

    .line 201
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$2;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 246
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$3;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 253
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$4;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 639
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$5;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    .line 942
    const-string v1, "camera must not be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    .line 943
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    .line 944
    const-string v1, "characteristics must not be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 945
    const-string v1, "RequestThread-%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "name":Ljava/lang/String;
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    .line 947
    const-string v1, "deviceState must not be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CameraDeviceState;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 948
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .line 949
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .line 950
    new-instance v1, Landroid/hardware/camera2/legacy/CaptureCollector;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/legacy/CaptureCollector;-><init>(ILandroid/hardware/camera2/legacy/CameraDeviceState;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 951
    new-instance v1, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    invoke-direct {v1, v0, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 952
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 953
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doPreviewCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapturePrepare(Landroid/hardware/camera2/legacy/RequestHolder;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->resetJpegSurfaceFormats(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    return-object v0
.end method

.method static synthetic access$702(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    return-object p1
.end method

.method static synthetic access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->configureOutputs(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    return-object v0
.end method

.method private calculatePictureSize(Ljava/util/List;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 17
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "callbackOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p2, "callbackSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 539
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Input collections must be same length"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 541
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v3, "configuredJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 543
    .local v8, "sizeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 544
    .local v1, "callbackSurface":Landroid/view/Surface;
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 545
    .local v5, "jpegSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    invoke-static {v1, v13}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 549
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    .end local v1    # "callbackSurface":Landroid/view/Surface;
    .end local v5    # "jpegSize":Landroid/util/Size;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 559
    const/4 v7, -0x1

    .line 560
    .local v7, "maxConfiguredJpegWidth":I
    const/4 v6, -0x1

    .line 561
    .local v6, "maxConfiguredJpegHeight":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 562
    .restart local v5    # "jpegSize":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v13

    if-le v13, v7, :cond_3

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 564
    :cond_3
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v13

    if-le v13, v6, :cond_4

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 566
    :cond_4
    goto :goto_1

    .line 567
    .end local v5    # "jpegSize":Landroid/util/Size;
    :cond_5
    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v7, v6}, Landroid/util/Size;-><init>(II)V

    .line 569
    .local v9, "smallestBoundJpegSize":Landroid/util/Size;
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 576
    .local v12, "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v2, "candidateSupportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Size;

    .line 578
    .local v11, "supportedJpegSize":Landroid/util/Size;
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v13

    if-lt v13, v7, :cond_6

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v13

    if-lt v13, v6, :cond_6

    .line 580
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 584
    .end local v11    # "supportedJpegSize":Landroid/util/Size;
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 585
    new-instance v13, Ljava/lang/AssertionError;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not find any supported JPEG sizes large enough to fit "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 590
    :cond_8
    new-instance v13, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v13}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {v2, v13}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Size;

    .line 593
    .local v10, "smallestSupportedJpegSize":Landroid/util/Size;
    invoke-virtual {v10, v9}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 594
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v14, "configureOutputs - Will need to crop picture %s into smallest bound size %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v9, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .end local v2    # "candidateSupportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "maxConfiguredJpegHeight":I
    .end local v7    # "maxConfiguredJpegWidth":I
    .end local v9    # "smallestBoundJpegSize":Landroid/util/Size;
    .end local v10    # "smallestSupportedJpegSize":Landroid/util/Size;
    .end local v12    # "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_9
    :goto_3
    return-object v10

    :cond_a
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static checkAspectRatiosMatch(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 4
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 609
    .local v0, "aAspect":F
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 611
    .local v1, "bAspect":F
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private configureOutputs(Ljava/util/Collection;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "outputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    sget-boolean v31, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    if-eqz v31, :cond_0

    .line 327
    if-nez p1, :cond_2

    const-string/jumbo v22, "null"

    .line 328
    .local v22, "outputsStr":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "configureOutputs with "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v22    # "outputsStr":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 356
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilStarted()V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/camera2/legacy/GLThreadManager;->ignoreNewFrames()V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilIdle()V

    .line 361
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->resetJpegSurfaceFormats(Ljava/util/Collection;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->clear()V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->clear()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->clear()V

    .line 365
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 367
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v24, "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v8, "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v31, v0

    sget-object v32, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 371
    .local v12, "facing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v31, v0

    sget-object v32, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 372
    .local v17, "orientation":I
    if-eqz p1, :cond_3

    .line 373
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 374
    .local v20, "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/view/Surface;

    .line 375
    .local v27, "s":Landroid/view/Surface;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/util/Size;

    .line 377
    .local v21, "outSize":Landroid/util/Size;
    :try_start_2
    invoke-static/range {v27 .. v27}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    move-result v13

    .line 378
    .local v13, "format":I
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-static {v0, v12, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceOrientation(Landroid/view/Surface;II)V

    .line 379
    packed-switch v13, :pswitch_data_0

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 395
    .end local v13    # "format":I
    :catch_0
    move-exception v9

    .line 396
    .local v9, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Surface abandoned, skipping..."

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 327
    .end local v8    # "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v9    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v12    # "facing":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "orientation":I
    .end local v20    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v21    # "outSize":Landroid/util/Size;
    .end local v24    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v27    # "s":Landroid/view/Surface;
    :cond_2
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " surfaces"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 333
    :catch_1
    move-exception v9

    .line 334
    .local v9, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Received device exception in configure call: "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 497
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :goto_3
    return-void

    .line 347
    :catch_2
    move-exception v9

    .line 348
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Failed to clear prior SurfaceTexture, may cause GL deadlock: "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 349
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 350
    .local v9, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Received device exception in configure call: "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_3

    .line 383
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v12    # "facing":I
    .restart local v13    # "format":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v17    # "orientation":I
    .restart local v20    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .restart local v21    # "outSize":Landroid/util/Size;
    .restart local v24    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v27    # "s":Landroid/view/Surface;
    :pswitch_0
    const/16 v31, 0x1

    :try_start_3
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 401
    .end local v13    # "format":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v21    # "outSize":Landroid/util/Size;
    .end local v27    # "s":Landroid/view/Surface;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v29

    .line 410
    .local v29, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v7

    .line 411
    .local v7, "bestRange":[I
    sget-boolean v31, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    if-eqz v31, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "doPreviewCapture - Selected range ["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v32, v7, v32

    const/16 v33, 0x1

    aget v33, v7, v33

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 419
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_a

    .line 421
    invoke-static/range {v24 .. v24}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    move-result-object v16

    .line 424
    .local v16, "largestOutput":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v15

    .line 426
    .local v15, "largestJpegDimen":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    .line 432
    .local v30, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    mul-long v18, v32, v34

    .line 433
    .local v18, "largestOutputArea":J
    invoke-static/range {v30 .. v30}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    move-result-object v6

    .line 434
    .local v6, "bestPreviewDimen":Landroid/util/Size;
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/util/Size;

    .line 435
    .local v27, "s":Landroid/util/Size;
    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getWidth()I

    move-result v31

    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getHeight()I

    move-result v32

    mul-int v31, v31, v32

    move/from16 v0, v31

    int-to-long v10, v0

    .line 436
    .local v10, "currArea":J
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v31

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v32

    mul-int v31, v31, v32

    move/from16 v0, v31

    int-to-long v4, v0

    .line 437
    .local v4, "bestArea":J
    move-object/from16 v0, v27

    invoke-static {v15, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->checkAspectRatiosMatch(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v31

    if-eqz v31, :cond_5

    cmp-long v31, v10, v4

    if-gez v31, :cond_5

    cmp-long v31, v10, v18

    if-ltz v31, :cond_5

    .line 439
    move-object/from16 v6, v27

    goto :goto_4

    .line 402
    .end local v4    # "bestArea":J
    .end local v6    # "bestPreviewDimen":Landroid/util/Size;
    .end local v7    # "bestRange":[I
    .end local v10    # "currArea":J
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "largestJpegDimen":Landroid/util/Size;
    .end local v16    # "largestOutput":Landroid/util/Size;
    .end local v18    # "largestOutputArea":J
    .end local v27    # "s":Landroid/util/Size;
    .end local v29    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v30    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_4
    move-exception v9

    .line 403
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Received device exception: "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_3

    .line 443
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "bestPreviewDimen":Landroid/util/Size;
    .restart local v7    # "bestRange":[I
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "largestJpegDimen":Landroid/util/Size;
    .restart local v16    # "largestOutput":Landroid/util/Size;
    .restart local v18    # "largestOutputArea":J
    .restart local v29    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v30    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_6
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->getWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/util/Size;->getHeight()I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 447
    sget-boolean v31, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    if-eqz v31, :cond_7

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Intermediate buffer selected with dimens: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v6    # "bestPreviewDimen":Landroid/util/Size;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "largestJpegDimen":Landroid/util/Size;
    .end local v16    # "largestOutput":Landroid/util/Size;
    .end local v18    # "largestOutputArea":J
    .end local v30    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->calculatePictureSize(Ljava/util/List;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v28

    .line 460
    .local v28, "smallestSupportedJpegSize":Landroid/util/Size;
    if-eqz v28, :cond_8

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "configureOutputs - set take picture size to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->getWidth()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->getHeight()I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 472
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    if-nez v31, :cond_9

    .line 473
    new-instance v31, Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v12, v2}, Landroid/hardware/camera2/legacy/GLThreadManager;-><init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/camera2/legacy/GLThreadManager;->start()V

    .line 476
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilStarted()V

    .line 477
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v26, "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 479
    .local v25, "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/Surface;

    .line 480
    .local v23, "p":Landroid/view/Surface;
    new-instance v31, Landroid/util/Pair;

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 452
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v23    # "p":Landroid/view/Surface;
    .end local v25    # "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    .end local v26    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    .end local v28    # "smallestSupportedJpegSize":Landroid/util/Size;
    :cond_a
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    .line 453
    sget-boolean v31, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    if-eqz v31, :cond_7

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "No Intermediate buffer selected, no preview outputs were configured"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 482
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v25    # "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    .restart local v26    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    .restart local v28    # "smallestSupportedJpegSize":Landroid/util/Size;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/camera2/legacy/GLThreadManager;->allowNewFrames()V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/camera2/legacy/GLThreadManager;->getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 490
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    .line 491
    :catch_5
    move-exception v9

    .line 492
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "Received device exception while configuring: "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_3

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private createDummySurface()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummySurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    .line 186
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 187
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummySurface:Landroid/view/Surface;

    .line 189
    :cond_1
    return-void
.end method

.method private doJpegCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 298
    sget-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v1, "doJpegCapturePrepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 302
    return-void
.end method

.method private doJpegCapturePrepare(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    sget-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doJpegCapturePrepare - preview running? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-nez v0, :cond_2

    .line 289
    sget-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v1, "doJpegCapture - create fake surface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->createDummySurface()V

    .line 292
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 293
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->startPreview()V

    .line 295
    :cond_2
    return-void
.end method

.method private doPreviewCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    sget-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPreviewCapture - preview running? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-eqz v0, :cond_1

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preview capture called with no preview surfaces configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 320
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 322
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->startPreview()V

    goto :goto_0
.end method

.method private getPhotoPreviewFpsRange(Ljava/util/List;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 617
    iget-object v8, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v9, "No supported frame rates returned!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v8, 0x0

    .line 636
    :goto_0
    return-object v8

    .line 621
    :cond_0
    const/4 v2, 0x0

    .line 622
    .local v2, "bestMin":I
    const/4 v1, 0x0

    .line 623
    .local v1, "bestMax":I
    const/4 v0, 0x0

    .line 624
    .local v0, "bestIndex":I
    const/4 v4, 0x0

    .line 625
    .local v4, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 626
    .local v7, "rate":[I
    const/4 v8, 0x0

    aget v6, v7, v8

    .line 627
    .local v6, "minFps":I
    const/4 v8, 0x1

    aget v5, v7, v8

    .line 628
    .local v5, "maxFps":I
    if-gt v5, v1, :cond_1

    if-ne v5, v1, :cond_2

    if-le v6, v2, :cond_2

    .line 629
    :cond_1
    move v2, v6

    .line 630
    move v1, v5

    .line 631
    move v0, v4

    .line 633
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 634
    goto :goto_1

    .line 636
    .end local v5    # "maxFps":I
    .end local v6    # "minFps":I
    .end local v7    # "rate":[I
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    goto :goto_0
.end method

.method private resetJpegSurfaceFormats(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p1, :cond_1

    .line 510
    :cond_0
    return-void

    .line 503
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 505
    .local v2, "s":Landroid/view/Surface;
    const/16 v3, 0x21

    :try_start_0
    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v4, "Surface abandoned, skipping..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 275
    sget-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview - preview running? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 283
    :cond_1
    return-void
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    .line 265
    sget-boolean v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPreview - preview running? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    .line 272
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelRepeating(I)J
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public configure(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "outputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    const/4 v4, 0x0

    .line 1038
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1039
    .local v1, "handler":Landroid/os/Handler;
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 1040
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    invoke-direct {v2, v0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;)V

    .line 1041
    .local v2, "holder":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1043
    return-void
.end method

.method public flush()J
    .locals 4

    .prologue
    .line 968
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v3, "Flushing all pending requests."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating()J

    move-result-wide v0

    .line 970
    .local v0, "lastFrame":J
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V

    .line 971
    return-wide v0
.end method

.method public quit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 978
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v1

    .line 980
    .local v1, "handler":Landroid/os/Handler;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 981
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->quitSafely()Z

    .line 983
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 984
    .restart local v1    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    const-string v3, "Thread %s (%d) interrupted while quitting."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->start()V

    .line 960
    return-void
.end method

.method public submitCaptureRequests(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 4
    .param p2, "repeating"    # Z
    .param p3, "frameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1006
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1008
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1009
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/camera2/legacy/RequestQueue;->submit(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v1

    .line 1010
    .local v1, "ret":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1011
    monitor-exit v3

    .line 1012
    return v1

    .line 1011
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
