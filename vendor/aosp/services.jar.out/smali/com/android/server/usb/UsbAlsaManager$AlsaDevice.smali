.class final Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlsaDevice"
.end annotation


# static fields
.field public static final TYPE_CAPTURE:I = 0x2

.field public static final TYPE_MIDI:I = 0x3

.field public static final TYPE_PLAYBACK:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public mCard:I

.field public mDevice:I

.field public mType:I

.field final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaManager;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p2, "type"    # I
    .param p3, "card"    # I
    .param p4, "device"    # I

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    .line 94
    iput p3, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    .line 95
    iput p4, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 99
    instance-of v2, p1, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    if-nez v2, :cond_0

    .line 100
    return v1

    :cond_0
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    .line 103
    .local v0, "other":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AlsaDevice: [card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
