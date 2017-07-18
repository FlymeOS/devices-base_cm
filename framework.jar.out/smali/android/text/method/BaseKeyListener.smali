.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static synthetic -android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method private static synthetic -getandroid_text_method_TextKeyListener$CapitalizeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/text/method/BaseKeyListener;->-android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 69
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    and-int/lit16 v5, v5, -0x70f4

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    return v6

    .line 75
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    return v7

    .line 80
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 81
    .local v2, "isCtrlActive":Z
    :goto_0
    invoke-static {p2, v7, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v3, 0x1

    .line 82
    .local v3, "isShiftActive":Z
    :goto_1
    const/4 v5, 0x2

    invoke-static {p2, v5, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v5

    if-ne v5, v7, :cond_5

    const/4 v1, 0x1

    .line 84
    .local v1, "isAltActive":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 85
    if-nez v1, :cond_2

    if-eqz v3, :cond_6

    .line 87
    :cond_2
    return v6

    .line 80
    .end local v1    # "isAltActive":Z
    .end local v2    # "isCtrlActive":Z
    .end local v3    # "isShiftActive":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isCtrlActive":Z
    goto :goto_0

    .line 81
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isShiftActive":Z
    goto :goto_1

    .line 82
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isAltActive":Z
    goto :goto_2

    .line 89
    :cond_6
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v5

    return v5

    .line 93
    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 94
    return v7

    .line 98
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 100
    .local v4, "start":I
    if-eqz p5, :cond_9

    .line 101
    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 105
    .local v0, "end":I
    :goto_3
    if-eq v4, v0, :cond_a

    .line 106
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p2, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 107
    return v7

    .line 103
    .end local v0    # "end":I
    :cond_9
    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .restart local v0    # "end":I
    goto :goto_3

    .line 109
    :cond_a
    return v6
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 176
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 177
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 178
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 179
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 180
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 181
    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 182
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    .line 183
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 184
    const/4 v4, 0x1

    return v4

    .line 188
    .end local v0    # "end":I
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "start":I
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 161
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 162
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 163
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_0

    .line 164
    move v2, v0

    .line 165
    .local v2, "temp":I
    move v0, v1

    .line 166
    move v1, v2

    .line 168
    .end local v2    # "temp":I
    :cond_0
    if-eq v1, v0, :cond_1

    .line 169
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 170
    const/4 v3, 0x1

    return v3

    .line 172
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 113
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 116
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 117
    return v5

    .line 121
    :cond_0
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    .line 123
    :cond_1
    return v5

    .line 122
    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 126
    :cond_3
    const/4 v3, 0x0

    .line 127
    .local v3, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 128
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    .line 131
    .end local v3    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_4
    if-nez v3, :cond_5

    .line 135
    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    .line 141
    :cond_5
    if-eqz p3, :cond_7

    .line 142
    move v1, v0

    .line 143
    .local v1, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, p2, v1, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 144
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    .line 145
    .local v2, "deleteTo":I
    if-ne v2, v6, :cond_6

    .line 146
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 156
    :cond_6
    :goto_0
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 157
    const/4 v4, 0x1

    return v4

    .line 149
    .end local v1    # "deleteFrom":I
    .end local v2    # "deleteTo":I
    :cond_7
    move v2, v0

    .line 150
    .restart local v2    # "deleteTo":I
    invoke-virtual {v3, p2, v5, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 151
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v1

    .line 152
    .restart local v1    # "deleteFrom":I
    if-ne v1, v6, :cond_6

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .prologue
    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, "contentType":I
    invoke-static {}, Landroid/text/method/BaseKeyListener;->-getandroid_text_method_TextKeyListener$CapitalizeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    if-eqz p1, :cond_0

    .line 205
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 207
    :cond_0
    return v0

    .line 195
    :pswitch_0
    const/16 v0, 0x1001

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    const/16 v0, 0x2001

    .line 199
    goto :goto_0

    .line 201
    :pswitch_2
    const/16 v0, 0x4001

    .line 202
    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 213
    sparse-switch p3, :sswitch_data_0

    .line 221
    const/4 v0, 0x0

    .line 225
    :goto_0
    if-eqz v0, :cond_0

    .line 226
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 229
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 215
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 218
    .end local v0    # "handled":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 237
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 238
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    :cond_0
    return v6

    .line 243
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 244
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 245
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_2

    .line 246
    move v2, v0

    .line 247
    .local v2, "temp":I
    move v0, v1

    .line 248
    move v1, v2

    .line 251
    .end local v2    # "temp":I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_3

    .line 253
    return v6

    .line 256
    :cond_3
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 257
    const/4 v4, 0x1

    return v4
.end method
