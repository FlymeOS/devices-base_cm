.class Lcom/android/internal/telephony/cat/ActivateParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mActivateTarget:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "target"    # I

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 233
    iput p2, p0, Lcom/android/internal/telephony/cat/ActivateParams;->mActivateTarget:I

    .line 234
    return-void
.end method
