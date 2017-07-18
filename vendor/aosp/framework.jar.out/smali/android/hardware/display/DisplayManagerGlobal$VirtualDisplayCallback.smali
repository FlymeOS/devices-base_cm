.class final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
.super Landroid/hardware/display/IVirtualDisplayCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayCallback"
.end annotation


# instance fields
.field private mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;


# direct methods
.method public constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 479
    invoke-direct {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;-><init>()V

    .line 480
    if-eqz p1, :cond_0

    .line 481
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    invoke-direct {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    .line 479
    :cond_0
    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->sendEmptyMessage(I)Z

    .line 486
    :cond_0
    return-void
.end method

.method public onResumed()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->sendEmptyMessage(I)Z

    .line 493
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->sendEmptyMessage(I)Z

    .line 500
    :cond_0
    return-void
.end method
