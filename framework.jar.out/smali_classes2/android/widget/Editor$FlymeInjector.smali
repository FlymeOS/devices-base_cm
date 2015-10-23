.class Landroid/widget/Editor$FlymeInjector;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hideSelectionModifierCursorController(Landroid/widget/Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5545
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 5546
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 5547
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5550
    :cond_0
    return-void
.end method

.method static initExtFlymeFields(Landroid/widget/Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mEnableDragSelection:Z

    .line 5446
    return-void
.end method

.method static injectDrawHardwareAccelerated(Landroid/widget/Editor;Landroid/text/Layout;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 5482
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 5483
    .local v0, "layoutHeight":I
    iget v1, p0, Landroid/widget/Editor;->mLastLayoutHeight:I

    if-eq v1, v0, :cond_0

    .line 5484
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 5485
    iput v0, p0, Landroid/widget/Editor;->mLastLayoutHeight:I

    .line 5487
    :cond_0
    return-void
.end method

.method static mzIsCursorVisible(Landroid/widget/Editor;)Z
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5471
    invoke-virtual {p0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 5472
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v1

    return v1
.end method

.method static removeSelectonActionModeRunnable(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5535
    iget-object v0, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5536
    invoke-virtual {p0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5538
    :cond_0
    return-void
.end method

.method static setSelectionOnTouchUpEvent(Landroid/widget/Editor;Landroid/text/Spannable;IZ)V
    .locals 11
    .param p0, "editor"    # Landroid/widget/Editor;
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "offset"    # I
    .param p3, "optionVisibleBeforeTouch"    # Z

    .prologue
    .line 5560
    const/4 v8, 0x0

    .line 5561
    .local v8, "windowSupportsHandles":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v6

    .line 5562
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 5563
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v9, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v9, :cond_1

    move-object v7, v5

    .line 5564
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 5565
    .local v7, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x3e8

    if-lt v9, v10, :cond_0

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7cf

    if-le v9, v10, :cond_3

    :cond_0
    const/4 v8, 0x1

    .line 5568
    .end local v7    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-eqz v9, :cond_4

    const/4 v1, 0x1

    .line 5569
    .local v1, "enabled":Z
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v4, 0x1

    .line 5570
    .local v4, "mShowEnabled":Z
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 5571
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v3

    .line 5572
    .local v3, "isSoftInputShown":Z
    :goto_3
    if-nez p3, :cond_7

    invoke-virtual {v6}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v6}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-ltz p2, :cond_7

    instance-of v9, p1, Landroid/text/Editable;

    if-eqz v9, :cond_7

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    if-ne p2, v9, :cond_7

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    if-ne p2, v9, :cond_7

    const/4 v0, 0x1

    .line 5579
    .local v0, "canStartSelectionActionMode":Z
    :goto_4
    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5580
    if-eqz v0, :cond_2

    .line 5581
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5583
    :cond_2
    return-void

    .line 5565
    .end local v0    # "canStartSelectionActionMode":Z
    .end local v1    # "enabled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "isSoftInputShown":Z
    .end local v4    # "mShowEnabled":Z
    .restart local v7    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 5568
    .end local v7    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 5569
    .restart local v1    # "enabled":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 5571
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v4    # "mShowEnabled":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 5572
    .restart local v3    # "isSoftInputShown":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static stopDragSelectionMode(Landroid/widget/Editor;)V
    .locals 3
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    const/4 v2, 0x0

    .line 5461
    iget-boolean v1, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v1, :cond_0

    .line 5462
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    .line 5463
    invoke-virtual {p0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 5464
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5465
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5468
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method static touchPositionIsInSelectionMz(Landroid/widget/Editor;II)Z
    .locals 6
    .param p0, "editor"    # Landroid/widget/Editor;
    .param p1, "minOffset"    # I
    .param p2, "maxOffset"    # I

    .prologue
    const/4 v5, 0x0

    .line 5590
    invoke-virtual {p0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 5591
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5592
    .local v1, "selectionStart":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5594
    .local v0, "selectionEnd":I
    if-ne v1, v0, :cond_0

    .line 5605
    :goto_0
    return v5

    .line 5598
    :cond_0
    if-le v1, v0, :cond_1

    .line 5599
    move v3, v1

    .line 5600
    .local v3, "tmp":I
    move v1, v0

    .line 5601
    move v0, v3

    .line 5602
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5605
    .end local v3    # "tmp":I
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p2, v0, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method static updateBackground(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5452
    invoke-virtual {p0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 5453
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->updateBackground(Z)V

    .line 5454
    return-void
.end method

.method static updateCursorPositionMz(Landroid/widget/Editor;IIIF)V
    .locals 24
    .param p0, "editor"    # Landroid/widget/Editor;
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    .line 5494
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v18

    .line 5495
    .local v18, "textView":Landroid/widget/TextView;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 5497
    .local v15, "offset":I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5498
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v15, v0, :cond_0

    move-object/from16 v10, v18

    .line 5499
    check-cast v10, Landroid/widget/EditText;

    .line 5500
    .local v10, "editText":Landroid/widget/EditText;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 5501
    .local v8, "cl":C
    add-int/lit8 v20, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 5502
    .local v5, "ch":C
    const v20, 0xdc00

    move/from16 v0, v20

    if-lt v8, v0, :cond_0

    const v20, 0xdfff

    move/from16 v0, v20

    if-gt v8, v0, :cond_0

    const v20, 0xd800

    move/from16 v0, v20

    if-lt v5, v0, :cond_0

    const v20, 0xdbff

    move/from16 v0, v20

    if-gt v5, v0, :cond_0

    .line 5503
    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 5504
    add-int/lit8 v15, v15, 0x1

    .line 5507
    .end local v5    # "ch":C
    .end local v8    # "cl":C
    .end local v10    # "editText":Landroid/widget/EditText;
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    .line 5508
    .local v12, "layout":Landroid/text/Layout;
    invoke-virtual {v12, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    .line 5509
    .local v14, "line":I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    .line 5510
    .local v11, "fi":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {v12, v14}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v20

    sub-int v4, p3, v20

    .line 5511
    .local v4, "baseLine":I
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v20, v0

    add-int v7, v4, v20

    .line 5512
    .local v7, "charTop":I
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v20, v0

    add-int v6, v4, v20

    .line 5513
    .local v6, "charBottom":I
    if-gez v7, :cond_3

    const/16 p2, 0x0

    .line 5514
    :goto_0
    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-le v6, v0, :cond_4

    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result p3

    .line 5515
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 5516
    .local v9, "cursorDrawable":[Landroid/graphics/drawable/Drawable;
    aget-object v20, v9, p1

    if-nez v20, :cond_1

    .line 5517
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/TextView;->mCursorDrawableRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    aput-object v20, v9, p1

    .line 5519
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->mzGetFieldTempRect()Landroid/graphics/Rect;

    move-result-object v16

    .line 5520
    .local v16, "tempRect":Landroid/graphics/Rect;
    if-nez v16, :cond_2

    .line 5521
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->mzSetFieldTempRect(Landroid/graphics/Rect;)V

    .line 5523
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->mzGetFieldTempRect()Landroid/graphics/Rect;

    move-result-object v16

    .line 5524
    aget-object v20, v9, p1

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5525
    aget-object v20, v9, p1

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 5526
    .local v19, "width":I
    const/high16 v20, 0x3f000000    # 0.5f

    const/high16 v21, 0x3f000000    # 0.5f

    sub-float v21, p4, v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 5527
    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 5528
    .local v13, "left":I
    aget-object v20, v9, p1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    add-int v22, v13, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v23, v23, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5529
    return-void

    .end local v9    # "cursorDrawable":[Landroid/graphics/drawable/Drawable;
    .end local v13    # "left":I
    .end local v16    # "tempRect":Landroid/graphics/Rect;
    .end local v19    # "width":I
    :cond_3
    move/from16 p2, v7

    .line 5513
    goto/16 :goto_0

    :cond_4
    move/from16 p3, v6

    .line 5514
    goto :goto_1
.end method
