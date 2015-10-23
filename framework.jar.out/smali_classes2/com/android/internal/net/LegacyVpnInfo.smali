.class public Lcom/android/internal/net/LegacyVpnInfo;
.super Ljava/lang/Object;
.source "LegacyVpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/LegacyVpnInfo$2;
    }
.end annotation


# static fields
.field public static final BROADCAST_EXTRA_KEY_STATE_CHANGED:Ljava/lang/String; = "vpn_state"

.field public static final STATE_MAX:I = 0x99

.field public static final STATE_MTPD_EXIT_CHALLENGE_FAILED:I = 0x68

.field public static final STATE_MTPD_EXIT_CONNECT_SERVER_ERROR:I = 0x6d

.field public static final STATE_MTPD_EXIT_GET_SERVER_ADDR_ERROR:I = 0x6c

.field public static final STATE_MTPD_EXIT_NETWORK_ERROR:I = 0x66

.field public static final STATE_MTPD_EXIT_OFFSET:I = 0x64

.field public static final STATE_MTPD_EXIT_PROTOCOL_ERROR:I = 0x67

.field public static final STATE_MTPD_EXIT_PROTOCOL_NOT_COMPATIBLE:I = 0x6b

.field public static final STATE_MTPD_EXIT_REMOTE_REQUESTED:I = 0x6a

.field public static final STATE_MTPD_EXIT_SYSTEM_ERROR:I = 0x65

.field public static final STATE_MTPD_EXIT_USER_REQUESTED:I = 0x69

.field public static final STATE_PPPD_EXIT_AUTH_TOPEER_FAILED:I = 0x97

.field public static final STATE_PPPD_EXIT_CALLBACK:I = 0x92

.field public static final STATE_PPPD_EXIT_CNID_AUTH_FAILED:I = 0x99

.field public static final STATE_PPPD_EXIT_CONNECT_FAILED:I = 0x8c

.field public static final STATE_PPPD_EXIT_CONNECT_TIME:I = 0x91

.field public static final STATE_PPPD_EXIT_FATAL_ERROR:I = 0x85

.field public static final STATE_PPPD_EXIT_HANGUP:I = 0x94

.field public static final STATE_PPPD_EXIT_IDLE_TIMEOUT:I = 0x90

.field public static final STATE_PPPD_EXIT_INIT_FAILED:I = 0x96

.field public static final STATE_PPPD_EXIT_LOCK_FAILED:I = 0x8a

.field public static final STATE_PPPD_EXIT_LOOPBACK:I = 0x95

.field public static final STATE_PPPD_EXIT_NEGOTIATION_FAILED:I = 0x8e

.field public static final STATE_PPPD_EXIT_NOT_ROOT:I = 0x87

.field public static final STATE_PPPD_EXIT_NO_KERNEL_SUPPORT:I = 0x88

.field public static final STATE_PPPD_EXIT_OFFSET:I = 0x84

.field public static final STATE_PPPD_EXIT_OPEN_FAILED:I = 0x8b

.field public static final STATE_PPPD_EXIT_OPTION_ERROR:I = 0x86

.field public static final STATE_PPPD_EXIT_PEER_AUTH_FAILED:I = 0x8f

.field public static final STATE_PPPD_EXIT_PEER_DEAD:I = 0x93

.field public static final STATE_PPPD_EXIT_PTYCMD_FAILED:I = 0x8d

.field public static final STATE_PPPD_EXIT_TRAFFIC_LIMIT:I = 0x98

.field public static final STATE_PPPD_EXIT_USER_REQUEST:I = 0x89

.field public static final STATE_USING_NETWORKINFO_STATE:I = -0x1

.field public static final STATE_WAIT_FOR_RECONNECT:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_FAILED:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LegacyVpnInfo"


# instance fields
.field public intent:Landroid/app/PendingIntent;

.field public key:Ljava/lang/String;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo$1;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/LegacyVpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    return-void
.end method

.method public static stateFromNetworkInfo(Landroid/net/NetworkInfo;)I
    .locals 4
    .param p0, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/android/internal/net/LegacyVpnInfo$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    const-string v1, "LegacyVpnInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; treating as disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    :pswitch_0
    return v0

    .line 81
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 83
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 87
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    return-void
.end method
