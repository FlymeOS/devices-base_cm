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
        Landroid/widget/TextView$FlymeInjector$FlymeInputShownChangedRunnable;,
        Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;
    }
.end annotation


# static fields
.field private static sEmojiPattern:Ljava/util/regex/Pattern;

.field private static final sEmojiPatternLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9945
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/TextView$FlymeInjector;->sEmojiPatternLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10143
    return-void
.end method

.method private static copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldTransformed()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeInvokeMethodSetPrimaryClip(Landroid/content/ClipData;)V

    .line 10106
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10107
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
    .line 10040
    const/4 v2, 0x0

    .line 10041
    .local v2, "selChanged":Z
    const/4 v1, -0x1

    .local v1, "newSelStart":I
    const/4 v0, -0x1

    .line 10043
    .local v0, "newSelEnd":I
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v3, :cond_0

    .line 10044
    const/4 v2, 0x1

    .line 10045
    move v0, p4

    .line 10048
    :cond_0
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v3, :cond_1

    .line 10049
    const/4 v2, 0x1

    .line 10050
    move v1, p4

    .line 10053
    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10054
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_3

    .line 10055
    if-gez v1, :cond_2

    .line 10056
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 10058
    :cond_2
    if-gez v0, :cond_3

    .line 10059
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 10062
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/widget/Editor;->onSelectionChanged(II)V

    .line 10064
    :cond_4
    return-void
.end method

.method private static editorSelectCurrentWordMz(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10099
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10100
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor;->selectCurrentWordMz()Z

    .line 10102
    :cond_0
    return-void
.end method

.method static getEmojiPattern()Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 9953
    sget-object v0, Landroid/widget/TextView$FlymeInjector;->sEmojiPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 9954
    sget-object v1, Landroid/widget/TextView$FlymeInjector;->sEmojiPatternLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9955
    :try_start_0
    const-string v0, "[\u263a\ud83d\ude01\ud83d\ude04\ud83d\ude07\ud83d\ude2f\ud83d\ude15\ud83d\ude20\ud83d\ude10\ud83d\ude08\ud83d\ude05\ud83d\ude02\ud83d\ude0a\ud83d\ude00\ud83d\ude03\ud83d\ude06\ud83d\ude09\ud83d\ude11\ud83d\ude21\ud83d\ude22\ud83d\ude23\ud83d\ude26\ud83d\ude29\ud83d\ude31\ud83d\ude35\ud83d\ude34\ud83d\ude24\ud83d\ude27\ud83d\ude30\ud83d\ude32\ud83d\ude36\ud83d\ude2e\ud83d\ude25\ud83d\ude28\ud83d\ude1f\ud83d\ude33\ud83d\ude37\ud83d\ude1e\ud83d\ude1b\ud83d\ude0b\ud83d\ude18\ud83d\ude2d\ud83d\ude14\ud83d\ude12\ud83d\ude1c\ud83d\ude17\ud83d\ude1a\ud83d\ude0c\ud83d\ude0d\ud83d\ude1d\ud83d\ude19\ud83d\ude0e\ud83d\ude16\ud83d\ude0f\ud83d\ude2a\ud83d\ude13\ud83d\ude4c\ud83d\ude46\ud83d\ude4f\ud83d\ude38\ud83d\ude3d\ud83d\ude2b\ud83d\ude4d\ud83d\ude47\ud83d\ude3a\ud83d\ude39\ud83d\ude3f\ud83d\ude4b\ud83d\ude45\ud83d\ude4e\ud83d\ude3c\ud83d\ude3b\ud83d\ude3e\ud83d\ude40\ud83d\ude4a\ud83d\udc66\ud83d\udc69\ud83d\udc8f\ud83d\udc6b\ud83d\ude48\ud83d\udca9\ud83d\udc67\ud83d\udc74\ud83d\udc91\ud83d\udc6c\ud83d\ude49\ud83d\udc76\ud83d\udc68\ud83d\udc75\ud83d\udc6a\ud83d\udc6d\ud83d\udc64\ud83d\udc65\ud83d\udc6e\ud83d\udc77\ud83d\udc81\ud83d\udc82\ud83d\udc6f\ud83d\udc70\ud83d\udc78\ud83c\udf85\ud83d\udc7c\ud83d\udc71\ud83d\udc72\ud83d\udc73\ud83d\udc83\ud83d\udc86\ud83d\udc87\ud83d\udc85\ud83d\udc7b\ud83d\udc7d\ud83d\udc80\ud83d\udc42\ud83d\udc44\ud83d\udc79\ud83d\udc7e\ud83d\udcaa\ud83d\udc43\ud83d\udc45\ud83d\udc99\ud83d\udc7a\ud83d\udc7f\ud83d\udc40\ud83d\udc63\ud83d\udc8b\ud83d\udc9a\ud83d\udc9b\ud83d\udc94\ud83d\udc97\ud83d\udc9e\ud83d\udc9c\ud83d\udc95\ud83d\udc98\ud83d\udc9f\ud83d\udc93\ud83d\udc96\ud83d\udc9d\ud83d\udc4d\u270a\ud83d\udc4c\ud83d\udc4e\u270c\u270b\ud83d\udc4a\u261d\ud83d\udc46\ud83d\udc47\ud83d\udc4b\ud83d\udc49\ud83d\udc48\ud83d\udc4f\ud83d\udc50\ud83c\udfe0\ud83c\udfe3\ud83c\udfe2\ud83c\udfe1\ud83c\udfe4\ud83c\udfe5\ud83c\udfe6\ud83c\udfe9\ud83c\udfe7]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/TextView$FlymeInjector;->sEmojiPattern:Ljava/util/regex/Pattern;

    .line 9956
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9958
    :cond_0
    sget-object v0, Landroid/widget/TextView$FlymeInjector;->sEmojiPattern:Ljava/util/regex/Pattern;

    return-object v0

    .line 9956
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static initFlymeExtraFields(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 9965
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 9967
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    iget v2, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-eqz v2, :cond_0

    .line 9968
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9969
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Landroid/widget/TextView;->mFlymeCursorWidth:I

    .line 9972
    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_0
    iput-boolean v4, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    .line 9973
    iput-boolean v4, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    .line 9974
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/TextView;->mFlymeTempCoords:[I

    .line 9975
    return-void

    .line 9969
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
    .line 9978
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 9979
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    .line 9981
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

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
    .line 10112
    iget-boolean v0, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 10113
    const/16 v1, 0xff

    move-object v2, p1

    check-cast v2, Landroid/text/Spannable;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->pregressEmojiStyle(ILandroid/text/Spannable;III)V

    .line 10116
    :cond_0
    return-void
.end method

.method static mzOnTextContextMenuItem(Landroid/widget/TextView;I)Z
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 10087
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdStartSelecting()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 10088
    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->editorSelectCurrentWordMz(Landroid/widget/TextView;)V

    .line 10095
    :goto_0
    return v0

    .line 10090
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdCopyAll()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 10091
    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V

    goto :goto_0

    .line 10095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static onAttachedToWindow(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10032
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10033
    return-void
.end method

.method static onDetachedFromWindowInternal(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10036
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10037
    return-void
.end method

.method static onFocusChanged(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "focused"    # Z

    .prologue
    .line 10069
    invoke-static {p0, p1}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10071
    return-void
.end method

.method static onTouchUpEventMz(Landroid/widget/TextView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 10081
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onTouchUpEventMz(Landroid/view/MotionEvent;)V

    .line 10082
    return-void
.end method

.method static onWindowFocusChanged(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 10076
    invoke-static {p0, p1}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10078
    return-void
.end method

.method static pregressEmojiStyle(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 9987
    iget-boolean v0, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    if-nez v0, :cond_1

    .line 9988
    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 9989
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .end local p1    # "text":Ljava/lang/CharSequence;
    .local v6, "text":Ljava/lang/CharSequence;
    move-object p1, v6

    .line 9991
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

    .line 9994
    :cond_1
    return-void
.end method

.method static resetAutoLinkMask(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 9997
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 9998
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeSetFieldAutoLinkMask(I)V

    .line 10000
    :cond_0
    return-void
.end method

.method private static updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "focused"    # Z

    .prologue
    const/4 v2, 0x0

    .line 10011
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10012
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10013
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 10014
    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-nez v1, :cond_0

    .line 10015
    new-instance v1, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;

    invoke-direct {v1, p0}, Landroid/widget/TextView$FlymeInjector$MzInputShownChangeListener;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 10017
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 10018
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    .line 10029
    :goto_0
    return-void

    .line 10020
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    goto :goto_0

    .line 10023
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10024
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-eqz v1, :cond_3

    .line 10025
    iget-object v1, p0, Landroid/widget/TextView;->mFlymeInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 10027
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z

    goto :goto_0
.end method

.method static updateCurrentCursorVisbilityOnFocusOrInputTypeChangedIfHasFocus(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10003
    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    .line 10004
    return-void
.end method
