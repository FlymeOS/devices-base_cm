.class Landroid/bluetooth/BluetoothAvrcpController$2;
.super Ljava/lang/Object;
.source "BluetoothAvrcpController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAvrcpController;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAvrcpController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .prologue
    .line 311
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 313
    const-string/jumbo v0, "BluetoothAvrcpController"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAvrcpController;->-set0(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 318
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 317
    const/16 v2, 0xc

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 312
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 322
    const-string/jumbo v0, "BluetoothAvrcpController"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothAvrcpController;->-set0(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 324
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 321
    :cond_0
    return-void
.end method
