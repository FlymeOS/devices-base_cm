.class final Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 586
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 584
    :goto_0
    :pswitch_0
    return-void

    .line 588
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unexpected event type: ACTION_DOWN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 591
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 592
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    .line 595
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 596
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Should have one pointer down."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 598
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 599
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 600
    .local v2, "eventY":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v3

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    iget-boolean v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    if-eqz v3, :cond_1

    .line 602
    iput-boolean v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    .line 603
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_0

    .line 610
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_0

    .line 614
    .end local v1    # "eventX":F
    .end local v2    # "eventY":F
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get10(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 615
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 618
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    .line 621
    :pswitch_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unexpected event type: ACTION_POINTER_UP"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    .line 626
    return-void
.end method
