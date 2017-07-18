.class public final enum Lcom/android/internal/telephony/cat/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum OK:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 34
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_WITH_PARTIAL_COMPREHENSION"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 37
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_WITH_MISSING_INFO"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_WITH_ADDITIONAL_EFS_READ"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 43
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_ICON_NOT_DISPLAYED"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_MODIFIED_BY_NAA"

    const/4 v2, 0x5

    .line 52
    const/4 v3, 0x5

    .line 51
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 52
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_LIMITED_SERVICE"

    const/4 v2, 0x6

    .line 55
    const/4 v3, 0x6

    .line 54
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 55
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_WITH_MODIFICATION"

    const/4 v2, 0x7

    .line 58
    const/4 v3, 0x7

    .line 57
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 58
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_NAA_NOT_ACTIVE"

    const/16 v2, 0x8

    .line 61
    const/16 v3, 0x8

    .line 60
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 61
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "PRFRMD_TONE_NOT_PLAYED"

    const/16 v2, 0x9

    .line 64
    const/16 v3, 0x9

    .line 63
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 64
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "UICC_SESSION_TERM_BY_USER"

    const/16 v2, 0xa

    .line 67
    const/16 v3, 0x10

    .line 66
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 67
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "BACKWARD_MOVE_BY_USER"

    const/16 v2, 0xb

    .line 70
    const/16 v3, 0x11

    .line 69
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 70
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "NO_RESPONSE_FROM_USER"

    const/16 v2, 0xc

    .line 73
    const/16 v3, 0x12

    .line 72
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 73
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "HELP_INFO_REQUIRED"

    const/16 v2, 0xd

    .line 76
    const/16 v3, 0x13

    .line 75
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 76
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "USSD_SS_SESSION_TERM_BY_USER"

    const/16 v2, 0xe

    .line 79
    const/16 v3, 0x14

    .line 78
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 79
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "TERMINAL_CRNTLY_UNABLE_TO_PROCESS"

    const/16 v2, 0xf

    .line 88
    const/16 v3, 0x20

    .line 82
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 88
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "NETWORK_CRNTLY_UNABLE_TO_PROCESS"

    const/16 v2, 0x10

    .line 91
    const/16 v3, 0x21

    .line 90
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 91
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "USER_NOT_ACCEPT"

    const/16 v2, 0x11

    .line 94
    const/16 v3, 0x22

    .line 93
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 94
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "USER_CLEAR_DOWN_CALL"

    const/16 v2, 0x12

    .line 97
    const/16 v3, 0x23

    .line 96
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 97
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "CONTRADICTION_WITH_TIMER"

    const/16 v2, 0x13

    .line 100
    const/16 v3, 0x24

    .line 99
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 100
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "NAA_CALL_CONTROL_TEMPORARY"

    const/16 v2, 0x14

    .line 103
    const/16 v3, 0x25

    .line 102
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 103
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "LAUNCH_BROWSER_ERROR"

    const/16 v2, 0x15

    .line 106
    const/16 v3, 0x26

    .line 105
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 106
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "MMS_TEMPORARY"

    const/16 v2, 0x16

    .line 109
    const/16 v3, 0x27

    .line 108
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 109
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "BEYOND_TERMINAL_CAPABILITY"

    const/16 v2, 0x17

    .line 119
    const/16 v3, 0x30

    .line 112
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 119
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "CMD_TYPE_NOT_UNDERSTOOD"

    const/16 v2, 0x18

    .line 122
    const/16 v3, 0x31

    .line 121
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 122
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "CMD_DATA_NOT_UNDERSTOOD"

    const/16 v2, 0x19

    .line 125
    const/16 v3, 0x32

    .line 124
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 125
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "CMD_NUM_NOT_KNOWN"

    const/16 v2, 0x1a

    .line 128
    const/16 v3, 0x33

    .line 127
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 128
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "SS_RETURN_ERROR"

    const/16 v2, 0x1b

    .line 131
    const/16 v3, 0x34

    .line 130
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 131
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "SMS_RP_ERROR"

    const/16 v2, 0x1c

    .line 134
    const/16 v3, 0x35

    .line 133
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 134
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "REQUIRED_VALUES_MISSING"

    const/16 v2, 0x1d

    .line 137
    const/16 v3, 0x36

    .line 136
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 137
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "USSD_RETURN_ERROR"

    const/16 v2, 0x1e

    .line 140
    const/16 v3, 0x37

    .line 139
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 140
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "MULTI_CARDS_CMD_ERROR"

    const/16 v2, 0x1f

    .line 143
    const/16 v3, 0x38

    .line 142
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 143
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "USIM_CALL_CONTROL_PERMANENT"

    const/16 v2, 0x20

    .line 149
    const/16 v3, 0x39

    .line 145
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 149
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "BIP_ERROR"

    const/16 v2, 0x21

    .line 152
    const/16 v3, 0x3a

    .line 151
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 152
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "ACCESS_TECH_UNABLE_TO_PROCESS"

    const/16 v2, 0x22

    .line 155
    const/16 v3, 0x3b

    .line 154
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 155
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "FRAMES_ERROR"

    const/16 v2, 0x23

    .line 158
    const/16 v3, 0x3c

    .line 157
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 158
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 160
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string/jumbo v1, "MMS_ERROR"

    const/16 v2, 0x24

    .line 161
    const/16 v3, 0x3d

    .line 160
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    .line 161
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 27
    const/16 v0, 0x25

    new-array v0, v0, [Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->$VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput p3, p0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    .line 166
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 179
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 180
    .local v0, "r":Lcom/android/internal/telephony/cat/ResultCode;
    iget v4, v0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    if-ne v4, p0, :cond_0

    .line 181
    return-object v0

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "r":Lcom/android/internal/telephony/cat/ResultCode;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/android/internal/telephony/cat/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/ResultCode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->$VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    return v0
.end method
