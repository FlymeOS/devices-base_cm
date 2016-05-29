.class public Lcom/android/internal/policy/impl/MzPhoneWindowManager;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;
    }
.end annotation


# static fields
.field private static final IMPEDANCE_FILE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_SCREEN_OFF:Ljava/lang/String; = "key/home_long_press_screen_off"

.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_VOICE_ON:Ljava/lang/String; = "key/home_long_press_voice_on"

.field public static final MOBEVENT_ACTION_HOME_SCREEN_ON:Ljava/lang/String; = "key/home_screen_on"

.field public static final MOBEVENT_ACTION_HOME_SLIDE_UP:Ljava/lang/String; = "key/home_action_slide_up"

.field public static final MOBEVENT_ACTION_INTERCEPT_SCREEN_SHOT:Ljava/lang/String; = "key/power_intercept_screen_shot"

.field private static TAGG:Ljava/lang/String;

.field private static mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;


# instance fields
.field private final Back_GESTURE_KEY_CLICK_TIMEOUT:I

.field private final MSG_SEND_BACK_KEY:I

.field private final PLAY_TOUCH_HOME_AUDIO:I

.field private TAG:Ljava/lang/String;

.field private bHomeKeyLongFlag:Z

.field private backGestureKeyValid:Z

.field private final effectType:I

.field private fingerTouchConsumed:Z

.field private homeKeySleep:Z

.field private isTouchValid:Z

.field private mHandler:Landroid/os/Handler;

.field private mHomeKeyDown:Z

.field private final mInterceptHeadsethook:Ljava/lang/Runnable;

.field private final mLaunchVoiceActivity:Ljava/lang/Runnable;

.field private mPowerSaveMode:Z

.field private mVloumeKeyConsumed:Z

.field private final mVolumeUPLongPress:Ljava/lang/Runnable;

.field private preventBackGestureKey:Z

.field private pw:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "MzKeyEvent"

    sput-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAGG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .param p1, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "MzPhoneWindowManager"

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isTouchValid:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->bHomeKeyLongFlag:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDown:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->fingerTouchConsumed:Z

    .line 72
    iput v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->effectType:I

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->PLAY_TOUCH_HOME_AUDIO:I

    .line 74
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->MSG_SEND_BACK_KEY:I

    .line 75
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->Back_GESTURE_KEY_CLICK_TIMEOUT:I

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 180
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    .line 539
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 88
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEnablePowerSaveModeSettingChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->registerPowerSaveModeObserver()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->playHomeEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->bHomeKeyLongFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    return p1
.end method

.method public static checkProxyValid(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    sget-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 461
    invoke-static {p0}, Lcom/meizu/statsos/UsageStatsProxy;->getOfflineInstance(Landroid/content/Context;)Lcom/meizu/statsos/UsageStatsProxy;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    .line 463
    :cond_0
    return-void
.end method

.method public static collectHomeLongScreenOff(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 440
    const-string v0, "key/home_long_press_screen_off"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public static collectHomeLongVoiceOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 448
    const-string v0, "key/home_long_press_voice_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public static collectHomeScreenOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 432
    const-string v0, "key/home_screen_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public static collectInterceptScreenShot(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 456
    const-string v0, "key/power_intercept_screen_shot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public static collectSlideUpHomeKey(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 424
    const-string v0, "key/home_action_slide_up"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method private dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back key inject InputEvent successed---! --> action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", times is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :cond_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "back key inject InputEvent failed---!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPhoneIdle()Z
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "isPhoneIdle":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 157
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onEventOnly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 466
    sget-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 467
    sget-object v2, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v0}, Lcom/meizu/statsos/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method private playHomeEffect()V
    .locals 7

    .prologue
    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_effects_enabled"

    const/4 v5, 0x0

    const/4 v6, -0x3

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 336
    .local v2, "soundEnable":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 337
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 338
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v2    # "soundEnable":I
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPowerSaveModeObserver()V
    .locals 5

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "mz_current_power_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    return-void
.end method

.method private startVoiceActivity(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public HandleLongPressOnHome(ILandroid/view/KeyEvent;)I
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v3

    .line 252
    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    .line 256
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 257
    .local v1, "action":I
    const/4 v0, 0x0

    .line 258
    .local v0, "HOEM_LOGPRESS_SCREENOF":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mz_intelligent_voice"

    const/4 v7, -0x3

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 263
    .local v2, "isLongHomePressEnable":I
    if-nez v2, :cond_3

    .line 264
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    .line 265
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 266
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectHomeLongScreenOff(Landroid/content/Context;)V

    :cond_2
    :goto_1
    move v3, v4

    .line 274
    goto :goto_0

    .line 268
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    .line 270
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectHomeLongVoiceOn(Landroid/content/Context;)V

    .line 271
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    goto :goto_1
.end method

.method public InterceptPowerKeyForTelephony(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 119
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 120
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 121
    .local v2, "handled":Z
    const/4 v3, 0x0

    .line 122
    .local v3, "hungUp":Z
    const/4 v0, 0x0

    .line 123
    .local v0, "UNINTERCEPT_POWERKEY":I
    if-eqz v6, :cond_1

    .line 124
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 127
    :cond_0
    invoke-static {p1}, Landroid/telephony/MzTelephonyManager;->processKeyEvent(I)I

    move-result v5

    .line 128
    .local v5, "proceResult":I
    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_3

    move v2, v7

    .line 129
    :goto_0
    and-int/lit8 v9, v5, 0x10

    if-eqz v9, :cond_4

    move v3, v7

    .line 130
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterceptPowerKeyForTelephony the value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v5    # "proceResult":I
    :cond_1
    if-nez v2, :cond_2

    .line 135
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intercpt_powerkey"

    const/4 v11, -0x3

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 139
    .local v1, "appInterceptPowerkey":I
    if-eqz v1, :cond_2

    .line 140
    const/4 v2, 0x1

    .line 141
    new-instance v4, Landroid/content/Intent;

    const-string v9, "alarmclock.intent.action.POWERKEY_CLICK"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intercpt_powerkey"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    .end local v1    # "appInterceptPowerkey":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    if-nez v2, :cond_5

    :goto_2
    return v7

    .restart local v5    # "proceResult":I
    :cond_3
    move v2, v8

    .line 128
    goto :goto_0

    :cond_4
    move v3, v8

    .line 129
    goto :goto_1

    .end local v5    # "proceResult":I
    :cond_5
    move v7, v8

    .line 150
    goto :goto_2
.end method

.method public InterceptVolumeKeyDownForTelephony(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 516
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    :cond_0
    return-void
.end method

.method public InterceptVolumeKeyUpForTelephony(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 523
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 526
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    :cond_1
    return-void
.end method

.method public PreventVolumeKeyForTelephony()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    if-eqz v1, :cond_0

    .line 533
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 534
    const/4 v0, 0x1

    .line 536
    :cond_0
    return v0
.end method

.method public SetFingerTouchConsumed(Z)V
    .locals 0
    .param p1, "fingerTouchConsumed"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->fingerTouchConsumed:Z

    .line 405
    return-void
.end method

.method public SetHomeKeySleep(Z)V
    .locals 0
    .param p1, "homeKeySleep"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    .line 413
    return-void
.end method

.method public fingerTouchKeyVibrate(IZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 198
    return-void
.end method

.method public handleHomeFlag(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "homeConsumed"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 110
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v1, v1, Landroid/view/MeizuLayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_1
    return v1

    .line 109
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleLongPressOnHeadSetIfNeeded(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 280
    const/16 v1, 0x4f

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectHomeLongVoiceOn(Landroid/content/Context;)V

    .line 289
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public interceptFingerTouchKey(IZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 216
    return-void
.end method

.method public interceptHeadsethook(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public interceptHomeKeyForBackGesture(IZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v4, 0x0

    .line 233
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 234
    if-eqz p2, :cond_1

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 236
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const-wide/16 v2, 0x46

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    goto :goto_1
.end method

.method public interceptHomeKeyLongPress(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    if-eqz p1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isBackGestureKeyValid()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    return v0
.end method

.method public isFingerTouchConsumed()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->fingerTouchConsumed:Z

    return v0
.end method

.method public isHomeKeyDown()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDown:Z

    return v0
.end method

.method public isHomeKeySleep()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    return v0
.end method

.method public isPowerSaveMode()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    return v0
.end method

.method public isPreventBackGestureKey()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    return v0
.end method

.method public isTouchKeyValid()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isTouchValid:Z

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 472
    const-string v6, ""

    .line 473
    .local v6, "impedance":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v11, "/sys/class/switch/h2w/state"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 475
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "isWiredHeadsetOn false, file not exists(no permission to visit the file)."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 511
    :goto_0
    return v9

    .line 478
    :cond_1
    const/4 v0, 0x0

    .line 480
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 482
    .local v8, "temp":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 484
    :goto_1
    if-eqz v8, :cond_2

    .line 485
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 488
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 489
    if-eqz v6, :cond_5

    .line 490
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 491
    .local v5, "iImpedance":I
    if-ne v5, v9, :cond_4

    .line 492
    iget-object v11, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v12, "isWiredHeadsetOn true"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 500
    .end local v5    # "iImpedance":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 501
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "temp":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isWiredHeadsetOn exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v0, :cond_3

    .line 504
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 510
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "isWiredHeadsetOn false end."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 511
    goto :goto_0

    .line 495
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "iImpedance":I
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "temp":Ljava/lang/String;
    :cond_4
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v11, "isWiredHeadsetOn false"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 496
    goto :goto_0

    .line 499
    .end local v5    # "iImpedance":I
    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 509
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 505
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "temp":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 506
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 500
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public onEnablePowerSaveModeSettingChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_current_power_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sendEvent(III)V
    .locals 17
    .param p1, "keycode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I

    .prologue
    .line 219
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    .line 220
    .local v8, "repeatCount":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v12, p3, 0x8

    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v6, p2

    move/from16 v7, p1

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 224
    .local v15, "ev":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 228
    .local v16, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 229
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void

    .line 219
    .end local v8    # "repeatCount":I
    .end local v15    # "ev":Landroid/view/KeyEvent;
    .end local v16    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public setBackGestureKeyValid(Z)V
    .locals 0
    .param p1, "backGestureKey"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 381
    return-void
.end method

.method public setHomeKeyDown(Z)V
    .locals 0
    .param p1, "bHomeKeyDown"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDown:Z

    .line 397
    return-void
.end method

.method public setPreventBackGestureKey(Z)V
    .locals 0
    .param p1, "preventBackGesture"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 389
    return-void
.end method

.method public setTouchValid(Z)V
    .locals 0
    .param p1, "bTouchValid"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isTouchValid:Z

    .line 373
    return-void
.end method
