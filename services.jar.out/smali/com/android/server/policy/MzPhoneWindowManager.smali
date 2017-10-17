.class public Lcom/android/server/policy/MzPhoneWindowManager;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;,
        Lcom/android/server/policy/MzPhoneWindowManager$1;,
        Lcom/android/server/policy/MzPhoneWindowManager$2;,
        Lcom/android/server/policy/MzPhoneWindowManager$3;,
        Lcom/android/server/policy/MzPhoneWindowManager$4;,
        Lcom/android/server/policy/MzPhoneWindowManager$5;
    }
.end annotation


# static fields
.field private static final ACTION_SCENE_CHANGED:Ljava/lang/String; = "SCENE_CHANGED"

.field public static final MOBEVENT_ACTION_HOME:Ljava/lang/String; = "press_home_key"

.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_SCREEN_OFF:Ljava/lang/String; = "3"

.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_VOICE_ON:Ljava/lang/String; = "4"

.field public static final MOBEVENT_ACTION_HOME_MBACK:Ljava/lang/String; = "1"

.field public static final MOBEVENT_ACTION_HOME_PRESS:Ljava/lang/String; = "2"

.field public static final MOBEVENT_ACTION_HOME_SCREEN_ON:Ljava/lang/String; = "1"

.field public static final MOBEVENT_ACTION_HOME_SLIDE_UP:Ljava/lang/String; = "5"

.field public static final MOBEVENT_ACTION_LONG_SCREEN_SHOT:Ljava/lang/String; = "6"

.field public static final MOBEVENT_ACTION_POWER:Ljava/lang/String; = "press_power_key"

.field public static final MOBEVENT_ACTION_POWER_HANGUP:Ljava/lang/String; = "4"

.field public static final MOBEVENT_ACTION_POWER_LONG_PRESS:Ljava/lang/String; = "3"

.field public static final MOBEVENT_ACTION_POWER_SCREEN_OFF:Ljava/lang/String; = "2"

.field public static final MOBEVENT_ACTION_POWER_SCREEN_ON:Ljava/lang/String; = "1"

.field public static final MOBEVENT_ACTION_SCREEN_SHOT:Ljava/lang/String; = "5"

.field public static final MOBEVENT_ACTION_VOLUME:Ljava/lang/String; = "press_volume_key"

.field public static final MOBEVENT_ACTION_VOLUME_ACCEPT_CALL:Ljava/lang/String; = "3"

.field public static final MOBEVENT_ACTION_VOLUME_DOWN:Ljava/lang/String; = "2"

.field public static final MOBEVENT_ACTION_VOLUME_UP:Ljava/lang/String; = "1"

.field public static final MOBEVENT_KEY_TYPE:Ljava/lang/String; = "press_key"

.field public static final MOBEVENT_TAP_TYPE:Ljava/lang/String; = "tap_key"

.field private static final MSG_CONFIRM_REBOOT_SHUTDOWN:I = 0x7

.field public static final MZ_GAME_MODE_ACCELERATE:Ljava/lang/String; = "mz_game_mode_accelerate"

.field public static final MZ_GAME_MODE_DISABLE_MBACK:Ljava/lang/String; = "mz_game_mode_disable_mback"

.field private static final SCENE_GAME:Ljava/lang/String; = "game"

.field private static final SUFFIX_DISABLE:Ljava/lang/String; = "disable"

.field private static final SUFFIX_SOFT:Ljava/lang/String; = "Soft"

.field private static final SUFFIX_STRONG:Ljava/lang/String; = "Strong"

.field private static TAGG:Ljava/lang/String;


# instance fields
.field private final ACTION_SHOW_MEIZU_PAY_PAGE:Ljava/lang/String;

.field private final Back_GESTURE_KEY_CLICK_TIMEOUT:I

.field private final FINGERKEY_HOMEKEY_TIMEOUT:J

.field private final FINGERKEY_LONGPRESS_HOMEKEY_TIMEOUT:J

.field private final MSG_DISABLE_POINTER_LOCATION:I

.field private final MSG_ENABLE_POINTER_LOCATION:I

.field private final MSG_SEND_BACK_KEY:I

.field private final PKG_MEIZU_NFC_PAY:Ljava/lang/String;

.field private final PLAY_TOUCH_HOME_AUDIO:I

.field private TAG:Ljava/lang/String;

.field private final VIBRATOR_TIME_NORMAL:I

.field private final VIBRATOR_TIME_SOFT:I

.field private final VIBRATOR_TIME_STRONG:I

.field private bHomeKeyLongFlag:Z

.field private backGestureKeyValid:Z

.field private final effectType:I

.field private fingerTouchConsumed:Z

.field private homeKeySleep:Z

.field private isTouchValid:Z

.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private final mCancelCameraFeature:Ljava/lang/Runnable;

.field private mDisableInGameMode:Z

.field private mFlymeVersionSettingUp:I

.field private mGameMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHomeKeyDown:Z

.field private mHomeKeyDownTime:J

.field private mHomeKeyUpTime:J

.field private mHomeTime:I

.field private mHomekeyTimeVibrator:[I

.field private final mInterceptHeadsethook:Ljava/lang/Runnable;

.field private final mLaunchVoiceActivity:Ljava/lang/Runnable;

.field private mLockScreen:Z

.field private mPointerLocationMode:I

.field private mPowerSaveMode:Z

.field mReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

.field private mStartCamera:Z

.field private mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mTimeVibrator:I

.field private mVibratorEnable:Z

.field private mVloumeKeyConsumed:Z

.field private final mVolumeUPLongPress:Ljava/lang/Runnable;

.field private preventBackGestureKey:Z

.field private pw:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MzPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->bHomeKeyLongFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mDisableInGameMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameMode:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/MzPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeTime:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mStartCamera:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/MzPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVibratorEnable:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MzPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MzPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/MzPhoneWindowManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorChanged()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzPhoneWindowManager;->dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onFlymeVersionSettingUpChanged()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onGameModeDisableBackChanged()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->playHomeEffect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "MzKeyEvent"

    sput-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAGG:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 6
    .param p1, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string/jumbo v0, "MzPhoneWindowManager"

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->isTouchValid:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->homeKeySleep:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->bHomeKeyLongFlag:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDown:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->fingerTouchConsumed:Z

    .line 84
    iput v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->effectType:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->PLAY_TOUCH_HOME_AUDIO:I

    .line 86
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->MSG_SEND_BACK_KEY:I

    .line 89
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->Back_GESTURE_KEY_CLICK_TIMEOUT:I

    .line 116
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 118
    iput-wide v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 119
    iput-wide v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 120
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->FINGERKEY_HOMEKEY_TIMEOUT:J

    .line 121
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->FINGERKEY_LONGPRESS_HOMEKEY_TIMEOUT:J

    .line 129
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->VIBRATOR_TIME_NORMAL:I

    .line 130
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->VIBRATOR_TIME_SOFT:I

    .line 131
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->VIBRATOR_TIME_STRONG:I

    .line 137
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameMode:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mDisableInGameMode:Z

    .line 141
    iput v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mFlymeVersionSettingUp:I

    .line 142
    const-string/jumbo v0, "com.meizu.mznfcpay"

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->PKG_MEIZU_NFC_PAY:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "com.meizu.mznfcpay.SHOW_PAY_PAGE_ACTION"

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->ACTION_SHOW_MEIZU_PAY_PAGE:Ljava/lang/String;

    .line 296
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    .line 513
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzPhoneWindowManager$2;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    .line 765
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzPhoneWindowManager$3;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    .line 782
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$4;

    const-string/jumbo v1, "SCENE_CHANGED"

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MzPhoneWindowManager$4;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .line 835
    iput v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPointerLocationMode:I

    .line 836
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->MSG_ENABLE_POINTER_LOCATION:I

    .line 837
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->MSG_DISABLE_POINTER_LOCATION:I

    .line 896
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mStartCamera:Z

    .line 897
    iput v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeTime:I

    .line 898
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLockScreen:Z

    .line 905
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzPhoneWindowManager$5;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mCancelCameraFeature:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    .line 147
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onEnablePowerSaveModeSettingChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->registerPowerSaveModeObserver()V

    .line 151
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVibratorEnable:Z

    .line 152
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorChanged()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    .line 153
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->registerTimeVibratorObserver()V

    .line 155
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onFlymeVersionSettingUpChanged()V

    .line 156
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->registerSettingsObserver()V

    .line 157
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onGameModeDisableBackChanged()V

    .line 145
    return-void
.end method

.method public static checkProxyValid(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 724
    return-void
.end method

.method public static collectHomeLongScreenOff(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 624
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "3"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public static collectHomeLongVoiceOn(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 632
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 633
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "4"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public static collectHomeScreenOn(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 615
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 616
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public static collectInterceptLongScreenShot(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 648
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 649
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "6"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public static collectInterceptScreenShot(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 641
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "5"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public static collectPowerHangUp(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 688
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 689
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "4"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public static collectPowerLongPress(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 696
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 697
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "3"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public static collectPowerScreenOff(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 680
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 681
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "2"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public static collectPowerScreenOn(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 673
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public static collectPressHomeKey(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 656
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 657
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "2"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public static collectSlideUpHomeKey(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 608
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "5"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public static collectTouchHomeKey(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 665
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "tap_key"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public static collectVolumeAcceptCall(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 704
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 705
    const-string/jumbo v0, "press_volume_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "3"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public static collectVolumeDown(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 720
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 721
    const-string/jumbo v0, "press_volume_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "2"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public static collectVolumeUp(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    invoke-static {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 713
    const-string/jumbo v0, "press_volume_key"

    const-string/jumbo v1, "press_key"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method private disablePointerLocation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 881
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v2, :cond_0

    .line 882
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 884
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 886
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .line 887
    .local v1, "outerWindowManager":Landroid/view/WindowManagerImpl;
    iput-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 880
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "outerWindowManager":Landroid/view/WindowManagerImpl;
    :cond_0
    return-void
.end method

.method private dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 488
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "back key inject InputEvent successed---! --> action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", times is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 483
    :cond_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "back key inject InputEvent failed---!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 851
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v3, :cond_1

    .line 852
    new-instance v3, Lcom/android/internal/widget/PointerLocationView;

    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 853
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 855
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSubPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 857
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 859
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .line 861
    .local v1, "outerWindowManager":Landroid/view/WindowManagerImpl;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 864
    .local v2, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7df

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 865
    const/16 v3, 0x518

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 869
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 871
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 874
    :cond_0
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 875
    const-string/jumbo v3, "PointerLocation"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 876
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 850
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "outerWindowManager":Landroid/view/WindowManagerImpl;
    .end local v2    # "wmParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method private initTimeVibratorChanged()I
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 453
    const-string/jumbo v1, "homekey_feedback_intensity"

    const/4 v2, -0x2

    .line 452
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->performHapticTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initTimeVibratorEnable()Z
    .locals 5

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "homekey_feedback_intensity":Ljava/lang/String;
    const/4 v1, 0x1

    .line 460
    .local v1, "vibratorenable":Z
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 461
    const-string/jumbo v3, "homekey_feedback_intensity"

    const/4 v4, -0x2

    .line 460
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "homekey_feedback_intensity":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 463
    const-string/jumbo v2, "disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 463
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPhoneIdle()Z
    .locals 5

    .prologue
    .line 239
    const/4 v0, 0x1

    .line 240
    .local v0, "isPhoneIdle":Z
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 241
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the phone idel is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return v0

    .line 242
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static onEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 727
    return-void
.end method

.method private onFlymeVersionSettingUpChanged()V
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1028
    const-string/jumbo v1, "flyme_version_setting_up"

    const/4 v2, 0x0

    .line 1026
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mFlymeVersionSettingUp:I

    .line 1025
    return-void
.end method

.method private onGameModeDisableBackChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1052
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1053
    const-string/jumbo v3, "mz_game_mode_disable_mback"

    .line 1052
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1053
    const/4 v3, 0x1

    .line 1052
    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1055
    .local v0, "disableBack":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameMode:Z

    if-eqz v2, :cond_1

    .end local v0    # "disableBack":Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mDisableInGameMode:Z

    .line 1051
    return-void

    .line 1052
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disableBack":Z
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1055
    goto :goto_1
.end method

.method private performHapticTime(Ljava/lang/String;)I
    .locals 2
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$array;->config_homeKeyfeedbackVibePattern:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    return v0

    .line 441
    :cond_1
    const-string/jumbo v0, "Soft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    .line 447
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    return v0

    .line 443
    :cond_3
    const-string/jumbo v0, "Strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    goto :goto_0
.end method

.method private playHomeEffect()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method private registerPowerSaveModeObserver()V
    .locals 4

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "mz_current_power_mode"

    .line 423
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 425
    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager$6;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager$6;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V

    .line 424
    const/4 v3, 0x0

    .line 423
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 421
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1032
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1034
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "flyme_version_setting_up"

    .line 1033
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1035
    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager$8;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager$8;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V

    .line 1033
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1042
    const-string/jumbo v1, "mz_game_mode_disable_mback"

    .line 1041
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1043
    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager$9;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager$9;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V

    .line 1041
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1031
    return-void
.end method

.method private registerTimeVibratorObserver()V
    .locals 4

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 472
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "homekey_feedback_intensity"

    .line 471
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 473
    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager$7;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager$7;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V

    .line 472
    const/4 v3, 0x1

    .line 471
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 469
    return-void
.end method

.method private startVoiceActivity(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isFlymeVersionSettingUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "flyme version setting , not start voice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v4

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    return v4

    .line 261
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MzPhoneWindowManager alrady launch voice assistant!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    const-string/jumbo v2, "android.intent.action.VOICE_ASSIST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    const-string/jumbo v2, "meizu.intent.extra.LONGPRESSKEY"

    const-string/jumbo v3, "meizu.intent.extra.VOICEASSISTANT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 280
    const/4 v2, 0x1

    return v2

    .line 269
    :cond_2
    const-string/jumbo v2, "com.meizu.voiceassistant"

    .line 270
    const-string/jumbo v3, "com.meizu.voiceassistant.MainActivity"

    .line 269
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    return v4
.end method


# virtual methods
.method public HandleLongPressOnHome(ILandroid/view/KeyEvent;)I
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    return v6

    .line 357
    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    .line 358
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 359
    .local v1, "action":I
    const/4 v0, 0x0

    .line 361
    .local v0, "HOEM_LOGPRESS_SCREENOF":I
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 362
    const-string/jumbo v4, "mz_intelligent_voice"

    .line 364
    const/4 v5, -0x3

    .line 360
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 365
    .local v2, "isLongHomePressEnable":I
    if-nez v2, :cond_2

    .line 366
    iput-boolean v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->homeKeySleep:Z

    .line 367
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 368
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/policy/MzPhoneWindowManager;->collectHomeLongScreenOff(Landroid/content/Context;)V

    .line 384
    :cond_1
    :goto_0
    return v7

    .line 370
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    .line 376
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/policy/MzPhoneWindowManager;->collectHomeLongVoiceOn(Landroid/content/Context;)V

    .line 377
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v7, v3, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    goto :goto_0

    .line 386
    .end local v0    # "HOEM_LOGPRESS_SCREENOF":I
    .end local v1    # "action":I
    .end local v2    # "isLongHomePressEnable":I
    :cond_3
    return v6
.end method

.method public InterceptPowerKeyForTelephony(ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 202
    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 203
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 204
    .local v2, "handled":Z
    const/4 v3, 0x0

    .line 205
    .local v3, "hungUp":Z
    const/4 v0, 0x0

    .line 206
    .local v0, "UNINTERCEPT_POWERKEY":I
    if-eqz v6, :cond_1

    .line 207
    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 208
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v8

    .line 207
    if-eqz v8, :cond_1

    .line 210
    :cond_0
    invoke-static {p1}, Landroid/telephony/MzTelephonyManager;->processKeyEvent(I)I

    move-result v5

    .line 211
    .local v5, "proceResult":I
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    .line 212
    :goto_0
    and-int/lit8 v8, v5, 0x10

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    .line 213
    :goto_1
    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "InterceptPowerKeyForTelephony the value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/policy/MzPhoneWindowManager;->collectPowerHangUp(Landroid/content/Context;)V

    .line 220
    .end local v5    # "proceResult":I
    :cond_1
    if-nez v2, :cond_2

    .line 222
    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 223
    const-string/jumbo v9, "intercpt_powerkey"

    .line 221
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, "appInterceptPowerkey":I
    if-eqz v1, :cond_2

    .line 225
    const/4 v2, 0x1

    .line 226
    new-instance v4, Landroid/content/Intent;

    .line 227
    const-string/jumbo v8, "alarmclock.intent.action.POWERKEY_CLICK"

    .line 226
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v4, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 230
    const-string/jumbo v9, "intercpt_powerkey"

    .line 229
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    .end local v1    # "appInterceptPowerkey":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v2, :cond_5

    :goto_2
    return v7

    .line 211
    .restart local v5    # "proceResult":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 212
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 234
    .end local v5    # "proceResult":I
    :cond_5
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public InterceptVolumeKeyDownForTelephony(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 739
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 741
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "InterceptVolumeKeyDownForTelephony    mVolumeUPLongPress!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    return-void
.end method

.method public InterceptVolumeKeyUpForTelephony(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 748
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 749
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 752
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 747
    :cond_1
    return-void
.end method

.method public PreventVolumeKeyForTelephony()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 758
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    if-eqz v0, :cond_0

    .line 759
    iput-boolean v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 760
    const/4 v0, 0x1

    return v0

    .line 762
    :cond_0
    return v1
.end method

.method public SetFingerTouchConsumed(Z)V
    .locals 0
    .param p1, "fingerTouchConsumed"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->fingerTouchConsumed:Z

    .line 562
    return-void
.end method

.method public SetHomeDownTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 583
    iput-wide p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 582
    return-void
.end method

.method public SetHomeKeySleep(Z)V
    .locals 0
    .param p1, "homeKeySleep"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->homeKeySleep:Z

    .line 570
    return-void
.end method

.method public SetHomeUpTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 579
    iput-wide p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 578
    return-void
.end method

.method SubDisplayPhonewindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 841
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 842
    const-string/jumbo v2, "sub_pointer_location"

    const/4 v3, -0x2

    .line 841
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 843
    .local v0, "pointerLocation":I
    iget v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPointerLocationMode:I

    if-eq v1, v0, :cond_0

    .line 844
    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPointerLocationMode:I

    .line 845
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 846
    const/4 v1, 0x1

    .line 845
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 840
    :cond_0
    return-void

    .line 846
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public fingerTouchKeyVibrate(IZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 314
    return-void
.end method

.method public handleHomeFlag(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "homeConsumed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 193
    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v1, v1, Landroid/view/MeizuLayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 195
    const/4 v1, 0x1

    return v1

    .line 192
    :cond_0
    const/4 v0, 0x0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 197
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return v2
.end method

.method public handleLongPressOnHeadSetIfNeeded(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 390
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 391
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "The phone is incall!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v2

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "The phone is idle!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    .line 404
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->collectHomeLongVoiceOn(Landroid/content/Context;)V

    .line 405
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "The Device Not Provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    return v2
.end method

.method handleShowGlobalActionsConfirm(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->getInstance(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/MzGlobalActions;->showGlobalActionsDialog(ZI)V

    .line 187
    return-void
.end method

.method public interceptFingerTouchKey(IZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 317
    return-void
.end method

.method public interceptHeadsethook(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    .line 504
    if-eqz p1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "interceptHeadsethook: add mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "interceptHeadsethook: remove mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public interceptHomeKeyForBackGesture(IZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v4, 0x0

    .line 335
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 336
    if-eqz p2, :cond_1

    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 341
    iput-boolean v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-wide/16 v2, 0x46

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->backGestureKeyValid:Z

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-boolean v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->backGestureKeyValid:Z

    goto :goto_1
.end method

.method public interceptHomeKeyLongPress(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    if-eqz p1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "interceptHomeKeyLongPress: add mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "interceptHomeKeyLongPress: remove mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isBackGestureKeyValid()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->backGestureKeyValid:Z

    return v0
.end method

.method isChildMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 892
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "children_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isFingerKeyTime(J)Z
    .locals 7
    .param p1, "time"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 592
    iget-wide v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDownTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 593
    iput-wide v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 594
    iput-wide v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 595
    const/4 v0, 0x0

    return v0

    .line 597
    :cond_0
    iput-wide v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 598
    iput-wide v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method public isFingerTouchConsumed()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->fingerTouchConsumed:Z

    return v0
.end method

.method public isFlymeVersionSettingUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1021
    iget v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mFlymeVersionSettingUp:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGameMode()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameMode:Z

    return v0
.end method

.method public isHomeKeyDown()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDown:Z

    return v0
.end method

.method public isHomeKeySleep()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->homeKeySleep:Z

    return v0
.end method

.method public isPowerSaveMode()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    return v0
.end method

.method public isPreventBackGestureKey()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->preventBackGestureKey:Z

    return v0
.end method

.method isStartDClickFeature()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 928
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isFlymeVersionSettingUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "flyme version setting "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return v3

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 933
    const-string/jumbo v2, "home_double_click"

    .line 932
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 935
    .local v0, "res":I
    if-ne v0, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mStartCamera:Z

    if-eqz v1, :cond_1

    .line 936
    const/4 v1, 0x1

    return v1

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mCancelCameraFeature:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 940
    return v3
.end method

.method isSupportDClickFeature()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isFlymeVersionSettingUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "flyme version setting "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return v3

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1011
    const-string/jumbo v2, "home_double_click"

    .line 1010
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1012
    .local v0, "res":I
    if-ne v0, v4, :cond_1

    .line 1013
    const/4 v1, 0x1

    return v1

    .line 1016
    :cond_1
    return v3
.end method

.method public isTouchKeyValid()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->isTouchValid:Z

    return v0
.end method

.method lockScreenStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 1001
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLockScreen:Z

    .line 1000
    return-void
.end method

.method public onEnablePowerSaveModeSettingChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 417
    const-string/jumbo v2, "mz_current_power_mode"

    const/4 v3, -0x2

    .line 416
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 417
    const/4 v2, 0x3

    .line 416
    if-ne v1, v2, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 416
    :cond_0
    return v0
.end method

.method public sendEvent(III)V
    .locals 17
    .param p1, "keycode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I

    .prologue
    .line 321
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    .line 322
    .local v8, "repeatCount":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 324
    or-int/lit8 v12, p3, 0x8

    .line 323
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 325
    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v6, p2

    move/from16 v7, p1

    .line 322
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 326
    .local v15, "ev":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 330
    .local v16, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 331
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 320
    return-void

    .line 321
    .end local v8    # "repeatCount":I
    .end local v15    # "ev":Landroid/view/KeyEvent;
    .end local v16    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "repeatCount":I
    goto :goto_0
.end method

.method public setBackGestureKeyValid(Z)V
    .locals 0
    .param p1, "backGestureKey"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 538
    return-void
.end method

.method public setHomeKeyDown(Z)V
    .locals 0
    .param p1, "bHomeKeyDown"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeKeyDown:Z

    .line 554
    return-void
.end method

.method public setPreventBackGestureKey(Z)V
    .locals 0
    .param p1, "preventBackGesture"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 546
    return-void
.end method

.method setScreenoffHomeStatus()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 900
    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mStartCamera:Z

    .line 901
    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeTime:I

    .line 902
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mCancelCameraFeature:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 899
    return-void
.end method

.method public setTouchValid(Z)V
    .locals 0
    .param p1, "bTouchValid"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->isTouchValid:Z

    .line 530
    return-void
.end method

.method public showGlobalActionsConfirm(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method

.method startCameraActivity(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 944
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 945
    return v9

    .line 948
    :cond_0
    const-string/jumbo v7, "activity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 949
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 950
    .local v6, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "runinfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 951
    .local v4, "runinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 952
    .local v3, "pn":Ljava/lang/String;
    const-string/jumbo v7, "com.meizu.media.camera"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_1

    .line 953
    return v9

    .line 958
    .end local v3    # "pn":Ljava/lang/String;
    .end local v4    # "runinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "MzPhoneWindowManager alrady launch camera!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 961
    const/4 v2, 0x0

    .line 962
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "access_control"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmeizu/security/AccessControlManager;

    iput-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 963
    iget-boolean v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLockScreen:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    const-string/jumbo v8, "com.meizu.media.camera"

    invoke-virtual {v7, v8}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 964
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v7, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 970
    const/16 v8, 0x10

    .line 969
    invoke-virtual {v7, v8}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 971
    iget-object v7, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 972
    const/16 v8, 0x80

    .line 971
    invoke-virtual {v7, v8}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 973
    iget-object v7, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 974
    const/16 v8, 0x20

    .line 973
    invoke-virtual {v7, v8}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 975
    const/high16 v7, 0x14800000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 981
    const-string/jumbo v7, "com.meizu.media.camera"

    const-string/jumbo v8, "com.meizu.media.camera.CameraLauncher"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v2, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    iget-boolean v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLockScreen:Z

    if-eqz v7, :cond_4

    .line 991
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "interceptKey send broadcast!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "meizu.intent.action.ACTION_SHOW_LOCK"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 994
    iput-boolean v9, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLockScreen:Z

    .line 997
    :cond_4
    return v10

    .line 966
    .local v2, "intent":Landroid/content/Intent;
    :cond_5
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "meizu.intent.action.DOUBLE_CLICK_OPEN_CAMERA"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 984
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 985
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 986
    return v9
.end method

.method startDClickFeature()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 914
    iget v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeTime:I

    if-ne v0, v1, :cond_0

    .line 915
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeTime:I

    .line 916
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    iput-boolean v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLockScreen:Z

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->pw:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->startCameraActivity(Landroid/content/Context;)Z

    .line 922
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mCancelCameraFeature:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 923
    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mStartCamera:Z

    .line 924
    iput v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomeTime:I

    .line 913
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 831
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, v1}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 830
    return-void
.end method

.method public wakeUpSystemBySubGesture(ZZ)Z
    .locals 1
    .param p1, "down"    # Z
    .param p2, "isScreenOn"    # Z

    .prologue
    .line 775
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 779
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 776
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
