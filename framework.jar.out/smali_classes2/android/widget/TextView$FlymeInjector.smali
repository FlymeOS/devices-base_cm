.class final Landroid/widget/TextView$FlymeInjector;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;,
        Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10658
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldTransformed()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeInvokeMethodSetPrimaryClip(Landroid/content/ClipData;)V

    .line 10659
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 10657
    return-void
.end method

.method static editorOnSelectionChanged(Landroid/widget/TextView;Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 4
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    .line 10584
    const/4 v2, 0x0

    .line 10585
    .local v2, "selChanged":Z
    const/4 v1, -0x1

    .local v1, "newSelStart":I
    const/4 v0, -0x1

    .line 10587
    .local v0, "newSelEnd":I
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v3, :cond_0

    .line 10588
    const/4 v2, 0x1

    .line 10589
    move v0, p4

    .line 10592
    :cond_0
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v3, :cond_1

    .line 10593
    const/4 v2, 0x1

    .line 10594
    move v1, p4

    .line 10597
    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10598
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_3

    .line 10599
    if-gez v1, :cond_2

    .line 10600
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 10602
    :cond_2
    if-gez v0, :cond_3

    .line 10603
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 10606
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/widget/Editor;->onSelectionChanged(II)V

    .line 10583
    :cond_4
    return-void
.end method

.method private static editorSelectCurrentWordMz(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10652
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10653
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor;->selectCurrentWordMz()Z

    .line 10651
    :cond_0
    return-void
.end method

.method static initFlymeExtraFields(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 10523
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 10525
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    iget v3, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-eqz v3, :cond_0

    .line 10526
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10527
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    :goto_0
    iput v2, p0, Landroid/widget/TextView;->mFlymeCursorWidth:I

    .line 10529
    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    .line 10530
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/TextView;->mFlymeTempCoords:[I

    .line 10522
    return-void

    .line 10527
    .restart local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0
.end method

.method static mzGetAutoLinkMask(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10534
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 10535
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    return v0

    .line 10537
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    return v0
.end method

.method static mzOnTextContextMenuItem(Landroid/widget/TextView;I)Z
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 10631
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdStartSelecting()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 10632
    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->editorSelectCurrentWordMz(Landroid/widget/TextView;)V

    .line 10633
    return v1

    .line 10634
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdCopyAll()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 10635
    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V

    .line 10636
    return v1

    .line 10639
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static onAttachedToWindow(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10576
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10575
    return-void
.end method

.method static onDetachedFromWindowInternal(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10580
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10579
    return-void
.end method

.method static onFocusChanged(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "focused"    # Z

    .prologue
    .line 10613
    invoke-static {p0, p1}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10610
    return-void
.end method

.method static onTouchUpEventMz(Landroid/widget/TextView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 10625
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onTouchUpEventMz(Landroid/view/MotionEvent;)V

    .line 10624
    return-void
.end method

.method static onWindowFocusChanged(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 10620
    invoke-static {p0, p1}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10617
    return-void
.end method

.method static performLongClickMz(Landroid/widget/TextView;Z)Z
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "handled"    # Z

    .prologue
    .line 10644
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeTouching:Z

    if-eqz v0, :cond_0

    .line 10645
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->performLongClickMz(Z)Z

    move-result p1

    .line 10647
    :cond_0
    return p1
.end method

.method static resetAutoLinkMask(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10541
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 10542
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeSetFieldAutoLinkMask(I)V

    .line 10540
    :cond_0
    return-void
.end method

.method private static updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "focused"    # Z

    .prologue
    const/4 v2, 0x0

    .line 10555
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10556
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10557
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 10558
    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-nez v1, :cond_0

    .line 10559
    new-instance v1, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;

    invoke-direct {v1, p0}, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 10561
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 10562
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    .line 10554
    :goto_0
    return-void

    .line 10564
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    goto :goto_0

    .line 10567
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10568
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-eqz v1, :cond_3

    .line 10569
    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 10571
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    goto :goto_0
.end method

.method static updateCurrentCursorVisbilityOnFocusOrInputTypeChangedIfHasFocus(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10547
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10546
    return-void
.end method
