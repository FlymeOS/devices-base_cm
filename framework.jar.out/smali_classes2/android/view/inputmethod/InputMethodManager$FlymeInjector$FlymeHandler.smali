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
    .line 2479
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2476
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;->MSG_VIS_CHANGED:I

    .line 2480
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 2478
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 2485
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2484
    return-void

    .line 2487
    :pswitch_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->setInputShown(Z)V

    .line 2488
    return-void

    .line 2485
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
