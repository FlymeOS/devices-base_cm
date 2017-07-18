.class public Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;,
        Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;,
        Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;,
        Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HIGH:I = 0x1

.field private static final LOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AmbientLuxObserver"


# instance fields
.field private mAmbientLux:F

.field private mCallback:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

.field private final mHysteresisLux:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private mLightSensorRate:I

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLuxHandler:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;

.field private final mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private final mThresholdDuration:I

.field private final mThresholdLux:F


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F

    return v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mCallback:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mHysteresisLux:F

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLuxHandler:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;

    return-object v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    return-object v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I

    return v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mThresholdDuration:I

    return v0
.end method

.method static synthetic -get9(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)F
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mThresholdLux:F

    return v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;F)F
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F

    return p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;I)I
    .locals 0

    iput p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "AmbientLuxObserver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->DEBUG:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;FFI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "thresholdLux"    # F
    .param p4, "hysteresisLux"    # F
    .param p5, "thresholdDuration"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F

    .line 52
    iput v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I

    .line 134
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$1;-><init>(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    .line 66
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-direct {v0, p0, p2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;-><init>(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLuxHandler:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;

    .line 67
    iput p3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mThresholdLux:F

    .line 68
    iput p4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mHysteresisLux:F

    .line 69
    iput p5, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mThresholdDuration:I

    .line 70
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-direct {v0, p5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    .line 72
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const v1, 0x10e006b

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorRate:I

    .line 65
    return-void
.end method

.method private enableLightSensor(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 159
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    if-eqz v0, :cond_2

    .line 163
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 165
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLuxHandler:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;->clear()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F

    .line 167
    iput v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I

    .line 168
    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 169
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->clear()V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 161
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 162
    iget v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLuxHandler:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$AmbientLuxHandler;

    .line 161
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 175
    const-string/jumbo v0, "  AmbientLuxObserver State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mRingBuffer:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 150
    :try_start_0
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTransitionListener(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;)V
    .locals 1
    .param p1, "callback"    # Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    .prologue
    monitor-enter p0

    .line 154
    :try_start_0
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->mCallback:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    .line 155
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->enableLightSensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 153
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
