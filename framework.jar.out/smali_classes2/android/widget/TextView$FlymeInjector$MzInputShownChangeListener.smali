.class final Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MzInputShownChangeListener"
.end annotation


# instance fields
.field private tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 10122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10123
    iput-object p1, p0, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;->tv:Landroid/widget/TextView;

    .line 10124
    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    .line 10128
    iget-object v2, p0, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;->tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 10129
    .local v1, "vh":Landroid/os/Handler;
    if-nez v1, :cond_1

    .line 10140
    :cond_0
    :goto_0
    return-void

    .line 10132
    :cond_1
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 10133
    iget-object v2, p0, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10134
    iget-object v2, p0, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;->tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 10137
    :cond_2
    new-instance v0, Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;

    invoke-direct {v0, p0, p1}, Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;-><init>(Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;Z)V

    .line 10138
    .local v0, "inputShownChangedRunnable":Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
