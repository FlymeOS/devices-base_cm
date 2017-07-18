.class Lcom/android/internal/telephony/cat/SendUSSDParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field ussdString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textmessage"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "ussdstring"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 254
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:Ljava/lang/String;

    .line 252
    return-void
.end method
