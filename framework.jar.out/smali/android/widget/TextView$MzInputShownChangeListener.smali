.class Landroid/widget/TextView$MzInputShownChangeListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MzInputShownChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 9735
    iput-object p1, p0, Landroid/widget/TextView$MzInputShownChangeListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    .line 9738
    iget-object v1, p0, Landroid/widget/TextView$MzInputShownChangeListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 9739
    .local v0, "vh":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 9754
    :cond_0
    :goto_0
    return-void

    .line 9742
    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 9743
    iget-object v1, p0, Landroid/widget/TextView$MzInputShownChangeListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9744
    iget-object v1, p0, Landroid/widget/TextView$MzInputShownChangeListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 9747
    :cond_2
    new-instance v1, Landroid/widget/TextView$MzInputShownChangeListener$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TextView$MzInputShownChangeListener$1;-><init>(Landroid/widget/TextView$MzInputShownChangeListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
