.class public Lcom/android/ims/ImsReasonInfo;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CODE_ANSWERED_ELSEWHERE:I = 0x3f6

.field public static final CODE_BLACKLISTED_CALL_ID:I = 0x1fa

.field public static final CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE:I = 0x2714

.field public static final CODE_ECBM_NOT_SUPPORTED:I = 0x385

.field public static final CODE_EMERGENCY_PERM_FAILURE:I = 0x16c

.field public static final CODE_EMERGENCY_TEMP_FAILURE:I = 0x16b

.field public static final CODE_FDN_BLOCKED:I = 0xf1

.field public static final CODE_LOCAL_CALL_BUSY:I = 0x8e

.field public static final CODE_LOCAL_CALL_CS_RETRY_REQUIRED:I = 0x92

.field public static final CODE_LOCAL_CALL_DECLINE:I = 0x8f

.field public static final CODE_LOCAL_CALL_EXCEEDED:I = 0x8d

.field public static final CODE_LOCAL_CALL_RESOURCE_RESERVATION_FAILED:I = 0x91

.field public static final CODE_LOCAL_CALL_TERMINATED:I = 0x94

.field public static final CODE_LOCAL_CALL_VCC_ON_PROGRESSING:I = 0x90

.field public static final CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED:I = 0x93

.field public static final CODE_LOCAL_ILLEGAL_ARGUMENT:I = 0x65

.field public static final CODE_LOCAL_ILLEGAL_STATE:I = 0x66

.field public static final CODE_LOCAL_IMS_SERVICE_DOWN:I = 0x6a

.field public static final CODE_LOCAL_INTERNAL_ERROR:I = 0x67

.field public static final CODE_LOCAL_LOW_BATTERY:I = 0x70

.field public static final CODE_LOCAL_NETWORK_IP_CHANGED:I = 0x7c

.field public static final CODE_LOCAL_NETWORK_NO_LTE_COVERAGE:I = 0x7a

.field public static final CODE_LOCAL_NETWORK_NO_SERVICE:I = 0x79

.field public static final CODE_LOCAL_NETWORK_ROAMING:I = 0x7b

.field public static final CODE_LOCAL_NOT_REGISTERED:I = 0x84

.field public static final CODE_LOCAL_NO_PENDING_CALL:I = 0x6b

.field public static final CODE_LOCAL_POWER_OFF:I = 0x6f

.field public static final CODE_LOCAL_SERVICE_UNAVAILABLE:I = 0x83

.field public static final CODE_LOW_BATTERY:I = 0x1f9

.field public static final CODE_MEDIA_INIT_FAILED:I = 0x191

.field public static final CODE_MEDIA_NOT_ACCEPTABLE:I = 0x193

.field public static final CODE_MEDIA_NO_DATA:I = 0x192

.field public static final CODE_MEDIA_UNSPECIFIED:I = 0x194

.field public static final CODE_REGISTRATION_ERROR:I = 0x2774

.field public static final CODE_SIP_BAD_ADDRESS:I = 0x151

.field public static final CODE_SIP_BAD_REQUEST:I = 0x14b

.field public static final CODE_SIP_BUSY:I = 0x152

.field public static final CODE_SIP_CLIENT_ERROR:I = 0x156

.field public static final CODE_SIP_FORBIDDEN:I = 0x14c

.field public static final CODE_SIP_GLOBAL_ERROR:I = 0x16a

.field public static final CODE_SIP_NOT_ACCEPTABLE:I = 0x154

.field public static final CODE_SIP_NOT_FOUND:I = 0x14d

.field public static final CODE_SIP_NOT_REACHABLE:I = 0x155

.field public static final CODE_SIP_NOT_SUPPORTED:I = 0x14e

.field public static final CODE_SIP_REDIRECTED:I = 0x141

.field public static final CODE_SIP_REQUEST_CANCELLED:I = 0x153

.field public static final CODE_SIP_REQUEST_TIMEOUT:I = 0x14f

.field public static final CODE_SIP_SERVER_BAD_GATEWAY:I = 0x161

.field public static final CODE_SIP_SERVER_ERROR:I = 0x167

.field public static final CODE_SIP_SERVER_INTERNAL_ERROR:I = 0x15f

.field public static final CODE_SIP_SERVER_MESSAGE_TOOLARGE:I = 0x165

.field public static final CODE_SIP_SERVER_NOT_IMPLEMENTED:I = 0x160

.field public static final CODE_SIP_SERVER_PRECONDITION_FAILURE:I = 0x166

.field public static final CODE_SIP_SERVER_TIMEOUT:I = 0x163

.field public static final CODE_SIP_SERVER_VERSION_UNSUPPORTED:I = 0x164

.field public static final CODE_SIP_SERVICE_UNAVAILABLE:I = 0x162

.field public static final CODE_SIP_TEMPRARILY_UNAVAILABLE:I = 0x150

.field public static final CODE_SIP_USER_REJECTED:I = 0x169

.field public static final CODE_TIMEOUT_1XX_WAITING:I = 0xc9

.field public static final CODE_TIMEOUT_NO_ANSWER:I = 0xca

.field public static final CODE_TIMEOUT_NO_ANSWER_CALL_UPDATE:I = 0xcb

.field public static final CODE_UNSPECIFIED:I = 0x0

.field public static final CODE_USER_DECLINE:I = 0x1f8

.field public static final CODE_USER_IGNORE:I = 0x1f7

.field public static final CODE_USER_NOANSWER:I = 0x1f6

.field public static final CODE_USER_TERMINATED:I = 0x1f5

.field public static final CODE_USER_TERMINATED_BY_REMOTE:I = 0x1fe

.field public static final CODE_UT_CB_PASSWORD_MISMATCH:I = 0x335

.field public static final CODE_UT_NETWORK_ERROR:I = 0x324

.field public static final CODE_UT_NOT_SUPPORTED:I = 0x321

.field public static final CODE_UT_OPERATION_NOT_ALLOWED:I = 0x323

.field public static final CODE_UT_SERVICE_UNAVAILABLE:I = 0x322

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CODE_CALL_RETRY_BY_SETTINGS:I = 0x3

.field public static final EXTRA_CODE_CALL_RETRY_NORMAL:I = 0x1

.field public static final EXTRA_CODE_CALL_RETRY_SILENT_REDIAL:I = 0x2

.field public static final EXTRA_MSG_SERVICE_NOT_AUTHORIZED:Ljava/lang/String; = "Forbidden. Not Authorized for Service"

.field public static final TYPE_CALL_DROP:I = 0x64

.field public static final TYPE_LOCAL:I = 0x1

.field public static final TYPE_MEDIA:I = 0x4

.field public static final TYPE_REGISTRATION:I = 0x65

.field public static final TYPE_STATUSCODE:I = 0x3

.field public static final TYPE_TIMEOUT:I = 0x2

.field public static final TYPE_UNSPECIFIED:I = 0x0

.field public static final TYPE_USER:I = 0x5

.field public static final TYPE_UT:I = 0x8


# instance fields
.field public mCode:I

.field public mExtraCode:I

.field public mExtraMessage:Ljava/lang/String;

.field public mReasonType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcom/android/ims/ImsReasonInfo$1;

    invoke-direct {v0}, Lcom/android/ims/ImsReasonInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mReasonType:I

    .line 297
    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 298
    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "extraCode"    # I

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    div-int/lit8 v0, p1, 0x64

    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mReasonType:I

    .line 308
    iput p1, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 309
    iput p2, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "extraCode"    # I
    .param p3, "extraMessage"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    div-int/lit8 v0, p1, 0x64

    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mReasonType:I

    .line 315
    iput p1, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 316
    iput p2, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    .line 317
    iput-object p3, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    invoke-direct {p0, p1}, Lcom/android/ims/ImsReasonInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 304
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mReasonType:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 376
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    return v0
.end method

.method public getExtraCode()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    return v0
.end method

.method public getExtraMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonType()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mReasonType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsReasonInfo :: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsReasonInfo;->mReasonType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 365
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mReasonType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    return-void
.end method
