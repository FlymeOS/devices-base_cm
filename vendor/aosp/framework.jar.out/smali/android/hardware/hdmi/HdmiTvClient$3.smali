.class final Landroid/hardware/hdmi/HdmiTvClient$3;
.super Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/hardware/hdmi/HdmiRecordListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getOneTouchRecordSource(I)[B
    .locals 4
    .param p1, "recorderAddress"    # I

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->getOneTouchRecordSource(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    move-result-object v1

    .line 202
    .local v1, "source":Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    if-nez v1, :cond_0

    .line 203
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 207
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-virtual {v1, v3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v2

    new-array v0, v2, [B

    .line 206
    .local v0, "data":[B
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    goto :goto_0
.end method

.method public onClearTimerRecordingResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 223
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onClearTimerRecordingResult(I)V

    .line 224
    return-void
.end method

.method public onOneTouchRecordResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 212
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordResult(I)V

    .line 213
    return-void
.end method

.method public onTimerRecordingResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 217
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiRecordListener;->onTimerRecordingResult(Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V

    .line 219
    return-void
.end method
