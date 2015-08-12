.class Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 48
    iput-object p1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string v0, "MzUsbAudioDeviceManager"

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    iget-object v0, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$102(Lcom/android/server/usb/MzUsbAudioDeviceManager;Z)Z

    .line 53
    return-void
.end method
