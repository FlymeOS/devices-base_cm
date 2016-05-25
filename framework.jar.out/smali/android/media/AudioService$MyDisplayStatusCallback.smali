.class Landroid/media/AudioService$MyDisplayStatusCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 5736
    iput-object p1, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 5736
    invoke-direct {p0, p1}, Landroid/media/AudioService$MyDisplayStatusCallback;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 5738
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5739
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    monitor-enter v1

    .line 5740
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/media/AudioService;->mHdmiCecSink:Z
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$10102(Landroid/media/AudioService;Z)Z

    .line 5742
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiCecSink:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5743
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    iget v2, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 5745
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->checkAllFixedVolumeDevices()V
    invoke-static {v0}, Landroid/media/AudioService;->access$10200(Landroid/media/AudioService;)V

    .line 5746
    monitor-exit v1

    .line 5748
    :cond_1
    return-void

    .line 5740
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5746
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
