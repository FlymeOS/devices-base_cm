.class public final Landroid/provider/MzSettings$Secure;
.super Ljava/lang/Object;
.source "MzSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ESE_SMARTMX:Ljava/lang/String; = "smartmx_ese"

.field public static final MEIZU_DEVICE_NAME:Ljava/lang/String; = "meizu_device_name"

.field public static final MEIZU_KEYGUARD_LOCK:Ljava/lang/String; = "meizu_keyguard_lock"

.field public static final MEIZU_NO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEIZU_PASSWORD_FRONT_FOUR:Ljava/lang/String; = "meizu_password_fronts_four"

.field public static final MEIZU_PASSWORD_LENGTH:Ljava/lang/String; = "meizu_password_length"

.field public static final MEIZU_PASSWORD_TYPE:Ljava/lang/String; = "meizu_password_type"

.field public static final MZ_BT_SESSION_STATUS:Ljava/lang/String; = "mz_bt_session_status"

.field public static final MZ_CURRENT_POWER_MODE:Ljava/lang/String; = "mz_current_power_mode"

.field public static final MZ_DRIVE_MODE:Ljava/lang/String; = "mz_drive_mode"

.field public static final MZ_DRIVE_MODE_BLUETOOTH_DEVICE:Ljava/lang/String; = "mz_drive_mode_bluetooth_device"

.field public static final MZ_DRIVE_MODE_BLUETOOTH_DEVICE_NAME:Ljava/lang/String; = "mz_driver_mode_bluetooth_device_name"

.field public static final MZ_DRIVE_MODE_BLUETOOTH_TRIGGER:Ljava/lang/String; = "mz_drive_mode_bluetooth_trigger"

.field public static final MZ_DRIVE_MODE_INCALL_VOICE:Ljava/lang/String; = "mz_drive_mode_incall_voice"

.field public static final MZ_DRIVE_MODE_INMSG_VOICE:Ljava/lang/String; = "mz_drive_mode_inmsg_voice"

.field public static final MZ_DRIVE_MODE_MUSIC_AUTOPLAY:Ljava/lang/String; = "mz_drive_mode_music_autoplay"

.field public static final MZ_DRIVE_MODE_REJECT_INCALL_MSG:Ljava/lang/String; = "mz_drive_mode_reject_incall_msg"

.field public static final MZ_DRIVE_MODE_REJECT_INCALL_MSG_CONTENT:Ljava/lang/String; = "mz_drive_mode_reject_incall_msg_content"

.field public static final MZ_ENABLE_TETHER_TOTAL:Ljava/lang/String; = "mz_enable_tether_total"

.field public static final MZ_FINGERPRINT_INDEX_LIST:Ljava/lang/String; = "mz_fingerprint_index_list"

.field public static final MZ_FINGERPRINT_LAST_ENROLLED_INDEX:Ljava/lang/String; = "mz_fingerprint_last_enrolled_index"

.field public static final MZ_FINGERPRINT_NAME_PREFIX:Ljava/lang/String; = "mz_fingerprint_name_"

.field public static final MZ_GUEST_MODE_PASSWORD:Ljava/lang/String; = "mz_guest_mode_password"

.field public static final MZ_NEED_COMPATIBLE_PASSWORD:Ljava/lang/String; = "mz_need_compatible_password"

.field public static final MZ_NFCP2P_DRAG_GUIDE:Ljava/lang/String; = "mz_nfcp2p_drag_guide"

.field public static final MZ_NFCP2P_ON:Ljava/lang/String; = "mz_nfcp2p_on"

.field public static final MZ_PASSWORD_LENGTH_APPLOCK:Ljava/lang/String; = "mz_password_length_applock"

.field public static final MZ_PASSWORD_LENGTH_DOCUMENT:Ljava/lang/String; = "mz_password_length_document"

.field public static final MZ_PASSWORD_TYPE_APPLOCK:Ljava/lang/String; = "mz_password_type_app_lock"

.field public static final MZ_PASSWORD_TYPE_DOCUMENT:Ljava/lang/String; = "mz_password_type_document"

.field public static final MZ_SHUTDOWN_VERIFY_PASSWORD:Ljava/lang/String; = "meizu_shutdown_verify_password"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 772
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/MzSettings$Secure;->MEIZU_NO_SECURE:Ljava/util/HashSet;

    .line 773
    sget-object v0, Landroid/provider/MzSettings$Secure;->MEIZU_NO_SECURE:Ljava/util/HashSet;

    const-string v1, "mz_smartbar_hit_edge_count_inside"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Landroid/provider/MzSettings$Secure;->MEIZU_NO_SECURE:Ljava/util/HashSet;

    const-string v1, "mz_smartbar_hit_edge_count_outside"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 775
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
