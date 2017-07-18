.class Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
.super Landroid/os/Handler;
.source "WifiPasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasspointHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 285
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    .line 286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 285
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 346
    const-string/jumbo v3, "PasspointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignored "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 295
    .restart local v0    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    invoke-static {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 296
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    invoke-static {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-get1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;->onChannelDisconnected()V

    .line 297
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    invoke-static {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-set0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    goto :goto_0

    .line 302
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/passpoint/WifiPasspointInfo;

    .line 303
    .local v1, "result":Landroid/net/wifi/passpoint/WifiPasspointInfo;
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    invoke-static {v3, v1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap5(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointInfo;)V

    .line 304
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v6}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 306
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;

    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 311
    .end local v1    # "result":Landroid/net/wifi/passpoint/WifiPasspointInfo;
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-static {v4, v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap4(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V

    .line 312
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v6}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 313
    if-nez v0, :cond_1

    .line 314
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    .line 315
    :cond_1
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 316
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 321
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 323
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onSuccess()V

    goto :goto_0

    .line 328
    :sswitch_4
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 330
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onFailure(I)V

    goto :goto_0

    .line 335
    :sswitch_5
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;->this$1:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->-wrap3(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;

    .line 338
    .local v2, "str":Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;->string:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v0

    .line 339
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    invoke-interface {v3}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onBrowserDismiss()V

    goto/16 :goto_0

    :cond_3
    move-object v3, v0

    .line 341
    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    iget-object v4, v2, Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;->string:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;->onBrowserLaunch(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x28002 -> :sswitch_2
        0x28003 -> :sswitch_1
        0x28008 -> :sswitch_5
        0x28009 -> :sswitch_4
        0x2800a -> :sswitch_3
    .end sparse-switch
.end method
