.class public Lcom/android/server/usb/MzUsbAudioDeviceManager;
.super Ljava/lang/Object;
.source "MzUsbAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;
    }
.end annotation


# static fields
.field private static final SOUND_PCM_FILE:Ljava/lang/String; = "/proc/asound/pcm"

.field private static final TAG:Ljava/lang/String; = "MzUsbAudioDeviceManager"

.field private static final UEVENT_AUDIO_SUBSYSTE:Ljava/lang/String; = "SUBSYSTEM=sound"

.field private static final USB_AUDIO_DEVICE_REGULAR_EXPRESSION:Ljava/lang/String; = "(\\d+)[-](\\d+): USB Audio :[^:]*: playback"


# instance fields
.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

.field private mUsbAudioDeviceEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/MzUsbAudioDeviceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mHandler:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/MzUsbAudioDeviceManager;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/usb/MzUsbAudioDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/MzUsbAudioDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/MzUsbAudioDeviceManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/MzUsbAudioDeviceManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mHandler:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/MzUsbAudioDeviceManager;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mUsbAudioDeviceEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/MzUsbAudioDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/MzUsbAudioDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mUsbAudioDeviceEnabled:Z

    return p1
.end method


# virtual methods
.method public systemReady()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager;->mHandler:Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;

    const-string v1, "add"

    # invokes: Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->updateUsbAudioDeviceState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->access$000(Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;Ljava/lang/String;)V

    .line 44
    return-void
.end method
