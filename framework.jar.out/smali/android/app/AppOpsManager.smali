.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    }
.end annotation


# static fields
.field public static final ACTION_SU_SESSION_CHANGED:Ljava/lang/String; = "android.intent.action.SU_SESSION_CHANGED"

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field private static final OPSTR_BLUETOOTH_CHANGE:Ljava/lang/String; = "android:bluetooth_change"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field private static final OPSTR_BOOT_COMPLETED:Ljava/lang/String; = "android:boot_completed"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field private static final OPSTR_DATA_CONNECT_CHANGE:Ljava/lang/String; = "android:data_connect_change"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field private static final OPSTR_NFC_CHANGE:Ljava/lang/String; = "android:nfc_change"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field private static final OPSTR_SU:Ljava/lang/String; = "android:su"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field private static final OPSTR_WIFI_CHANGE:Ljava/lang/String; = "android:wifi_change"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BLUETOOTH_CHANGE:I = 0x40

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_BOOT_COMPLETED:I = 0x41

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_DATA_CONNECT_CHANGE:I = 0x43

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NFC_CHANGE:I = 0x42

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SU:I = 0x44

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_CHANGE:I = 0x3f

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field public static final _NUM_OP:I = 0x45

.field private static sNameToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDefaultStrictMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpStrictMode:[Z

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x45

    const/4 v4, 0x0

    .line 390
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 466
    new-array v1, v5, [Ljava/lang/String;

    .line 467
    const-string/jumbo v2, "android:coarse_location"

    aput-object v2, v1, v6

    .line 468
    const-string/jumbo v2, "android:fine_location"

    aput-object v2, v1, v7

    .line 469
    aput-object v4, v1, v8

    .line 470
    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 471
    const-string/jumbo v2, "android:read_contacts"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 472
    const-string/jumbo v2, "android:write_contacts"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 473
    const-string/jumbo v2, "android:read_call_log"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 474
    const-string/jumbo v2, "android:write_call_log"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 475
    const-string/jumbo v2, "android:read_calendar"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 476
    const-string/jumbo v2, "android:write_calendar"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 477
    const/16 v2, 0xa

    aput-object v4, v1, v2

    .line 478
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 479
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 480
    const-string/jumbo v2, "android:call_phone"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 481
    const-string/jumbo v2, "android:read_sms"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 482
    const/16 v2, 0xf

    aput-object v4, v1, v2

    .line 483
    const-string/jumbo v2, "android:receive_sms"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 484
    const/16 v2, 0x11

    aput-object v4, v1, v2

    .line 485
    const-string/jumbo v2, "android:receive_mms"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 486
    const-string/jumbo v2, "android:receive_wap_push"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 487
    const-string/jumbo v2, "android:send_sms"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 488
    const/16 v2, 0x15

    aput-object v4, v1, v2

    .line 489
    const/16 v2, 0x16

    aput-object v4, v1, v2

    .line 490
    const-string/jumbo v2, "android:write_settings"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 491
    const-string/jumbo v2, "android:system_alert_window"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 492
    const/16 v2, 0x19

    aput-object v4, v1, v2

    .line 493
    const-string/jumbo v2, "android:camera"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 494
    const-string/jumbo v2, "android:record_audio"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 495
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 496
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 497
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 498
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 499
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 500
    const/16 v2, 0x21

    aput-object v4, v1, v2

    .line 501
    const/16 v2, 0x22

    aput-object v4, v1, v2

    .line 502
    const/16 v2, 0x23

    aput-object v4, v1, v2

    .line 503
    const/16 v2, 0x24

    aput-object v4, v1, v2

    .line 504
    const/16 v2, 0x25

    aput-object v4, v1, v2

    .line 505
    const/16 v2, 0x26

    aput-object v4, v1, v2

    .line 506
    const/16 v2, 0x27

    aput-object v4, v1, v2

    .line 507
    const/16 v2, 0x28

    aput-object v4, v1, v2

    .line 508
    const-string/jumbo v2, "android:monitor_location"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 509
    const-string/jumbo v2, "android:monitor_location_high_power"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 510
    const-string/jumbo v2, "android:get_usage_stats"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 511
    const/16 v2, 0x2c

    aput-object v4, v1, v2

    .line 512
    const/16 v2, 0x2d

    aput-object v4, v1, v2

    .line 513
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 514
    const-string/jumbo v2, "android:activate_vpn"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 515
    const/16 v2, 0x30

    aput-object v4, v1, v2

    .line 516
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 517
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 518
    const-string/jumbo v2, "android:read_phone_state"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 519
    const-string/jumbo v2, "android:add_voicemail"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 520
    const-string/jumbo v2, "android:use_sip"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 521
    const/16 v2, 0x36

    aput-object v4, v1, v2

    .line 522
    const-string/jumbo v2, "android:use_fingerprint"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 523
    const-string/jumbo v2, "android:body_sensors"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 524
    const-string/jumbo v2, "android:read_cell_broadcasts"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 525
    const-string/jumbo v2, "android:mock_location"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 526
    const-string/jumbo v2, "android:read_external_storage"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 527
    const-string/jumbo v2, "android:write_external_storage"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 528
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 529
    const-string/jumbo v2, "android:get_accounts"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 530
    const-string/jumbo v2, "android:wifi_change"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    .line 531
    const-string/jumbo v2, "android:bluetooth_change"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    .line 532
    const-string/jumbo v2, "android:boot_completed"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    .line 533
    const-string/jumbo v2, "android:nfc_change"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    .line 534
    const-string/jumbo v2, "android:data_connect_change"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    .line 535
    const-string/jumbo v2, "android:su"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    .line 466
    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 542
    new-array v1, v5, [Ljava/lang/String;

    .line 543
    const-string/jumbo v2, "COARSE_LOCATION"

    aput-object v2, v1, v6

    .line 544
    const-string/jumbo v2, "FINE_LOCATION"

    aput-object v2, v1, v7

    .line 545
    const-string/jumbo v2, "GPS"

    aput-object v2, v1, v8

    .line 546
    const-string/jumbo v2, "VIBRATE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 547
    const-string/jumbo v2, "READ_CONTACTS"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 548
    const-string/jumbo v2, "WRITE_CONTACTS"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 549
    const-string/jumbo v2, "READ_CALL_LOG"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 550
    const-string/jumbo v2, "WRITE_CALL_LOG"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 551
    const-string/jumbo v2, "READ_CALENDAR"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 552
    const-string/jumbo v2, "WRITE_CALENDAR"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 553
    const-string/jumbo v2, "WIFI_SCAN"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 554
    const-string/jumbo v2, "POST_NOTIFICATION"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 555
    const-string/jumbo v2, "NEIGHBORING_CELLS"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 556
    const-string/jumbo v2, "CALL_PHONE"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 557
    const-string/jumbo v2, "READ_SMS"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 558
    const-string/jumbo v2, "WRITE_SMS"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 559
    const-string/jumbo v2, "RECEIVE_SMS"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 560
    const-string/jumbo v2, "RECEIVE_EMERGECY_SMS"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 561
    const-string/jumbo v2, "RECEIVE_MMS"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 562
    const-string/jumbo v2, "RECEIVE_WAP_PUSH"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 563
    const-string/jumbo v2, "SEND_SMS"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 564
    const-string/jumbo v2, "READ_ICC_SMS"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 565
    const-string/jumbo v2, "WRITE_ICC_SMS"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 566
    const-string/jumbo v2, "WRITE_SETTINGS"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 567
    const-string/jumbo v2, "SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 568
    const-string/jumbo v2, "ACCESS_NOTIFICATIONS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 569
    const-string/jumbo v2, "CAMERA"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 570
    const-string/jumbo v2, "RECORD_AUDIO"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 571
    const-string/jumbo v2, "PLAY_AUDIO"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 572
    const-string/jumbo v2, "READ_CLIPBOARD"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 573
    const-string/jumbo v2, "WRITE_CLIPBOARD"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 574
    const-string/jumbo v2, "TAKE_MEDIA_BUTTONS"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 575
    const-string/jumbo v2, "TAKE_AUDIO_FOCUS"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 576
    const-string/jumbo v2, "AUDIO_MASTER_VOLUME"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 577
    const-string/jumbo v2, "AUDIO_VOICE_VOLUME"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 578
    const-string/jumbo v2, "AUDIO_RING_VOLUME"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 579
    const-string/jumbo v2, "AUDIO_MEDIA_VOLUME"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 580
    const-string/jumbo v2, "AUDIO_ALARM_VOLUME"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 581
    const-string/jumbo v2, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 582
    const-string/jumbo v2, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 583
    const-string/jumbo v2, "WAKE_LOCK"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 584
    const-string/jumbo v2, "MONITOR_LOCATION"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 585
    const-string/jumbo v2, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 586
    const-string/jumbo v2, "GET_USAGE_STATS"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 587
    const-string/jumbo v2, "MUTE_MICROPHONE"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 588
    const-string/jumbo v2, "TOAST_WINDOW"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 589
    const-string/jumbo v2, "PROJECT_MEDIA"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    .line 590
    const-string/jumbo v2, "ACTIVATE_VPN"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 591
    const-string/jumbo v2, "WRITE_WALLPAPER"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 592
    const-string/jumbo v2, "ASSIST_STRUCTURE"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    .line 593
    const-string/jumbo v2, "ASSIST_SCREENSHOT"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    .line 594
    const-string/jumbo v2, "OP_READ_PHONE_STATE"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 595
    const-string/jumbo v2, "ADD_VOICEMAIL"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 596
    const-string/jumbo v2, "USE_SIP"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 597
    const-string/jumbo v2, "PROCESS_OUTGOING_CALLS"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 598
    const-string/jumbo v2, "USE_FINGERPRINT"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 599
    const-string/jumbo v2, "BODY_SENSORS"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 600
    const-string/jumbo v2, "READ_CELL_BROADCASTS"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 601
    const-string/jumbo v2, "MOCK_LOCATION"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 602
    const-string/jumbo v2, "READ_EXTERNAL_STORAGE"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 603
    const-string/jumbo v2, "WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 604
    const-string/jumbo v2, "TURN_ON_SCREEN"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    .line 605
    const-string/jumbo v2, "GET_ACCOUNTS"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 606
    const-string/jumbo v2, "WIFI_CHANGE"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    .line 607
    const-string/jumbo v2, "BLUETOOTH_CHANGE"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    .line 608
    const-string/jumbo v2, "BOOT_COMPLETED"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    .line 609
    const-string/jumbo v2, "NFC_CHANGE"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    .line 610
    const-string/jumbo v2, "DATA_CONNECT_CHANGE"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    .line 611
    const-string/jumbo v2, "SU"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    .line 542
    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 618
    new-array v1, v5, [Ljava/lang/String;

    .line 619
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v6

    .line 620
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v7

    .line 621
    aput-object v4, v1, v8

    .line 622
    const-string/jumbo v2, "android.permission.VIBRATE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 623
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 624
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 625
    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 626
    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 627
    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 628
    const-string/jumbo v2, "android.permission.WRITE_CALENDAR"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 629
    const/16 v2, 0xa

    aput-object v4, v1, v2

    .line 630
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 631
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 632
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 633
    const-string/jumbo v2, "android.permission.READ_SMS"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 634
    const/16 v2, 0xf

    aput-object v4, v1, v2

    .line 635
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 636
    const-string/jumbo v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 637
    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 638
    const-string/jumbo v2, "android.permission.RECEIVE_WAP_PUSH"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 639
    const-string/jumbo v2, "android.permission.SEND_SMS"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 640
    const-string/jumbo v2, "android.permission.READ_SMS"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 641
    const/16 v2, 0x16

    aput-object v4, v1, v2

    .line 642
    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 643
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 644
    const-string/jumbo v2, "android.permission.ACCESS_NOTIFICATIONS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 645
    const-string/jumbo v2, "android.permission.CAMERA"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 646
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 647
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 648
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 649
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 650
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 651
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 652
    const/16 v2, 0x21

    aput-object v4, v1, v2

    .line 653
    const/16 v2, 0x22

    aput-object v4, v1, v2

    .line 654
    const/16 v2, 0x23

    aput-object v4, v1, v2

    .line 655
    const/16 v2, 0x24

    aput-object v4, v1, v2

    .line 656
    const/16 v2, 0x25

    aput-object v4, v1, v2

    .line 657
    const/16 v2, 0x26

    aput-object v4, v1, v2

    .line 658
    const/16 v2, 0x27

    aput-object v4, v1, v2

    .line 659
    const-string/jumbo v2, "android.permission.WAKE_LOCK"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 660
    const/16 v2, 0x29

    aput-object v4, v1, v2

    .line 661
    const/16 v2, 0x2a

    aput-object v4, v1, v2

    .line 662
    const-string/jumbo v2, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 663
    const/16 v2, 0x2c

    aput-object v4, v1, v2

    .line 664
    const/16 v2, 0x2d

    aput-object v4, v1, v2

    .line 665
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 666
    const/16 v2, 0x2f

    aput-object v4, v1, v2

    .line 667
    const/16 v2, 0x30

    aput-object v4, v1, v2

    .line 668
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 669
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 670
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 671
    const-string/jumbo v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 672
    const-string/jumbo v2, "android.permission.USE_SIP"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 673
    const-string/jumbo v2, "android.permission.PROCESS_OUTGOING_CALLS"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 674
    const-string/jumbo v2, "android.permission.USE_FINGERPRINT"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 675
    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 676
    const-string/jumbo v2, "android.permission.READ_CELL_BROADCASTS"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 677
    const/16 v2, 0x3a

    aput-object v4, v1, v2

    .line 678
    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 679
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 680
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 681
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 682
    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    .line 683
    const/16 v2, 0x40

    aput-object v4, v1, v2

    .line 684
    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    .line 685
    const-string/jumbo v2, "android.permission.NFC"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    .line 686
    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    .line 687
    const/16 v2, 0x44

    aput-object v4, v1, v2

    .line 618
    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 695
    new-array v1, v5, [Ljava/lang/String;

    .line 696
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v6

    .line 697
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v7

    .line 698
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v8

    .line 699
    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 700
    const/4 v2, 0x4

    aput-object v4, v1, v2

    .line 701
    const/4 v2, 0x5

    aput-object v4, v1, v2

    .line 702
    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 703
    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 704
    const/16 v2, 0x8

    aput-object v4, v1, v2

    .line 705
    const/16 v2, 0x9

    aput-object v4, v1, v2

    .line 706
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 707
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 708
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 709
    const/16 v2, 0xd

    aput-object v4, v1, v2

    .line 710
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 711
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 712
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 713
    const/16 v2, 0x11

    aput-object v4, v1, v2

    .line 714
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 715
    const/16 v2, 0x13

    aput-object v4, v1, v2

    .line 716
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 717
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 718
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 719
    const/16 v2, 0x17

    aput-object v4, v1, v2

    .line 720
    const-string/jumbo v2, "no_create_windows"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 721
    const/16 v2, 0x19

    aput-object v4, v1, v2

    .line 722
    const/16 v2, 0x1a

    aput-object v4, v1, v2

    .line 723
    const-string/jumbo v2, "no_record_audio"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 724
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 725
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 726
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 727
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 728
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 729
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 730
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 731
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 732
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 733
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 734
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 735
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 736
    const/16 v2, 0x28

    aput-object v4, v1, v2

    .line 737
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 738
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 739
    const/16 v2, 0x2b

    aput-object v4, v1, v2

    .line 740
    const-string/jumbo v2, "no_unmute_microphone"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 741
    const-string/jumbo v2, "no_create_windows"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 742
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 743
    const-string/jumbo v2, "no_config_vpn"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 744
    const-string/jumbo v2, "no_wallpaper"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 745
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 746
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 747
    const/16 v2, 0x33

    aput-object v4, v1, v2

    .line 748
    const/16 v2, 0x34

    aput-object v4, v1, v2

    .line 749
    const/16 v2, 0x35

    aput-object v4, v1, v2

    .line 750
    const/16 v2, 0x36

    aput-object v4, v1, v2

    .line 751
    const/16 v2, 0x37

    aput-object v4, v1, v2

    .line 752
    const/16 v2, 0x38

    aput-object v4, v1, v2

    .line 753
    const/16 v2, 0x39

    aput-object v4, v1, v2

    .line 754
    const/16 v2, 0x3a

    aput-object v4, v1, v2

    .line 755
    const/16 v2, 0x3b

    aput-object v4, v1, v2

    .line 756
    const/16 v2, 0x3c

    aput-object v4, v1, v2

    .line 757
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 758
    const/16 v2, 0x3e

    aput-object v4, v1, v2

    .line 759
    const/16 v2, 0x3f

    aput-object v4, v1, v2

    .line 760
    const/16 v2, 0x40

    aput-object v4, v1, v2

    .line 761
    const/16 v2, 0x41

    aput-object v4, v1, v2

    .line 762
    const/16 v2, 0x42

    aput-object v4, v1, v2

    .line 763
    const/16 v2, 0x43

    aput-object v4, v1, v2

    .line 764
    const-string/jumbo v2, "no_su"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    .line 695
    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 771
    new-array v1, v5, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 846
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 922
    new-array v1, v5, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    .line 997
    new-array v1, v5, [Z

    fill-array-data v1, :array_4

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    .line 1076
    new-array v1, v5, [Z

    fill-array-data v1, :array_5

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 1151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 1156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 1158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sNameToOp:Ljava/util/HashMap;

    .line 1161
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-eq v1, v5, :cond_0

    .line 1162
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1163
    const-string/jumbo v3, " should be "

    .line 1162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1165
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_1

    .line 1166
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1167
    const-string/jumbo v3, " should be "

    .line 1166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1169
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_2

    .line 1170
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1171
    const-string/jumbo v3, " should be "

    .line 1170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1173
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_3

    .line 1174
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1175
    const-string/jumbo v3, " should be "

    .line 1174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1177
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_4

    .line 1178
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1179
    const-string/jumbo v3, " should be "

    .line 1178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_5

    .line 1182
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1183
    const-string/jumbo v3, " should be "

    .line 1182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1185
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_6

    .line 1186
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1187
    const-string/jumbo v3, " should be "

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1189
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_7

    .line 1190
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1191
    const-string/jumbo v3, " should be "

    .line 1190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1193
    :cond_7
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_8

    .line 1194
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1195
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    .line 1194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1195
    const-string/jumbo v3, " should be "

    .line 1194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1197
    :cond_8
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_9

    .line 1198
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1199
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v3, v3

    .line 1198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1199
    const-string/jumbo v3, " should be "

    .line 1198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1201
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_b

    .line 1202
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    .line 1203
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_b
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_d

    .line 1207
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    .line 1208
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1211
    :cond_d
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_e

    .line 1212
    sget-object v1, Landroid/app/AppOpsManager;->sNameToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 53
    :cond_e
    return-void

    .line 390
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
    .end array-data

    .line 771
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 846
    nop

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
    .end array-data

    .line 922
    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x4
        0x0
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x0
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
    .end array-data

    .line 997
    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 1076
    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 82
    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1496
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1497
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1495
    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 3
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1959
    const-class v2, Landroid/app/AppOpsManager;

    monitor-enter v2

    .line 1960
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 1961
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1964
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1968
    :goto_0
    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1959
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1965
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static isStrictEnable()Z
    .locals 2

    .prologue
    .line 2040
    const-string/jumbo v0, "persist.sys.strict_op_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStrictOp(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2048
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static nameToOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1250
    sget-object v1, Landroid/app/AppOpsManager;->sNameToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1251
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1285
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1303
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static opToDefaultMode(IZ)I
    .locals 1
    .param p0, "op"    # I
    .param p1, "isStrict"    # Z

    .prologue
    .line 1293
    if-eqz p1, :cond_0

    .line 1294
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    aget v0, v0, p0

    return v0

    .line 1295
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 1229
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "NONE"

    return-object v0

    .line 1230
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1259
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1267
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1221
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1583
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1584
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1585
    return-object v2

    .line 1587
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1275
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1276
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1238
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1239
    return v0

    .line 1237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1655
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1656
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1657
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1659
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringOpToOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 2066
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2067
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2068
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2070
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringToMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 2054
    const-string/jumbo v0, "allowed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    const/4 v0, 0x0

    return v0

    .line 2056
    :cond_0
    const-string/jumbo v0, "ignored"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2057
    const/4 v0, 0x1

    return v0

    .line 2058
    :cond_1
    const-string/jumbo v0, "ask"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2059
    const/4 v0, 0x4

    return v0

    .line 2061
    :cond_2
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1846
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1847
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1848
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1850
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1863
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1864
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1800
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    .line 1801
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1802
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1807
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1804
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1679
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1817
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1818
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1687
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1831
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1832
    new-instance v1, Ljava/lang/SecurityException;

    .line 1833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1832
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1829
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2035
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2034
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2028
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    :goto_0
    return-void

    .line 2029
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1778
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1777
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1524
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1525
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1508
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1509
    :catch_0
    move-exception v0

    .line 1511
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2086
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2087
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 3
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2075
    const/4 v1, 0x1

    .line 2077
    .local v1, "isShow":Z
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IAppOpsService;->isControlAllowed(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2080
    .end local v1    # "isShow":Z
    :goto_0
    return v1

    .line 2078
    .restart local v1    # "isShow":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1954
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1886
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    .line 1887
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1888
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1893
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1890
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1705
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1946
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1947
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1713
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1915
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    .line 1916
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1917
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1918
    const-string/jumbo v3, " from uid "

    .line 1917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1918
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1918
    const-string/jumbo v3, " or calling package "

    .line 1917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1919
    const-string/jumbo v3, " from uid "

    .line 1917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1919
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1920
    const-string/jumbo v3, " not allowed to perform "

    .line 1917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1920
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 1917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1922
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1732
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1932
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1933
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1932
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1934
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1740
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 4

    .prologue
    .line 1569
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    :goto_0
    return-void

    .line 1570
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resetCounters()V
    .locals 2

    .prologue
    .line 2104
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1}, Lcom/android/internal/app/IAppOpsService;->resetCounters()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :goto_0
    return-void

    .line 2105
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1541
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :goto_0
    return-void

    .line 1542
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "state"    # Z

    .prologue
    .line 2096
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    :goto_0
    return-void

    .line 2097
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1560
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1561
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 1562
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1533
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :goto_0
    return-void

    .line 1534
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2016
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1991
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v1

    .line 1992
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1993
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1998
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1995
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1760
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2008
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2009
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1768
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1609
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1610
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 1611
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 1612
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1622
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 1608
    return-void

    .line 1609
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1626
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1598
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1597
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1636
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1637
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 1640
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 1635
    return-void

    .line 1636
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1641
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hook_noteOp(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public hook_noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
