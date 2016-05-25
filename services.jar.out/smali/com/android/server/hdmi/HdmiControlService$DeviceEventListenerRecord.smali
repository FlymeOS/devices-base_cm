.class final Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceEventListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 1110
    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1116
    monitor-exit v1

    .line 1117
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
