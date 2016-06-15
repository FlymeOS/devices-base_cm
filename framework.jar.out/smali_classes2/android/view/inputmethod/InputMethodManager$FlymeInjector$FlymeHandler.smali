.class final Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeHandler"
.end annotation


# instance fields
.field private final MSG_VIS_CHANGED:I

.field private imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2442
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2439
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;->MSG_VIS_CHANGED:I

    .line 2443
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 2444
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2448
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2457
    :goto_0
    return-void

    .line 2450
    :pswitch_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->setInputShown(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2448
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
