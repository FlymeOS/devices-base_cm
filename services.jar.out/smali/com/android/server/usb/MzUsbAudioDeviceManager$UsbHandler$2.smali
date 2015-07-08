.class Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$2;
.super Landroid/os/UEventObserver;
.source "MzUsbAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 83
    const-string v1, "ACTION"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    # getter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$100(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    # getter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mHandler:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;
    invoke-static {v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$300(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    move-result-object v1

    # invokes: Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->updateUsbAudioDeviceState(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->access$000(Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
