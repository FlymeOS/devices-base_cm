.class final Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "MzUsbAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/MzUsbAudioDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedHasCapture:Z

.field private mConnectedHasMIDI:Z

.field private mConnectedHasPlayback:Z

.field private mConnectedUsbCard:I

.field private mConnectedUsbDeviceNum:I

.field public final mUEventObserverUsbAudioDeviceState:Landroid/os/UEventObserver;

.field final synthetic this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/MzUsbAudioDeviceManager;Landroid/os/Looper;)V
    .locals 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 56
    iput-object p1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    .line 57
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    new-instance v2, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;)V

    iput-object v2, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput v4, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    .line 72
    iput v4, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    .line 73
    iput-boolean v3, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasPlayback:Z

    .line 74
    iput-boolean v3, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasCapture:Z

    .line 75
    iput-boolean v3, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasMIDI:Z

    .line 80
    new-instance v2, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$2;

    invoke-direct {v2, p0}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler$2;-><init>(Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;)V

    iput-object v2, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mUEventObserverUsbAudioDeviceState:Landroid/os/UEventObserver;

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mUEventObserverUsbAudioDeviceState:Landroid/os/UEventObserver;

    const-string v3, "SUBSYSTEM=sound"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "filter":Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 62
    # getter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$200(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MzUsbAudioDeviceManager"

    const-string v3, "Error initializing UsbHandler"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->updateUsbAudioDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method private sendDeviceNotification(IIZZZZ)V
    .locals 4
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "enabled"    # Z
    .param p4, "hasPlayback"    # Z
    .param p5, "hasCapture"    # Z
    .param p6, "hasMIDI"    # Z

    .prologue
    .line 182
    const-string v1, "MzUsbAudioDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeviceNotification:card = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasPlayback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasCapture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasMIDI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    const-string v2, "state"

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v1, "card"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "device"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "hasPlayback"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    const-string v1, "hasCapture"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const-string v1, "hasMIDI"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    # getter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$200(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 194
    return-void

    .line 187
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateUsbAudioDeviceState(Ljava/lang/String;)V
    .locals 18
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    # getter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mUsbAudioDeviceEnabled:Z
    invoke-static {v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$400(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Z

    move-result v12

    .local v12, "enabled":Z
    const/4 v15, 0x0

    .line 94
    .local v15, "isUsb":Z
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    const-string v1, "/proc/asound/pcm"

    invoke-direct {v14, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 95
    .local v14, "fr":Ljava/io/FileReader;
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    .local v8, "br":Ljava/io/BufferedReader;
    const-string v1, "(\\d+)[-](\\d+): USB Audio :[^:]*: playback"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 97
    .local v13, "expression":Ljava/util/regex/Pattern;
    const-string v17, ""

    .line 99
    .local v17, "strLine":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 100
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 101
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v15, 0x1

    goto :goto_0

    .line 105
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v13    # "expression":Ljava/util/regex/Pattern;
    .end local v14    # "fr":Ljava/io/FileReader;
    .end local v17    # "strLine":Ljava/lang/String;
    :goto_1
    const-string v1, "MzUsbAudioDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsbAudioDeviceState: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-nez v15, :cond_3

    const-string v1, "add"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    const-string v1, "MzUsbAudioDeviceManager"

    const-string v2, "updateUsbAudioDeviceState: USB_AUDIO_DEVICE not found in /proc/asound/pcm"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    :goto_2
    return-void

    .line 106
    :catch_0
    move-exception v11

    .line 107
    .local v11, "e":Ljava/io/IOException;
    const-string v1, "MzUsbAudioDeviceManager"

    const-string v2, "/proc/asound/pcm file not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v11    # "e":Ljava/io/IOException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    # getter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mUsbAudioDeviceEnabled:Z
    invoke-static {v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$400(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "add"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    new-instance v9, Landroid/alsa/AlsaCardsParser;

    invoke-direct {v9}, Landroid/alsa/AlsaCardsParser;-><init>()V

    .line 122
    .local v9, "cardsParser":Landroid/alsa/AlsaCardsParser;
    invoke-virtual {v9}, Landroid/alsa/AlsaCardsParser;->scan()V

    .line 126
    new-instance v10, Landroid/alsa/AlsaDevicesParser;

    invoke-direct {v10}, Landroid/alsa/AlsaDevicesParser;-><init>()V

    .line 127
    .local v10, "devicesParser":Landroid/alsa/AlsaDevicesParser;
    invoke-virtual {v10}, Landroid/alsa/AlsaDevicesParser;->scan()V

    .line 132
    invoke-virtual {v9}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    .line 133
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    .line 135
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    invoke-virtual {v10, v1}, Landroid/alsa/AlsaDevicesParser;->hasPlaybackDevices(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasPlayback:Z

    .line 136
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    invoke-virtual {v10, v1}, Landroid/alsa/AlsaDevicesParser;->hasCaptureDevices(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasCapture:Z

    .line 137
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    invoke-virtual {v10, v1}, Landroid/alsa/AlsaDevicesParser;->hasMIDIDevices(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasMIDI:Z

    .line 140
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasPlayback:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->waitForAlsaFile(IIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasCapture:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->waitForAlsaFile(IIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mUsbAudioDeviceEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$402(Lcom/android/server/usb/MzUsbAudioDeviceManager;Z)Z

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasPlayback:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasCapture:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasMIDI:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->sendDeviceNotification(IIZZZZ)V

    goto/16 :goto_2

    .line 157
    .end local v9    # "cardsParser":Landroid/alsa/AlsaCardsParser;
    .end local v10    # "devicesParser":Landroid/alsa/AlsaDevicesParser;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    # getter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mUsbAudioDeviceEnabled:Z
    invoke-static {v1}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$400(Lcom/android/server/usb/MzUsbAudioDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "remove"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/MzUsbAudioDeviceManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/usb/MzUsbAudioDeviceManager;->mUsbAudioDeviceEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/MzUsbAudioDeviceManager;->access$402(Lcom/android/server/usb/MzUsbAudioDeviceManager;Z)Z

    .line 159
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasPlayback:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasCapture:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasMIDI:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->sendDeviceNotification(IIZZZZ)V

    .line 166
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbCard:I

    .line 167
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedUsbDeviceNum:I

    .line 168
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasPlayback:Z

    .line 169
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasCapture:Z

    .line 170
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/usb/MzUsbAudioDeviceManager$UsbHandler;->mConnectedHasMIDI:Z

    goto/16 :goto_2
.end method

.method private waitForAlsaFile(IIZ)Z
    .locals 10
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "capture"    # Z

    .prologue
    .line 198
    const/4 v4, 0x5

    .line 199
    .local v4, "kNumRetries":I
    const/16 v5, 0x1f4

    .line 200
    .local v5, "kSleepTime":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/dev/snd/pcmC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_1

    const-string v7, "c"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "alsaDevPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "alsaDevFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 203
    .local v3, "exists":Z
    const/4 v6, 0x0

    .local v6, "retry":I
    :goto_1
    if-nez v3, :cond_2

    const/4 v7, 0x5

    if-ge v6, v7, :cond_2

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    .line 205
    if-nez v3, :cond_0

    .line 207
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "alsaDevFile":Ljava/io/File;
    .end local v1    # "alsaDevPath":Ljava/lang/String;
    .end local v3    # "exists":Z
    .end local v6    # "retry":I
    :cond_1
    const-string v7, "p"

    goto :goto_0

    .line 208
    .restart local v0    # "alsaDevFile":Ljava/io/File;
    .restart local v1    # "alsaDevPath":Ljava/lang/String;
    .restart local v3    # "exists":Z
    .restart local v6    # "retry":I
    :catch_0
    move-exception v2

    .line 209
    .local v2, "ex":Ljava/lang/IllegalThreadStateException;
    const-string v7, "MzUsbAudioDeviceManager"

    const-string v8, "usb: IllegalThreadStateException while waiting for ALSA file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 210
    .end local v2    # "ex":Ljava/lang/IllegalThreadStateException;
    :catch_1
    move-exception v2

    .line 211
    .local v2, "ex":Ljava/lang/InterruptedException;
    const-string v7, "MzUsbAudioDeviceManager"

    const-string v8, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 216
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    return v3
.end method
