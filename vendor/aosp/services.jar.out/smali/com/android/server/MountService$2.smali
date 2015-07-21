.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 693
    new-instance v5, Landroid/hardware/usb/UsbManager;

    invoke-direct {v5, v6, v6}, Landroid/hardware/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "usbMode":Ljava/lang/String;
    const-string v5, "mass_storage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 695
    .local v1, "isUmsMode":Z
    const-string v5, "connected"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "mass_storage"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 698
    .local v0, "available":Z
    :goto_0
    const-string v5, "persist.sys.ums"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v0, v3

    .line 701
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v3, v0}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Z)V

    .line 702
    return-void

    .end local v0    # "available":Z
    :cond_1
    move v0, v4

    .line 695
    goto :goto_0

    .restart local v0    # "available":Z
    :cond_2
    move v0, v4

    .line 699
    goto :goto_1
.end method
