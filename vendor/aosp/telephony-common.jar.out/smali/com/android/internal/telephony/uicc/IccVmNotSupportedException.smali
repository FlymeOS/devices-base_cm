.class public final Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;
.super Lcom/android/internal/telephony/uicc/IccException;
.source "IccVmNotSupportedException.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
