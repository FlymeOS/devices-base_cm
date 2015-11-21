.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_ANALOG_AUDIO_DOCK_PLUG:Ljava/lang/String; = "android.media.action.ANALOG_AUDIO_DOCK_PLUG"

.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_DIGITAL_AUDIO_DOCK_PLUG:Ljava/lang/String; = "android.media.action.DIGITAL_AUDIO_DOCK_PLUG"

.field public static final ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ACTION_USB_AUDIO_ACCESSORY_PLUG:Ljava/lang/String; = "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

.field public static final ACTION_USB_AUDIO_DEVICE_PLUG:Ljava/lang/String; = "android.media.action.USB_AUDIO_DEVICE_PLUG"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final AUDIOFOCUS_FLAGS_APPS:I = 0x3

.field public static final AUDIOFOCUS_FLAGS_SYSTEM:I = 0x7

.field public static final AUDIOFOCUS_FLAG_DELAY_OK:I = 0x1

.field public static final AUDIOFOCUS_FLAG_LOCK:I = 0x4

.field public static final AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS:I = 0x2

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_DELAYED:I = 0x2

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field static final AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final AUDIO_SESSION_ID_GENERATE:I = 0x0

.field public static final DEFAULT_STREAM_VOLUME:[I

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final ERROR_NO_INIT:I = -0x5

.field public static final ERROR_PERMISSION_DENIED:I = -0x4

.field public static final EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final EXTRA_AVAILABLITY_CHANGED_VALUE:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

.field public static final EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

.field public static final EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final EXTRA_FOCUS_CHANGED_VALUE:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_VALUE"

.field public static final EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final EXTRA_PREV_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40

.field public static final FLAG_FIXED_VOLUME:I = 0x20

.field public static final FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_INVALID:I = 0x9

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MASTER_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_VOLUME_CHANGED_ACTION"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0xa

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final RCC_CHANGED_ACTION:Ljava/lang/String; = "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_INCALL_MUSIC:I = 0xa

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field static sAudioPatchesCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field static sAudioPortGeneration:Ljava/lang/Integer;

.field static sAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private final mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mICallBack:Landroid/os/IBinder;

.field private mOriginalContext:Landroid/content/Context;

.field private final mToken:Landroid/os/Binder;

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private final mUseVolumeKeySounds:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 67
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/media/AudioPortEventHandler;

    invoke-direct {v0}, Landroid/media/AudioPortEventHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    .line 416
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    .line 551
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FLAG_SHOW_UI"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "FLAG_ALLOW_RINGER_MODES"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FLAG_PLAY_SOUND"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FLAG_REMOVE_SOUND_AND_VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FLAG_VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FLAG_FIXED_VOLUME"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FLAG_BLUETOOTH_ABS_VOLUME"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FLAG_SHOW_SILENT_HINT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FLAG_HDMI_SYSTEM_AUDIO_VOLUME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FLAG_ACTIVE_MEDIA_ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FLAG_SHOW_UI_WARNINGS"

    aput-object v2, v0, v1

    const-string v1, "FLAG_SHOW_VIBRATE_HINT"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    .line 3773
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 3774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 3775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    return-void

    .line 416
    :array_0
    .array-data 4
        0x4
        0x7
        0x5
        0xb
        0x6
        0x5
        0x7
        0x7
        0xb
        0xb
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mToken:Landroid/os/Binder;

    .line 2302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 2308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 2317
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    .line 2358
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 3120
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 688
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 689
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    .line 691
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    .line 693
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    .line 695
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 696
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    return-object v0
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2311
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # I

    .prologue
    const/16 v4, 0x2c

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 570
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 571
    .local v0, "flag":I
    and-int v3, p0, v0

    if-eqz v3, :cond_1

    .line 572
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 573
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    :cond_0
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr p0, v3

    .line 569
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v0    # "flag":I
    :cond_2
    if-eqz p0, :cond_4

    .line 580
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 581
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    :cond_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 702
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 705
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 2368
    if-nez p1, :cond_0

    .line 2369
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2371
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 719
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 720
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 724
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 722
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 723
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 724
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_0
.end method

.method public static isInputDevice(I)Z
    .locals 2
    .param p0, "device"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 3331
    and-int v0, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOutputDevice(I)Z
    .locals 1
    .param p0, "device"    # I

    .prologue
    .line 3322
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidRingerMode(I)Z
    .locals 5
    .param p0, "ringerMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1017
    if-ltz p0, :cond_0

    const/4 v3, 0x2

    if-le p0, v3, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return v2

    .line 1020
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1022
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isValidRingerMode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private querySoundEffectsEnabled(I)Z
    .locals 3
    .param p1, "user"    # I

    .prologue
    const/4 v0, 0x0

    .line 2188
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static resetAudioPortGeneration()I
    .locals 3

    .prologue
    .line 3779
    sget-object v2, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v2

    .line 3780
    :try_start_0
    sget-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3781
    .local v0, "generation":I
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 3782
    monitor-exit v2

    .line 3783
    return v0

    .line 3782
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 709
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 710
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    iput-object p1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3787
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    sget-object v16, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v16

    .line 3789
    :try_start_0
    sget-object v15, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_c

    .line 3790
    const/4 v15, 0x1

    new-array v11, v15, [I

    .line 3791
    .local v11, "patchGeneration":[I
    const/4 v15, 0x1

    new-array v13, v15, [I

    .line 3793
    .local v13, "portGeneration":[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3794
    .local v10, "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3797
    .local v9, "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 3798
    invoke-static {v10, v13}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v14

    .line 3799
    .local v14, "status":I
    if-eqz v14, :cond_1

    .line 3800
    sget-object v15, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "updateAudioPortCache: listAudioPorts failed"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    monitor-exit v16

    .line 3858
    .end local v9    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v10    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v11    # "patchGeneration":[I
    .end local v13    # "portGeneration":[I
    .end local v14    # "status":I
    :goto_0
    return v14

    .line 3803
    .restart local v9    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .restart local v10    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .restart local v11    # "patchGeneration":[I
    .restart local v13    # "portGeneration":[I
    .restart local v14    # "status":I
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3804
    invoke-static {v9, v11}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v14

    .line 3805
    if-eqz v14, :cond_2

    .line 3806
    sget-object v15, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "updateAudioPortCache: listAudioPatches failed"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    monitor-exit v16

    goto :goto_0

    .line 3857
    .end local v9    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v10    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v11    # "patchGeneration":[I
    .end local v13    # "portGeneration":[I
    .end local v14    # "status":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 3809
    .restart local v9    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .restart local v10    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .restart local v11    # "patchGeneration":[I
    .restart local v13    # "portGeneration":[I
    .restart local v14    # "status":I
    :cond_2
    const/4 v15, 0x0

    :try_start_1
    aget v15, v11, v15

    const/16 v17, 0x0

    aget v17, v13, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 3811
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_5

    .line 3812
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPatch;

    invoke-virtual {v15}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v15

    array-length v15, v15

    if-ge v6, v15, :cond_3

    .line 3813
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPatch;

    invoke-virtual {v15}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-static {v15, v10}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v12

    .line 3815
    .local v12, "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPatch;

    invoke-virtual {v15}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v15

    aput-object v12, v15, v6

    .line 3812
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3817
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPatch;

    invoke-virtual {v15}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v15

    array-length v15, v15

    if-ge v6, v15, :cond_4

    .line 3818
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPatch;

    invoke-virtual {v15}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-static {v15, v10}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v12

    .line 3820
    .restart local v12    # "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPatch;

    invoke-virtual {v15}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v15

    aput-object v12, v15, v6

    .line 3817
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3811
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3823
    .end local v6    # "j":I
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3824
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    .line 3825
    .local v8, "newPatch":Landroid/media/AudioPatch;
    const/4 v2, 0x0

    .line 3826
    .local v2, "hasInvalidPort":Z
    invoke-virtual {v8}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v1

    .local v1, "arr$":[Landroid/media/AudioPortConfig;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v7, :cond_7

    aget-object v12, v1, v5

    .line 3827
    .restart local v12    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v12, :cond_9

    .line 3828
    const/4 v2, 0x1

    .line 3832
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_7
    invoke-virtual {v8}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v1

    array-length v7, v1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_8

    aget-object v12, v1, v5

    .line 3833
    .restart local v12    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v12, :cond_a

    .line 3834
    const/4 v2, 0x1

    .line 3838
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_8
    if-eqz v2, :cond_6

    .line 3841
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 3826
    .restart local v12    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3832
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 3845
    .end local v1    # "arr$":[Landroid/media/AudioPortConfig;
    .end local v2    # "hasInvalidPort":Z
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "newPatch":Landroid/media/AudioPatch;
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_b
    sput-object v10, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 3846
    sput-object v9, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    .line 3847
    const/4 v15, 0x0

    aget v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sput-object v15, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 3849
    .end local v3    # "i":I
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    .end local v9    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v10    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v11    # "patchGeneration":[I
    .end local v13    # "portGeneration":[I
    .end local v14    # "status":I
    :cond_c
    if-eqz p0, :cond_d

    .line 3850
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    .line 3851
    sget-object v15, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3853
    :cond_d
    if-eqz p1, :cond_e

    .line 3854
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 3855
    sget-object v15, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3857
    :cond_e
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3858
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method static updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .locals 8
    .param p0, "portCfg"    # Landroid/media/AudioPortConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    .prologue
    .line 3862
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v3

    .line 3864
    .local v3, "port":Landroid/media/AudioPort;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3867
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPort;

    invoke-virtual {v4}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3868
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "port":Landroid/media/AudioPort;
    check-cast v3, Landroid/media/AudioPort;

    .line 3872
    .restart local v3    # "port":Landroid/media/AudioPort;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 3874
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePortConfig port not found for handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioHandle;->id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    const/4 v4, 0x0

    .line 3885
    :goto_1
    return-object v4

    .line 3864
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3877
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v1

    .line 3878
    .local v1, "gainCfg":Landroid/media/AudioGainConfig;
    if-eqz v1, :cond_3

    .line 3879
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->index()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    move-result-object v0

    .line 3880
    .local v0, "gain":Landroid/media/AudioGain;
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->mode()I

    move-result v4

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->channelMask()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->values()[I

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v1

    .line 3885
    .end local v0    # "gain":Landroid/media/AudioGain;
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v5

    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->format()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 2655
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 2667
    const/4 v2, 0x0

    .line 2668
    .local v2, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2669
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2671
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, p2}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2676
    :goto_0
    return v2

    .line 2673
    :catch_0
    move-exception v0

    .line 2674
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t call abandonAudioFocus() on AudioService:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abandonAudioFocusForCall()V
    .locals 5

    .prologue
    .line 2640
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2642
    .local v1, "service":Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2647
    :goto_0
    return-void

    .line 2644
    :catch_0
    move-exception v0

    .line 2645
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t call abandonAudioFocusForCall() on AudioService:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustMasterVolume(II)V
    .locals 4
    .param p1, "steps"    # I
    .param p2, "flags"    # I

    .prologue
    .line 983
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 985
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :goto_0
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 888
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 890
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 891
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 900
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 958
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 960
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v3, :cond_0

    .line 961
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p3, v3}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 971
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    .line 966
    .local v1, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v1, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 968
    .end local v1    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in adjustSuggestedStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustVolume(II)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 922
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 924
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v3, :cond_0

    .line 925
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 935
    :goto_0
    return-void

    .line 928
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    .line 930
    .local v1, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 932
    .end local v1    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in adjustVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 3109
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3111
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    :goto_0
    return-void

    .line 3112
    :catch_0
    move-exception v0

    .line 3113
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in avrcpSupportsAbsoluteVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .locals 1
    .param p1, "patch"    # [Landroid/media/AudioPatch;
    .param p2, "sources"    # [Landroid/media/AudioPortConfig;
    .param p3, "sinks"    # [Landroid/media/AudioPortConfig;

    .prologue
    .line 3685
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v0

    return v0
.end method

.method public disableSafeMediaVolume()V
    .locals 3

    .prologue
    .line 3535
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->disableSafeMediaVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3539
    :goto_0
    return-void

    .line 3536
    :catch_0
    move-exception v0

    .line 3537
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error disabling safe media volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 751
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 752
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 753
    return-void
.end method

.method public forceVolumeControlStream(I)V
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1347
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 1356
    :goto_0
    return-void

    .line 1350
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1352
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in forceVolumeControlStream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generateAudioSessionId()I
    .locals 3

    .prologue
    .line 1968
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 1969
    .local v0, "session":I
    if-lez v0, :cond_0

    .line 1973
    .end local v0    # "session":I
    :goto_0
    return v0

    .line 1972
    .restart local v0    # "session":I
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Failure to generate a new audio session ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDevicesForStream(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 3380
    packed-switch p1, :pswitch_data_0

    .line 3390
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3388
    :pswitch_1
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    goto :goto_0

    .line 3380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLastAudibleMasterVolume()I
    .locals 4

    .prologue
    .line 1195
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1197
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1200
    :goto_0
    return v2

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1078
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1080
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 1081
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I

    move-result v2

    .line 1087
    :goto_0
    return v2

    .line 1083
    :cond_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMasterMaxVolume()I
    .locals 4

    .prologue
    .line 1164
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1166
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1169
    :goto_0
    return v2

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMasterStreamType()I
    .locals 4

    .prologue
    .line 1098
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1100
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterStreamType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1103
    :goto_0
    return v2

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterStreamType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getMasterVolume()I
    .locals 4

    .prologue
    .line 1180
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1182
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1185
    :goto_0
    return v2

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 1804
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1806
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1809
    :goto_0
    return v2

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1809
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getOutputLatency(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 3486
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result v0

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 2024
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3466
    const-string v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3467
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v1

    .line 3468
    .local v1, "outputSampleRate":I
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3474
    .end local v1    # "outputSampleRate":I
    :cond_0
    :goto_0
    return-object v2

    .line 3469
    :cond_1
    const-string v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3470
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result v0

    .line 3471
    .local v0, "outputFramesPerBuffer":I
    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 4

    .prologue
    .line 3065
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3067
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getRemoteControlClientNowPlayingEntries()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3071
    :goto_0
    return-void

    .line 3068
    :catch_0
    move-exception v0

    .line 3069
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRemoteControlClientNowPlayingEntries()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRingerMode()I
    .locals 4

    .prologue
    .line 999
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1001
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeExternal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1004
    :goto_0
    return v2

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getRingerModeInternal()I
    .locals 3

    .prologue
    .line 3559
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeInternal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3562
    :goto_0
    return v1

    .line 3560
    :catch_0
    move-exception v0

    .line 3561
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling getRingerModeInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3562
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 2

    .prologue
    .line 3437
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3439
    :goto_0
    return-object v1

    .line 3438
    :catch_0
    move-exception v0

    .line 3439
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRouting(I)I
    .locals 1
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1913
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1037
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1039
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 1040
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I

    move-result v2

    .line 1046
    :goto_0
    return v2

    .line 1042
    :cond_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1059
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1061
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 1062
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I

    move-result v2

    .line 1068
    :goto_0
    return v2

    .line 1064
    :cond_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVibrateSetting(I)I
    .locals 4
    .param p1, "vibrateType"    # I

    .prologue
    .line 1405
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1407
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1410
    :goto_0
    return v2

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleKeyDown(Landroid/view/KeyEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 785
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 786
    .local v1, "keyCode":I
    sparse-switch v1, :sswitch_data_0

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 793
    :sswitch_0
    const/16 v0, 0x11

    .line 795
    .local v0, "flags":I
    iget-boolean v4, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v4, :cond_2

    .line 796
    if-ne v1, v5, :cond_1

    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 802
    :cond_2
    if-ne v1, v5, :cond_3

    :goto_2
    invoke-virtual {p0, v2, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    .line 811
    .end local v0    # "flags":I
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 812
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 786
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleKeyUp(Landroid/view/KeyEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/4 v3, 0x0

    .line 823
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 824
    .local v1, "keyCode":I
    sparse-switch v1, :sswitch_data_0

    .line 849
    :goto_0
    return-void

    .line 831
    :sswitch_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    if-eqz v2, :cond_0

    .line 832
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_1

    .line 833
    const/4 v2, 0x4

    invoke-virtual {p0, v3, v2}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 842
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_0

    .line 835
    :cond_1
    const/4 v0, 0x4

    .line 836
    .local v0, "flags":I
    invoke-virtual {p0, v3, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_1

    .line 845
    .end local v0    # "flags":I
    :sswitch_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 824
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public isAudioFocusExclusive()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1942
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1944
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 1947
    :cond_0
    :goto_0
    return v2

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isAudioFocusExclusive()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 1707
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1709
    const/4 v0, 0x0

    .line 1711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 2

    .prologue
    .line 1556
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 4

    .prologue
    .line 1683
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1685
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1688
    :goto_0
    return v2

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 3

    .prologue
    .line 3590
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3593
    :goto_0
    return v1

    .line 3591
    :catch_0
    move-exception v0

    .line 3592
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error querying system audio mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3593
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMasterMute()Z
    .locals 4

    .prologue
    .line 1330
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1332
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isMasterMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1335
    :goto_0
    return v2

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 1769
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .locals 2

    .prologue
    .line 1922
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isMusicActiveRemotely()Z
    .locals 2

    .prologue
    .line 1932
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    return v0
.end method

.method public isSilentMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3132
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 3133
    .local v0, "ringerMode":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 3136
    .local v1, "silentMode":Z
    :cond_0
    :goto_0
    return v1

    .line 3133
    .end local v1    # "silentMode":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    .prologue
    .line 1465
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1467
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1470
    :goto_0
    return v2

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3522
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3525
    :goto_0
    return v1

    .line 3523
    :catch_0
    move-exception v0

    .line 3524
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling isStreamAffectedByRingerMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3525
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1292
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1294
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1297
    :goto_0
    return v2

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVolumeFixed()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 2

    .prologue
    .line 1735
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    const/4 v0, 0x0

    .line 1741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public listAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3646
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3647
    .local v1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    .line 3648
    .local v2, "status":I
    if-nez v2, :cond_1

    .line 3649
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3650
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3651
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/media/AudioDevicePort;

    if-eqz v3, :cond_0

    .line 3652
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3650
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3656
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public listAudioPatches(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3709
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public listAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3637
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public loadSoundEffects()V
    .locals 5

    .prologue
    .line 2198
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2200
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    :goto_0
    return-void

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 3510
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3514
    :goto_0
    return-void

    .line 3511
    :catch_0
    move-exception v0

    .line 3512
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error notifying about volume controller visibility"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .param p1, "effectType"    # I

    .prologue
    .line 2101
    if-ltz p1, :cond_0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2105
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2109
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2111
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2112
    :catch_0
    move-exception v0

    .line 2113
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSoundEffect(IF)V
    .locals 5
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2172
    if-ltz p1, :cond_0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2176
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2178
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2179
    :catch_0
    move-exception v0

    .line 2180
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSoundEffect(II)V
    .locals 5
    .param p1, "effectType"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2136
    if-ltz p1, :cond_0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 2140
    :cond_1
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2144
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2146
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2147
    :catch_0
    move-exception v0

    .line 2148
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 763
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 764
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 772
    iget-boolean v1, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {p0, v6, v7}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-virtual {p0, v6, p2, v7}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 2383
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2384
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2385
    monitor-exit v1

    .line 2389
    :goto_0
    return-void

    .line 2387
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 7
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .prologue
    const/4 v3, -0x1

    .line 3002
    if-nez p1, :cond_0

    .line 3003
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal null AudioPolicy argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3005
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 3007
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->hasFocusListener()Z

    move-result v6

    invoke-interface {v2, v4, v5, v6}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    move-result-object v1

    .line 3009
    .local v1, "regId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3019
    .end local v1    # "regId":Ljava/lang/String;
    :goto_0
    return v3

    .line 3012
    .restart local v1    # "regId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3019
    const/4 v3, 0x0

    goto :goto_0

    .line 3015
    .end local v1    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3016
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v5, "Dead object in registerAudioPolicyAsync()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .prologue
    .line 3757
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 3758
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2726
    if-nez p1, :cond_0

    .line 2730
    :goto_0
    return-void

    .line 2729
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2692
    if-nez p1, :cond_0

    .line 2709
    :goto_0
    return-void

    .line 2695
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2696
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2702
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2703
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2705
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2706
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2708
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2737
    if-nez p1, :cond_0

    .line 2738
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :goto_0
    return-void

    .line 2741
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 2742
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2797
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2801
    :cond_0
    :goto_0
    return-void

    .line 2800
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    const/4 v0, -0x1

    .line 2900
    invoke-virtual {p0, p1, v0, v0}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 2901
    return-void
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2914
    if-nez p1, :cond_0

    .line 2923
    :goto_0
    return-void

    .line 2917
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2919
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2920
    :catch_0
    move-exception v0

    .line 2921
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerRemoteController(Landroid/media/RemoteController;)Z
    .locals 5
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2837
    if-nez p1, :cond_0

    .line 2838
    const/4 v2, 0x0

    .line 2848
    :goto_0
    return v2

    .line 2840
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    .line 2841
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2843
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->updateRemoteControllerOnExistingMediaPlayers()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2848
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2844
    :catch_0
    move-exception v0

    .line 2845
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in calling Audio service interfaceupdateRemoteControllerOnExistingMediaPlayers() due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public releaseAudioPatch(Landroid/media/AudioPatch;)I
    .locals 1
    .param p1, "patch"    # Landroid/media/AudioPatch;

    .prologue
    .line 3700
    invoke-static {p1}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 5

    .prologue
    .line 3094
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3096
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3100
    :goto_0
    return-void

    .line 3097
    :catch_0
    move-exception v0

    .line 3098
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2952
    if-nez p1, :cond_0

    .line 2961
    :goto_0
    return-void

    .line 2955
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2957
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2958
    :catch_0
    move-exception v0

    .line 2959
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2978
    if-nez p1, :cond_0

    .line 2987
    :goto_0
    return-void

    .line 2981
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2983
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2984
    :catch_0
    move-exception v0

    .line 2985
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayWantsPlaybackPositionSync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 4
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .prologue
    .line 2441
    const/4 v1, 0x0

    .line 2447
    .local v1, "status":I
    :try_start_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, p3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2456
    :goto_0
    return v1

    .line 2452
    :catch_0
    move-exception v0

    .line 2453
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Audio focus request denied due to "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .locals 6
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2534
    and-int/lit8 v0, p4, 0x3

    if-eq p4, v0, :cond_0

    .line 2535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_0
    and-int/lit8 v4, p4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I
    .locals 11
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .param p5, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2574
    if-nez p2, :cond_0

    .line 2575
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null AudioAttributes argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2577
    :cond_0
    const/4 v1, 0x1

    if-lt p3, v1, :cond_1

    const/4 v1, 0x4

    if-le p3, v1, :cond_2

    .line 2579
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid duration hint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2581
    :cond_2
    and-int/lit8 v1, p4, 0x7

    if-eq p4, v1, :cond_3

    .line 2582
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2585
    :cond_3
    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_4

    .line 2586
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null focus listener when flagged as accepting delayed focus grant"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2589
    :cond_4
    and-int/lit8 v1, p4, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    if-nez p5, :cond_5

    .line 2590
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null audio policy when locking audio focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2594
    :cond_5
    const/4 v10, 0x0

    .line 2595
    .local v10, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2596
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2598
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v8

    :goto_0
    move-object v1, p2

    move v2, p3

    move v7, p4

    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2605
    :goto_1
    return v10

    .line 2598
    :cond_6
    const/4 v8, 0x0

    goto :goto_0

    .line 2602
    :catch_0
    move-exception v9

    .line 2603
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t call requestAudioFocus() on AudioService:"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public requestAudioFocusForCall(II)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "durationHint"    # I

    .prologue
    .line 2619
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2621
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v4, 0x0

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2631
    :goto_0
    return-void

    .line 2628
    :catch_0
    move-exception v9

    .line 2629
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t call requestAudioFocusForCall() on AudioService:"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .locals 7
    .param p1, "port"    # Landroid/media/AudioPort;
    .param p2, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    .line 3718
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3719
    :cond_0
    const/4 v1, -0x2

    .line 3725
    :goto_0
    return v1

    .line 3721
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 3722
    .local v6, "activeConfig":Landroid/media/AudioPortConfig;
    new-instance v0, Landroid/media/AudioPortConfig;

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v2

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v3

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->format()I

    move-result v4

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    .line 3724
    .local v0, "config":Landroid/media/AudioPortConfig;
    const/16 v1, 0x8

    iput v1, v0, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 3725
    invoke-static {v0}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    move-result v1

    goto :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    .line 3423
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 3424
    .local v3, "service":Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 3426
    .local v0, "delay":I
    :try_start_0
    invoke-interface {v3, p1, p2, p3}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v1, v0

    .line 3430
    .end local v0    # "delay":I
    .local v1, "delay":I
    :goto_0
    return v1

    .line 3427
    .end local v1    # "delay":I
    .restart local v0    # "delay":I
    :catch_0
    move-exception v2

    .line 3428
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in setBluetoothA2dpDeviceConnectionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .line 3430
    .end local v0    # "delay":I
    .restart local v1    # "delay":I
    goto :goto_0

    .end local v1    # "delay":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "delay":I
    :catchall_0
    move-exception v4

    move v1, v0

    .end local v0    # "delay":I
    .restart local v1    # "delay":I
    goto :goto_0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1698
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1668
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1670
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_0
    return-void

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 3575
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3578
    :goto_0
    return v1

    .line 3576
    :catch_0
    move-exception v0

    .line 3577
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error setting system audio mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3578
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMasterMute(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 1307
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 1308
    return-void
.end method

.method public setMasterMute(ZI)V
    .locals 4
    .param p1, "state"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1316
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1318
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    :goto_0
    return-void

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMasterVolume(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1215
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1217
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setMasterVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1755
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1757
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    :goto_0
    return-void

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMicrophoneMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 1788
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1790
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    :goto_0
    return-void

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2003
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 2013
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2014
    return-void
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 4

    .prologue
    .line 3078
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRemoteControlClientBrowsedPlayer: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3081
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->setRemoteControlClientBrowsedPlayer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3085
    :goto_0
    return-void

    .line 3082
    :catch_0
    move-exception v0

    .line 3083
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRemoteControlClientBrowsedPlayer()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 5
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 3049
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3051
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setRemoteControlClientPlayItem(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3056
    :goto_0
    return-void

    .line 3052
    :catch_0
    move-exception v0

    .line 3053
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setRemoteControlClientPlayItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingerMode(I)V
    .locals 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 1121
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1126
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingerModeInternal(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 3547
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3551
    :goto_0
    return-void

    .line 3548
    :catch_0
    move-exception v0

    .line 3549
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling setRingerModeInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRouting(III)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "routes"    # I
    .param p3, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1900
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1451
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1453
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    :goto_0
    return-void

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamMute(IZ)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 1278
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1280
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamSolo(IZ)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 1245
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1247
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1145
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1147
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 1148
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Landroid/media/IAudioService;->setMasterVolume(IILjava/lang/String;)V

    .line 1156
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateSetting(II)V
    .locals 4
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 1433
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1435
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :goto_0
    return-void

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 3496
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3500
    :goto_0
    return-void

    .line 3497
    :catch_0
    move-exception v0

    .line 3498
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error setting volume controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 5
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3402
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3404
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3408
    :goto_0
    return-void

    .line 3405
    :catch_0
    move-exception v0

    .line 3406
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setWiredDeviceConnectionState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1723
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 4
    .param p1, "vibrateType"    # I

    .prologue
    .line 1378
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1380
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1383
    :goto_0
    return v2

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1383
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startBluetoothSco()V
    .locals 4

    .prologue
    .line 1606
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1608
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    :goto_0
    return-void

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBluetoothScoVirtualCall()V
    .locals 4

    .prologue
    .line 1631
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1633
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    :goto_0
    return-void

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothScoVirtualCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopBluetoothSco()V
    .locals 4

    .prologue
    .line 1650
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1652
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    :goto_0
    return-void

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in stopBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 5

    .prologue
    .line 2212
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2214
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    :goto_0
    return-void

    .line 2215
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 2399
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2400
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    monitor-exit v1

    .line 2402
    return-void

    .line 2401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 4
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .prologue
    .line 3028
    if-nez p1, :cond_0

    .line 3029
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioPolicy argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3031
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3033
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3034
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3038
    :goto_0
    return-void

    .line 3035
    :catch_0
    move-exception v0

    .line 3036
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in unregisterAudioPolicyAsync()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .prologue
    .line 3765
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 3766
    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2773
    if-nez p1, :cond_0

    .line 2777
    :goto_0
    return-void

    .line 2776
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2753
    if-nez p1, :cond_0

    .line 2763
    :goto_0
    return-void

    .line 2757
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2759
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2760
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2762
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2783
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 2784
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    .line 2785
    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2812
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2816
    :cond_0
    :goto_0
    return-void

    .line 2815
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    goto :goto_0
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2931
    if-nez p1, :cond_0

    .line 2940
    :goto_0
    return-void

    .line 2934
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2936
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2937
    :catch_0
    move-exception v0

    .line 2938
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterRemoteController(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2863
    if-nez p1, :cond_0

    .line 2867
    :goto_0
    return-void

    .line 2866
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    goto :goto_0
.end method

.method public updateMediaPlayerList(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toAdd"    # Z

    .prologue
    .line 2873
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2875
    .local v1, "service":Landroid/media/IAudioService;
    if-eqz p2, :cond_0

    .line 2876
    :try_start_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMediaPlayerList: Add RCC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to List"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V

    .line 2885
    :goto_0
    return-void

    .line 2879
    :cond_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMediaPlayerList: Remove RCC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from List"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->removeMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2882
    :catch_0
    move-exception v0

    .line 2883
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while executing updateMediaPlayerList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
