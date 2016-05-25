.class public Lcom/android/internal/telephony/SyntheticSmsMessage$SyntheticAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "SyntheticSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SyntheticSmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyntheticAddress"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    return-void
.end method
