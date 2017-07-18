.class public final enum Lcom/android/internal/telephony/cat/Tone;
.super Ljava/lang/Enum;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Tone$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/Tone;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/Tone;

.field public static final enum BUSY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum CONGESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Tone;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum DIAL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum HAPPY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_1:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_2:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_3:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_4:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_5:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_6:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_7:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_8:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum QUESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RINGING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum SAD:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum URGENT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "DIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 34
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "BUSY"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "CONGESTION"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 44
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "RADIO_PATH_ACK"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "RADIO_PATH_NOT_AVAILABLE"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 54
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "ERROR_SPECIAL_INFO"

    .line 59
    const/4 v2, 0x6

    .line 56
    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "CALL_WAITING"

    const/4 v2, 0x6

    .line 64
    const/4 v3, 0x7

    .line 61
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 64
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "RINGING"

    const/4 v2, 0x7

    .line 69
    const/16 v3, 0x8

    .line 66
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "GENERAL_BEEP"

    const/16 v2, 0x8

    .line 76
    const/16 v3, 0x10

    .line 71
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 76
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "POSITIVE_ACK"

    const/16 v2, 0x9

    .line 81
    const/16 v3, 0x11

    .line 78
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 81
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "NEGATIVE_ACK"

    const/16 v2, 0xa

    .line 86
    const/16 v3, 0x12

    .line 83
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 86
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "INCOMING_SPEECH_CALL"

    const/16 v2, 0xb

    .line 91
    const/16 v3, 0x13

    .line 88
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 91
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "INCOMING_SMS"

    const/16 v2, 0xc

    .line 96
    const/16 v3, 0x14

    .line 93
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 96
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "CRITICAL_ALERT"

    const/16 v2, 0xd

    .line 104
    const/16 v3, 0x15

    .line 98
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 104
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "VIBRATE_ONLY"

    const/16 v2, 0xe

    .line 109
    const/16 v3, 0x20

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 109
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "HAPPY"

    const/16 v2, 0xf

    .line 116
    const/16 v3, 0x30

    .line 111
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 116
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "SAD"

    const/16 v2, 0x10

    .line 121
    const/16 v3, 0x31

    .line 118
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 121
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "URGENT"

    const/16 v2, 0x11

    .line 126
    const/16 v3, 0x32

    .line 123
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 126
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    .line 128
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "QUESTION"

    const/16 v2, 0x12

    .line 131
    const/16 v3, 0x33

    .line 128
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 131
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MESSAGE_RECEIVED"

    const/16 v2, 0x13

    .line 136
    const/16 v3, 0x34

    .line 133
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 136
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    .line 138
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_1"

    const/16 v2, 0x14

    .line 139
    const/16 v3, 0x40

    .line 138
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    .line 139
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_2"

    const/16 v2, 0x15

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    .line 141
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_3"

    const/16 v2, 0x16

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_4"

    const/16 v2, 0x17

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_5"

    const/16 v2, 0x18

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_6"

    const/16 v2, 0x19

    const/16 v3, 0x45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_7"

    const/16 v2, 0x1a

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string/jumbo v1, "MELODY_8"

    const/16 v2, 0x1b

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    .line 28
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/android/internal/telephony/cat/Tone;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/cat/Tone$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Tone$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    .line 150
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 1
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    .line 169
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 161
    invoke-static {}, Lcom/android/internal/telephony/cat/Tone;->values()[Lcom/android/internal/telephony/cat/Tone;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 162
    .local v0, "e":Lcom/android/internal/telephony/cat/Tone;
    iget v4, v0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    if-ne v4, p0, :cond_0

    .line 163
    return-object v0

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "e":Lcom/android/internal/telephony/cat/Tone;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/Tone;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/android/internal/telephony/cat/Tone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Tone;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/Tone;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Tone;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void
.end method
