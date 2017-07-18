.class public Lcom/android/internal/telephony/gsm/SuppServiceNotification;
.super Ljava/lang/Object;
.source "SuppServiceNotification.java"


# static fields
.field public static final MO_CODE_CALL_DEFLECTED:I = 0x8

.field public static final MO_CODE_CALL_FORWARDED:I = 0x2

.field public static final MO_CODE_CALL_IS_WAITING:I = 0x3

.field public static final MO_CODE_CLIR_SUPPRESSION_REJECTED:I = 0x7

.field public static final MO_CODE_CUG_CALL:I = 0x4

.field public static final MO_CODE_INCOMING_CALLS_BARRED:I = 0x6

.field public static final MO_CODE_OUTGOING_CALLS_BARRED:I = 0x5

.field public static final MO_CODE_SOME_CF_ACTIVE:I = 0x1

.field public static final MO_CODE_UNCONDITIONAL_CF_ACTIVE:I = 0x0

.field public static final MT_CODE_ADDITIONAL_CALL_FORWARDED:I = 0xa

.field public static final MT_CODE_CALL_CONNECTED_ECT:I = 0x8

.field public static final MT_CODE_CALL_CONNECTING_ECT:I = 0x7

.field public static final MT_CODE_CALL_ON_HOLD:I = 0x2

.field public static final MT_CODE_CALL_RETRIEVED:I = 0x3

.field public static final MT_CODE_CUG_CALL:I = 0x1

.field public static final MT_CODE_DEFLECTED_CALL:I = 0x9

.field public static final MT_CODE_FORWARDED_CALL:I = 0x0

.field public static final MT_CODE_FORWARD_CHECK_RECEIVED:I = 0x6

.field public static final MT_CODE_MULTI_PARTY_CALL:I = 0x4

.field public static final MT_CODE_ON_HOLD_CALL_RELEASED:I = 0x5

.field public static final NOTIFICATION_TYPE_MO:I = 0x0

.field public static final NOTIFICATION_TYPE_MT:I = 0x1


# instance fields
.field public code:I

.field public history:[Ljava/lang/String;

.field public index:I

.field public notificationType:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    iget v0, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v0, :cond_0

    const-string/jumbo v0, " originated "

    .line 69
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    const-string/jumbo v1, " code: "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, " index: "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, " history: "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, " \""

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "\" "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const-string/jumbo v0, " terminated "

    goto :goto_0
.end method
