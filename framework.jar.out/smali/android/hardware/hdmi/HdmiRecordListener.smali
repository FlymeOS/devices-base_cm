.class public abstract Landroid/hardware/hdmi/HdmiRecordListener;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOneTouchRecordSource(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.end method

.method public onClearTimerRecordingResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 243
    return-void
.end method

.method public onOneTouchRecordResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onTimerRecordingResult(Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V
    .locals 0
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    .prologue
    .line 59
    return-void
.end method
