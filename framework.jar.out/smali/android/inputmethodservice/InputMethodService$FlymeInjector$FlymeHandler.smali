.class final Landroid/inputmethodservice/InputMethodService$FlymeInjector$FlymeHandler;
.super Landroid/os/Handler;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeHandler"
.end annotation


# static fields
.field private static final MZ_MSG_REQUEST_HIDE_SELF:I = 0x1

.field private static final MZ_MSG_REQUEST_SHOW_SELF:I = 0x2


# instance fields
.field private ims:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2706
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2707
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$FlymeInjector$FlymeHandler;->ims:Landroid/inputmethodservice/InputMethodService;

    .line 2708
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2712
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2720
    :goto_0
    return-void

    .line 2714
    :pswitch_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$FlymeInjector$FlymeHandler;->ims:Landroid/inputmethodservice/InputMethodService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 2717
    :pswitch_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$FlymeInjector$FlymeHandler;->ims:Landroid/inputmethodservice/InputMethodService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0

    .line 2712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
