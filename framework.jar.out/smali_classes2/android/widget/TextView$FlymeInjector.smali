.class Landroid/widget/TextView$FlymeInjector;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 9959
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->mzGetTransformed()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->mzSetPrimaryClip(Landroid/content/ClipData;)V

    .line 9960
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 9961
    return-void
.end method

.method static editorOnSelectionChanged(Landroid/widget/TextView;Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    .line 9977
    const/4 v3, 0x0

    .line 9978
    .local v3, "selChanged":Z
    const/4 v2, -0x1

    .line 9979
    .local v2, "newSelStart":I
    const/4 v1, -0x1

    .line 9981
    .local v1, "newSelEnd":I
    sget-object v4, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v4, :cond_0

    .line 9982
    const/4 v3, 0x1

    .line 9983
    move v1, p4

    .line 9986
    :cond_0
    sget-object v4, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v4, :cond_1

    .line 9987
    const/4 v3, 0x1

    .line 9988
    move v2, p4

    .line 9991
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->mzGetEditor()Landroid/widget/Editor;

    move-result-object v0

    .line 9993
    .local v0, "editor":Landroid/widget/Editor;
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 9994
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_3

    .line 9995
    if-gez v2, :cond_2

    .line 9996
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 9998
    :cond_2
    if-gez v1, :cond_3

    .line 9999
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 10002
    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/widget/Editor;->onSelectionChanged(II)V

    .line 10004
    :cond_4
    return-void
.end method

.method private static editorSelectCurrentWordMz(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 9967
    invoke-virtual {p0}, Landroid/widget/TextView;->mzGetEditor()Landroid/widget/Editor;

    move-result-object v0

    .line 9968
    .local v0, "editor":Landroid/widget/Editor;
    if-eqz v0, :cond_0

    .line 9969
    invoke-virtual {v0}, Landroid/widget/Editor;->selectCurrentWordMz()Z

    .line 9971
    :cond_0
    return-void
.end method

.method static initExtFlymeFields(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    iget v2, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10094
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Landroid/widget/TextView;->mCursorWidth:I

    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_0
    iput-boolean v3, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/TextView;->mTempCoords:[I

    return-void

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
    .line 10069
    iget-boolean v0, p0, Landroid/widget/TextView;->mAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->mzGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 10070
    invoke-virtual {p0}, Landroid/widget/TextView;->mzGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    .line 10072
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->mzGetFieldAutoLinkMask()I

    move-result v0

    goto :goto_0
.end method

.method static mzOnTextChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 6
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 10108
    iget-boolean v0, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 10109
    const/16 v1, 0xff

    move-object v2, p1

    check-cast v2, Landroid/text/Spannable;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->pregressEmojiStyle(ILandroid/text/Spannable;III)V

    .line 10112
    :cond_0
    return-void
.end method

.method static mzOnTextContextMenuItem(Landroid/widget/TextView;I)Z
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    const v1, #android:id@startSelectingText#t

    if-ne v1, p1, :cond_0

    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->editorSelectCurrentWordMz(Landroid/widget/TextView;)V

    :goto_0
    return v0

    :cond_0
    sget v1, Landroid/widget/TextView;->ID_COPY_ALL:I

    if-ne v1, p1, :cond_1

    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static pregressEmojiStyle(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 10017
    iget-boolean v0, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    if-nez v0, :cond_1

    .line 10018
    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 10019
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .end local p1    # "text":Ljava/lang/CharSequence;
    .local v6, "text":Ljava/lang/CharSequence;
    move-object p1, v6

    .line 10021
    .end local v6    # "text":Ljava/lang/CharSequence;
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/16 v1, 0xff

    move-object v2, p1

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->pregressEmojiStyle(ILandroid/text/Spannable;III)V

    .line 10024
    :cond_1
    return-void
.end method

.method static resetAutoLinkMask(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10063
    iget-boolean v0, p0, Landroid/widget/TextView;->mAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->mzGetFieldAutoLinkMask()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 10064
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->mzSetFieldAutoLinkMask(I)V

    .line 10066
    :cond_0
    return-void
.end method

.method static updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "focused"    # Z

    .prologue
    const/4 v2, 0x0

    .line 10039
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10040
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10041
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 10042
    iget-object v1, p0, Landroid/widget/TextView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-nez v1, :cond_0

    .line 10043
    new-instance v1, Landroid/widget/TextView$MzInputShownChangeListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Landroid/widget/TextView$MzInputShownChangeListener;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 10045
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 10046
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    .line 10057
    :goto_0
    return-void

    .line 10048
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    goto :goto_0

    .line 10051
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10052
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-eqz v1, :cond_3

    .line 10053
    iget-object v1, p0, Landroid/widget/TextView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 10055
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    goto :goto_0
.end method

.method static updateCurrentCursorVisbilityOnFocusOrInputTypeChangedIfHasFocus(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10030
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10031
    return-void
.end method
