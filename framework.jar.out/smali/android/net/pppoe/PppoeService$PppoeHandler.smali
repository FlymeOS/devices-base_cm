.class Landroid/net/pppoe/PppoeService$PppoeHandler;
.super Landroid/os/Handler;
.source "PppoeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PppoeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeService;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/PppoeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 227
    iput-object p1, p0, Landroid/net/pppoe/PppoeService$PppoeHandler;->this$0:Landroid/net/pppoe/PppoeService;

    .line 228
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 233
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v2, p0, Landroid/net/pppoe/PppoeService$PppoeHandler;->this$0:Landroid/net/pppoe/PppoeService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/pppoe/PppoeService;->setPppoeEnabledBlocking(ZZI)Z
    invoke-static {v2, v1, v0, v3}, Landroid/net/pppoe/PppoeService;->access$000(Landroid/net/pppoe/PppoeService;ZZI)Z

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v2, p0, Landroid/net/pppoe/PppoeService$PppoeHandler;->this$0:Landroid/net/pppoe/PppoeService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/pppoe/PppoeService;->setPppoeEnabledBlocking(ZZI)Z
    invoke-static {v2, v0, v1, v3}, Landroid/net/pppoe/PppoeService;->access$000(Landroid/net/pppoe/PppoeService;ZZI)Z

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
