.class Landroid/inputmethodservice/InputMethodService$FlymeHandler;
.super Landroid/os/Handler;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlymeHandler"
.end annotation


# static fields
.field private static final MZ_MSG_REQUEST_HIDE_SELF:I = 0x1

.field private static final MZ_MSG_REQUEST_SHOW_SELF:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .prologue
    .line 2470
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$FlymeHandler;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2476
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2484
    :goto_0
    return-void

    .line 2478
    :pswitch_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$FlymeHandler;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 2481
    :pswitch_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$FlymeHandler;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 2476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
