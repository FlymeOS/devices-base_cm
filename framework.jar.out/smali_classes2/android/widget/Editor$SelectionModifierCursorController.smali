.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    .line 3844
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3840
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 3845
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 3846
    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 3858
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3859
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3862
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3863
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3102(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3866
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 3870
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 3871
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 3873
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 3874
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 3877
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 3878
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 3882
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showActionPopupWindow(I)V

    .line 3883
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V

    .line 3885
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)V

    .line 3886
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3966
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 3967
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 3968
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 3969
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 3966
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3971
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 3978
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 3974
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 3889
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 3890
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 3891
    :cond_1
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 3989
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 4000
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4001
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4003
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    .line 4004
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    .line 4005
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3896
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 3959
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3898
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 3899
    .local v11, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 3902
    .local v12, "y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 3905
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v13, :cond_1

    .line 3906
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 3907
    .local v8, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    int-to-long v14, v13

    cmp-long v13, v8, v14

    if-gtz v13, :cond_1

    .line 3908
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v2, v11, v13

    .line 3909
    .local v2, "deltaX":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v3, v12, v13

    .line 3910
    .local v3, "deltaY":F
    mul-float v13, v2, v2

    mul-float v14, v3, v3

    add-float v4, v13, v14

    .line 3912
    .local v4, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    .line 3914
    .local v10, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    .line 3915
    .local v5, "doubleTapSlop":I
    mul-int v13, v5, v5

    int-to-float v13, v13

    cmpg-float v13, v4, v13

    if-gez v13, :cond_2

    const/4 v7, 0x1

    .line 3917
    .local v7, "stayedInArea":Z
    :goto_1
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionOnText(FF)Z
    invoke-static {v13, v11, v12}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;FF)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3918
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 3919
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 3924
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v5    # "doubleTapSlop":I
    .end local v7    # "stayedInArea":Z
    .end local v8    # "duration":J
    .end local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 3925
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 3926
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_0

    .line 3915
    .restart local v2    # "deltaX":F
    .restart local v3    # "deltaY":F
    .restart local v4    # "distanceSquared":F
    .restart local v5    # "doubleTapSlop":I
    .restart local v8    # "duration":J
    .restart local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 3933
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v5    # "doubleTapSlop":I
    .end local v8    # "duration":J
    .end local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    .end local v11    # "x":F
    .end local v12    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3935
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 3940
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v13, :cond_0

    .line 3941
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v2, v13, v14

    .line 3942
    .restart local v2    # "deltaX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v3, v13, v14

    .line 3943
    .restart local v3    # "deltaY":F
    mul-float v13, v2, v2

    mul-float v14, v3, v3

    add-float v4, v13, v14

    .line 3945
    .restart local v4    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    .line 3947
    .restart local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v6

    .line 3949
    .local v6, "doubleTapTouchSlop":I
    mul-int v13, v6, v6

    int-to-float v13, v13

    cmpl-float v13, v4, v13

    if-lez v13, :cond_0

    .line 3950
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_0

    .line 3956
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v6    # "doubleTapTouchSlop":I
    .end local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_0

    .line 3896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 3993
    if-nez p1, :cond_0

    .line 3994
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3996
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 3982
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 3983
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 3849
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    :goto_0
    return-void

    .line 3852
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 3853
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 3854
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)V

    goto :goto_0
.end method
