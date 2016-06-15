.class Landroid/content/res/flymetheme/drawable/ClockDrawable$1;
.super Landroid/os/Handler;
.source "ClockDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/drawable/ClockDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/drawable/ClockDrawable;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/drawable/ClockDrawable;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 38
    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;->this$0:Landroid/content/res/flymetheme/drawable/ClockDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    # getter for: Landroid/content/res/flymetheme/drawable/ClockDrawable;->UPDATE_MESSAGE:I
    invoke-static {}, Landroid/content/res/flymetheme/drawable/ClockDrawable;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;->this$0:Landroid/content/res/flymetheme/drawable/ClockDrawable;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/drawable/ClockDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Landroid/content/res/flymetheme/drawable/ClockDrawable$1$1;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/drawable/ClockDrawable$1$1;-><init>(Landroid/content/res/flymetheme/drawable/ClockDrawable$1;)V

    invoke-virtual {p0, v0}, Landroid/content/res/flymetheme/drawable/ClockDrawable$1;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_0
    return-void
.end method
