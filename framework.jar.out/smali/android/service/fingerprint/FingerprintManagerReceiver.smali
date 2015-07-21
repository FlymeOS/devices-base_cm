.class public Landroid/service/fingerprint/FingerprintManagerReceiver;
.super Ljava/lang/Object;
.source "FingerprintManagerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(I)V
    .locals 0
    .param p1, "acquiredInfo"    # I

    .prologue
    .line 48
    return-void
.end method

.method public onEnrollResult(II)V
    .locals 0
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 33
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onProcessed(I)V
    .locals 0
    .param p1, "fingerprintId"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onRemoved(I)V
    .locals 0
    .param p1, "fingerprintId"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 81
    return-void
.end method
