.class Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemWakeLock"
.end annotation


# instance fields
.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    const-string/jumbo v1, "HdmiCecLocalDevicePlayback"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 393
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 391
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 399
    const-string/jumbo v0, "active source: %b. Wake lock acquired"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->-get0(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 405
    const-string/jumbo v0, "Wake lock released"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    return-void
.end method
