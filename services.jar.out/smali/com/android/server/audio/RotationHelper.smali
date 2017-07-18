.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioOrientationListener;,
        Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;,
        Lcom/android/server/audio/RotationHelper$RotationCheckThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static sContext:Landroid/content/Context;

.field private static sDeviceRotation:I

.field private static sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

.field private static final sRotationLock:Ljava/lang/Object;

.field private static sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 41
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disable()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    .line 86
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->disable()V

    goto :goto_0
.end method

.method static enable()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    .line 83
    :goto_0
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 77
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    goto :goto_0
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 60
    if-nez p0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    .line 65
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    .line 66
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, "AudioService.RotationHelper"

    const-string/jumbo v1, "Not using WindowOrientationListener, reverting to OrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    .line 71
    sput-object v2, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    .line 72
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-direct {v0, p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    .line 73
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    .line 59
    :cond_1
    return-void
.end method

.method private static publishRotation(I)V
    .locals 3
    .param p0, "rotation"    # I

    .prologue
    .line 111
    const-string/jumbo v0, "AudioService.RotationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishing device rotation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (x90deg)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    packed-switch p0, :pswitch_data_0

    .line 126
    const-string/jumbo v0, "AudioService.RotationHelper"

    const-string/jumbo v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :pswitch_1
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :pswitch_2
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :pswitch_3
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static updateOrientation()V
    .locals 3

    .prologue
    .line 100
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 101
    const-string/jumbo v2, "window"

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 102
    .local v0, "newRotation":I
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    sget v1, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    if-eq v0, v1, :cond_0

    .line 104
    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 105
    sget v1, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    invoke-static {v1}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 97
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
