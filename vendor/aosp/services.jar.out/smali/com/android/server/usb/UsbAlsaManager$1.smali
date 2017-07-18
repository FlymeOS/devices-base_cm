.class Lcom/android/server/usb/UsbAlsaManager$1;
.super Landroid/os/FileObserver;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 117
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 119
    sparse-switch p1, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 121
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-static {v0, p2}, Lcom/android/server/usb/UsbAlsaManager;->-wrap0(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-static {v0, p2}, Lcom/android/server/usb/UsbAlsaManager;->-wrap1(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method
