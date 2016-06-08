.class public Lcom/android/server/GestureManagerService;
.super Landroid/view/IGestureManager$Stub;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureManagerService$GestureObserver;,
        Lcom/android/server/GestureManagerService$BinderDeath;,
        Lcom/android/server/GestureManagerService$GestureListener;
    }
.end annotation


# static fields
.field private static final ALL_GESTURE_DISABLE:B = 0x0t

.field private static final ALL_GESTURE_ENABLE:B = 0x1t

.field private static final CONTORL_DISABLE_ALL:I = 0x0

.field private static final CONTORL_ENABLE_DRAW_C:I = 0x20

.field private static final CONTORL_ENABLE_DRAW_E:I = 0x40

.field private static final CONTORL_ENABLE_DRAW_M:I = 0x80

.field private static final CONTORL_ENABLE_DRAW_O:I = 0x100

.field private static final CONTORL_ENABLE_DRAW_S:I = 0x200

.field private static final CONTORL_ENABLE_DRAW_V:I = 0x400

.field private static final CONTORL_ENABLE_DRAW_W:I = 0x800

.field private static final CONTORL_ENABLE_DRAW_Z:I = 0x1000

.field private static final CONTORL_ENABLE_SLIDE_DOWN:I = 0x10

.field private static final CONTORL_ENABLE_SLIDE_LEFT:I = 0x2

.field private static final CONTORL_ENABLE_SLIDE_RIGHT:I = 0x4

.field private static final CONTORL_ENABLE_SLIDE_UP:I = 0x8

.field private static final CONTORL_ENABLE_TAP:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DRAW_C_ENABLE:I = 0x2

.field private static final DRAW_E_ENABLE:I = 0x4

.field private static final DRAW_M_ENABLE:I = 0x10

.field private static final DRAW_O_ENABLE:I = 0x80

.field private static final DRAW_S_ENABLE:I = 0x20

.field private static final DRAW_V_ENABLE:I = 0x1

.field private static final DRAW_W_ENABLE:I = 0x8

.field private static final DRAW_Z_ENABLE:I = 0x40

.field private static final SLIDE_DOWN_ENABLE:B = 0x4t

.field private static final SLIDE_LEFT_ENABLE:B = 0x2t

.field private static final SLIDE_RIGHT_ENABLE:B = 0x1t

.field private static final SLIDE_UP_ENABLE:B = 0x8t

.field private static final TAG:Ljava/lang/String; = "GestureManager"

.field private static final TAP_ENABLE:B = 0x1t

.field private static final TYPE_ABC:B = 0x3t

.field private static final TYPE_ALL:B = 0x1t

.field private static final TYPE_SLIDE:B = 0x4t

.field private static final TYPE_TAP:B = 0x2t

.field private static final VIBRATE_TIME_LONG:I = 0x32

.field private static final VIBRATE_TIME_SHORT:I = 0x19


# instance fields
.field mABCControl:[B

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mGestureAllDisable:I

.field private mGestureControlPath:Ljava/lang/String;

.field private mGestureDataPath:Ljava/lang/String;

.field private mGestureGlobalSwitch:I

.field mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

.field mHandler:Landroid/os/Handler;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GestureManagerService$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mSlideControl:[B

.field mTapControl:[B

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Landroid/view/IGestureManager$Stub;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 84
    iput v2, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    .line 86
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    .line 88
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    .line 95
    new-instance v0, Lcom/android/server/GestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureManagerService$1;-><init>(Lcom/android/server/GestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 149
    iput-object p1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mHandler:Landroid/os/Handler;

    .line 151
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 152
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 153
    new-instance v0, Lcom/android/server/GestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/GestureManagerService$2;-><init>(Lcom/android/server/GestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    .line 170
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 174
    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$string;->gesture_data_path_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$string;->gesture_control_path_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    .line 180
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/GestureManagerService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/GestureManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->enableAllGesture()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/GestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/GestureManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    return p1
.end method

.method static synthetic access$276(Lcom/android/server/GestureManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/GestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/GestureManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/GestureManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/GestureManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->notifyListeners(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/GestureManagerService;[BI)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/GestureManagerService;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/GestureManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureManagerService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->disableAllGesture()V

    return-void
.end method

.method private disableAllGesture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 621
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 622
    .local v0, "mDisableAllGesture":[B
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 623
    aput-byte v3, v0, v3

    .line 624
    invoke-direct {p0, v0}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    .line 625
    return-void
.end method

.method private enableAllGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 614
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 615
    .local v0, "mEnableAllGesture":[B
    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 616
    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 617
    invoke-direct {p0, v0}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    .line 618
    return-void
.end method

.method private findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/GestureManagerService$GestureListener;
    .locals 3
    .param p1, "callback"    # Landroid/view/IGestureCallback;

    .prologue
    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GestureManagerService$GestureListener;

    .line 255
    .local v1, "listener":Lcom/android/server/GestureManagerService$GestureListener;
    iget-object v2, v1, Lcom/android/server/GestureManagerService$GestureListener;->mCallback:Landroid/view/IGestureCallback;

    if-ne p1, v2, :cond_0

    .line 259
    .end local v1    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    :goto_1
    return-object v1

    .line 253
    .restart local v1    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initGestureControl()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_double_click"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 334
    .local v0, "enable":I
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aput-byte v6, v1, v6

    .line 335
    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    if-ne v0, v2, :cond_d

    move v1, v2

    :goto_0
    aput-byte v1, v4, v3

    .line 336
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    invoke-direct {p0, v1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    .line 337
    const-string v1, "GestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE_TAP initGestureControl , write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    invoke-direct {p0, v5, v7}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aget-byte v1, v1, v3

    if-eqz v1, :cond_0

    .line 339
    iput v2, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aput-byte v7, v1, v6

    .line 343
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aput-byte v3, v1, v3

    .line 344
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_slide_left_right"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 346
    if-ne v0, v2, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 348
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 349
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 350
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_slide_up"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 354
    if-ne v0, v2, :cond_2

    .line 355
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 356
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_slide_down"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 360
    if-ne v0, v2, :cond_3

    .line 361
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 362
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 364
    :cond_3
    const-string v1, "GestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE_SLIDE initGestureControl , write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    invoke-direct {p0, v5, v7}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mGestureAllDisable is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    invoke-direct {p0, v1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    .line 367
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    const/4 v4, 0x3

    aput-byte v4, v1, v6

    .line 368
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aput-byte v3, v1, v3

    .line 370
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_c"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 372
    if-ne v0, v2, :cond_4

    .line 373
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 374
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_e"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 378
    if-ne v0, v2, :cond_5

    .line 379
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 380
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 382
    :cond_5
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_m"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 384
    if-ne v0, v2, :cond_6

    .line 385
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 386
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 388
    :cond_6
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_o"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 390
    if-ne v0, v2, :cond_7

    .line 391
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 392
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 394
    :cond_7
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_s"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 396
    if-ne v0, v2, :cond_8

    .line 397
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 398
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 400
    :cond_8
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_v"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 402
    if-ne v0, v2, :cond_9

    .line 403
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 404
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 406
    :cond_9
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_w"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 408
    if-ne v0, v2, :cond_a

    .line 409
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v4, v1, v3

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 410
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 412
    :cond_a
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_quick_wakeup_draw_z"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 414
    if-ne v0, v2, :cond_b

    .line 415
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 416
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    .line 418
    :cond_b
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    invoke-direct {p0, v1}, Lcom/android/server/GestureManagerService;->writeByteToControl([B)V

    .line 419
    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_ABC initGestureControl , write: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mABCControl:[B

    invoke-direct {p0, v4, v7}, Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mGestureAllDisable is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_quick_wakeup_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    .line 423
    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGestureControl , mGestureGlobalSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    if-nez v1, :cond_e

    .line 426
    :cond_c
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->disableAllGesture()V

    .line 430
    :goto_1
    return-void

    :cond_d
    move v1, v3

    .line 335
    goto/16 :goto_0

    .line 428
    :cond_e
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->enableAllGesture()V

    goto :goto_1
.end method

.method private notifyListeners(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, "listener":Lcom/android/server/GestureManagerService$GestureListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    check-cast v2, Lcom/android/server/GestureManagerService$GestureListener;

    .line 240
    .restart local v2    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    if-eqz v2, :cond_0

    .line 242
    :try_start_0
    iget-object v3, v2, Lcom/android/server/GestureManagerService$GestureListener;->mCallback:Landroid/view/IGestureCallback;

    invoke-interface {v3, p1}, Landroid/view/IGestureCallback;->onGestureTrigger(I)V

    .line 243
    const-string v3, "GestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyListeners "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/GestureManagerService$GestureListener;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private readFrom(Ljava/lang/String;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 286
    const/16 v7, 0x8

    new-array v0, v7, [B

    .line 287
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 288
    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 290
    .local v5, "ret":I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 292
    .local v4, "len":I
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v8, 0x0

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 294
    const-string v7, "GestureManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFrom "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gesture type is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 302
    if-eqz v3, :cond_0

    .line 303
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 309
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_1
    return v7

    .line 304
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    .restart local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v7, "GestureManager"

    const-string v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    if-eqz v2, :cond_1

    .line 303
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    move v7, v5

    .line 309
    goto :goto_1

    .line 304
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 306
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 299
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v7, "GestureManager"

    const-string v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 302
    if-eqz v2, :cond_1

    .line 303
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 304
    :catch_4
    move-exception v1

    .line 306
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 302
    :goto_5
    if-eqz v2, :cond_2

    .line 303
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 307
    :cond_2
    :goto_6
    throw v7

    .line 304
    :catch_5
    move-exception v1

    .line 306
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 298
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 296
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private toString([BI)Ljava/lang/String;
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .prologue
    .line 433
    new-array v1, p2, [B

    .line 434
    .local v1, "forLog":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 435
    aget-byte v5, p1, v2

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    const-string v3, "null"

    .line 439
    .local v3, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    move-object v3, v4

    .line 444
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 440
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeByteToControl([B)V
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 266
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mGestureControlPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 267
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    if-nez v1, :cond_2

    .line 275
    if-eqz v1, :cond_1

    .line 277
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 269
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v1, :cond_1

    .line 277
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v0

    .line 280
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v3, "GestureManager"

    const-string v4, "writeByteToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    if-eqz v1, :cond_1

    .line 277
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 278
    :catch_3
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "GestureManager"

    const-string v4, "writeByteToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 275
    if-eqz v1, :cond_1

    .line 277
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 278
    :catch_5
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 277
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 281
    :cond_3
    :goto_1
    throw v3

    .line 278
    :catch_6
    move-exception v0

    .line 280
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public pauseAllGesture()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    monitor-enter p0

    .line 630
    :try_start_0
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->disableAllGesture()V

    .line 634
    :cond_0
    monitor-exit p0

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/view/IGestureCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/GestureManagerService$GestureListener;

    move-result-object v1

    .line 210
    .local v1, "find":Lcom/android/server/GestureManagerService$GestureListener;
    if-eqz v1, :cond_0

    .line 211
    const-string v4, "GestureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object tried to add duplicate listeners: tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit p0

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v2, Lcom/android/server/GestureManagerService$GestureListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/GestureManagerService$GestureListener;-><init>(Lcom/android/server/GestureManagerService;Landroid/view/IGestureCallback;Ljava/lang/String;)V

    .line 215
    .local v2, "listener":Lcom/android/server/GestureManagerService$GestureListener;
    new-instance v0, Lcom/android/server/GestureManagerService$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v0, p0, p2, v4, v2}, Lcom/android/server/GestureManagerService$BinderDeath;-><init>(Lcom/android/server/GestureManagerService;Ljava/lang/String;ILcom/android/server/GestureManagerService$GestureListener;)V

    .line 216
    .local v0, "binderDeath":Lcom/android/server/GestureManagerService$BinderDeath;
    invoke-interface {p1}, Landroid/view/IGestureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 217
    iget-object v4, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 218
    .local v3, "ret":Z
    const-string v4, "GestureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object tried to add listeners: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mListeners.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit p0

    goto :goto_0

    .end local v0    # "binderDeath":Lcom/android/server/GestureManagerService$BinderDeath;
    .end local v1    # "find":Lcom/android/server/GestureManagerService$GestureListener;
    .end local v2    # "listener":Lcom/android/server/GestureManagerService$GestureListener;
    .end local v3    # "ret":Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeCallback(Landroid/view/IGestureCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/view/IGestureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/GestureManagerService;->findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/GestureManagerService$GestureListener;

    move-result-object v0

    .line 227
    .local v0, "find":Lcom/android/server/GestureManagerService$GestureListener;
    if-nez v0, :cond_0

    .line 228
    const-string v1, "GestureManager"

    const-string v2, "can\'t find the listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-exit p0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object tried to remove listeners: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/GestureManagerService$GestureListener;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mListeners.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit p0

    goto :goto_0

    .end local v0    # "find":Lcom/android/server/GestureManagerService$GestureListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeAllGesture()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    monitor-enter p0

    .line 640
    :try_start_0
    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureAllDisable:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->enableAllGesture()V

    .line 644
    :cond_0
    monitor-exit p0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Lcom/android/server/GestureManagerService;->initGestureControl()V

    .line 118
    new-instance v0, Lcom/android/server/GestureManagerService$GestureObserver;

    iget-object v1, p0, Lcom/android/server/GestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureManagerService$GestureObserver;-><init>(Lcom/android/server/GestureManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    .line 119
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_slide_left_right"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_slide_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_slide_down"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_c"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_e"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_m"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_o"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_s"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_v"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_w"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_draw_z"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_double_click"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_quick_wakeup_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureObserver:Lcom/android/server/GestureManagerService$GestureObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    const-string v0, "GestureManager"

    const-string v1, "system startWatching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public triggerGesture()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "type":I
    sget-object v2, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mGestureDataPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/GestureManagerService;->readFrom(Ljava/lang/String;)I

    move-result v0

    .line 193
    :cond_0
    if-nez v0, :cond_2

    .line 203
    :goto_1
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x19

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 196
    :cond_2
    move v1, v0

    .line 197
    .local v1, "type_l":I
    iget-object v2, p0, Lcom/android/server/GestureManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/GestureManagerService$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/GestureManagerService$3;-><init>(Lcom/android/server/GestureManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
