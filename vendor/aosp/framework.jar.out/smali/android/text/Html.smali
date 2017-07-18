.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$ImageGetter;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$HtmlParser;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;

    .prologue
    .line 122
    new-instance v3, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v3}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 124
    .local v3, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string/jumbo v4, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->-get0()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v3}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 136
    .local v0, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v4

    return-object v4

    .line 128
    .end local v0    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 125
    .end local v2    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v1

    .line 127
    .local v1, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 218
    sub-int v1, p2, p1

    .line 219
    .local v1, "len":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v2

    .line 220
    .local v2, "levels":[B
    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 221
    .local v0, "buffer":[C
    invoke-static {p0, p1, p2, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 223
    const/4 v4, 0x2

    invoke-static {v4, v0, v2, v1, v5}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v3

    .line 225
    .local v3, "paraDir":I
    packed-switch v3, :pswitch_data_0

    .line 230
    const-string/jumbo v4, "<p dir=\"ltr\">"

    return-object v4

    .line 227
    :pswitch_0
    const-string/jumbo v4, "<p dir=\"rtl\">"

    return-object v4

    .line 225
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 236
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    .line 240
    invoke-static {p1, v8, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 241
    .local v6, "next":I
    if-gez v6, :cond_0

    .line 242
    move v6, p3

    .line 245
    :cond_0
    const/4 v4, 0x0

    .line 247
    .local v4, "nl":I
    :goto_1
    if-ge v6, p3, :cond_1

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_1

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 252
    :cond_1
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_3

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string/jumbo v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {p1, v6, p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v5, v7

    .line 252
    goto :goto_2

    .line 259
    .end local v4    # "nl":I
    .end local v6    # "next":I
    :cond_4
    const-string/jumbo v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 201
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 202
    const-class v4, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, p3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 203
    .local v1, "next":I
    const-class v4, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/QuoteSpan;

    .line 205
    .local v3, "quotes":[Landroid/text/style/QuoteSpan;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 206
    .local v2, "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 209
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_0
    invoke-static {p0, p1, v0, v1}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 211
    array-length v6, v3

    move v4, v5

    :goto_2
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    .line 212
    .restart local v2    # "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 201
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_1
    move v0, v1

    goto :goto_0

    .line 199
    .end local v1    # "next":I
    .end local v3    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 166
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 167
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 168
    .local v6, "next":I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 169
    .local v7, "style":[Landroid/text/style/ParagraphStyle;
    const-string/jumbo v1, " "

    .line 170
    .local v1, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    .line 172
    .local v5, "needDiv":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_3

    .line 173
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_0

    .line 175
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 176
    .local v0, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 177
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_1

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_2

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 182
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 186
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v5, :cond_4

    .line 187
    const-string/jumbo v8, "<div "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_4
    invoke-static {p0, p1, v2, v6}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 192
    if-eqz v5, :cond_5

    .line 193
    const-string/jumbo v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_5
    move v2, v6

    goto/16 :goto_0

    .line 162
    .end local v1    # "elements":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "needDiv":Z
    .end local v6    # "next":I
    .end local v7    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_6
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)Z
    .locals 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "nl"    # I
    .param p5, "last"    # Z

    .prologue
    .line 267
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_18

    .line 268
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 270
    .local v3, "next":I
    const-class v7, Landroid/text/style/CharacterStyle;

    .line 269
    invoke-interface {p1, v1, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/CharacterStyle;

    .line 272
    .local v6, "style":[Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_c

    .line 273
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_1

    .line 274
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 276
    .local v4, "s":I
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_0

    .line 277
    const-string/jumbo v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_1

    .line 280
    const-string/jumbo v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .end local v4    # "s":I
    :cond_1
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_2

    .line 284
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 287
    const-string/jumbo v7, "<tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_3

    .line 291
    const-string/jumbo v7, "<sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_3
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_4

    .line 294
    const-string/jumbo v7, "<sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_4
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_5

    .line 297
    const-string/jumbo v7, "<u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_5
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_6

    .line 300
    const-string/jumbo v7, "<strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_6
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_7

    .line 303
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/URLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_7
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ImageSpan;

    if-eqz v7, :cond_8

    .line 308
    const-string/jumbo v7, "<img src=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ImageSpan;

    invoke-virtual {v7}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    move v1, v3

    .line 315
    :cond_8
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_9

    .line 316
    const-string/jumbo v7, "<font size =\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_9
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_b

    .line 321
    const-string/jumbo v7, "<font color =\"#"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    aget-object v7, v6, v2

    .line 322
    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    .line 323
    const/high16 v8, 0x1000000

    .line 322
    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "color":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_a

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 327
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .end local v0    # "color":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 332
    :cond_c
    invoke-static {p0, p1, v1, v3}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 334
    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-ltz v2, :cond_17

    .line 335
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_d

    .line 336
    const-string/jumbo v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_d
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_e

    .line 339
    const-string/jumbo v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_e
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_f

    .line 342
    const-string/jumbo v7, "</a>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_f
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_10

    .line 345
    const-string/jumbo v7, "</strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_10
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_11

    .line 348
    const-string/jumbo v7, "</u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_11
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_12

    .line 351
    const-string/jumbo v7, "</sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_12
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_13

    .line 354
    const-string/jumbo v7, "</sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_13
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_14

    .line 357
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 359
    .restart local v5    # "s":Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 360
    const-string/jumbo v7, "</tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v5    # "s":Ljava/lang/String;
    :cond_14
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_16

    .line 364
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 366
    .restart local v4    # "s":I
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_15

    .line 367
    const-string/jumbo v7, "</b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_15
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_16

    .line 370
    const-string/jumbo v7, "</i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .end local v4    # "s":I
    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 267
    :cond_17
    move v1, v3

    goto/16 :goto_0

    .line 376
    .end local v2    # "j":I
    .end local v3    # "next":I
    .end local v6    # "style":[Landroid/text/style/CharacterStyle;
    :cond_18
    const/4 v7, 0x1

    if-ne p4, v7, :cond_19

    .line 377
    const-string/jumbo v7, "<br>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const/4 v7, 0x0

    return v7

    .line 380
    :cond_19
    const/4 v1, 0x2

    :goto_4
    if-ge v1, p4, :cond_1a

    .line 381
    const-string/jumbo v7, "<br>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 383
    :cond_1a
    if-eqz p5, :cond_1b

    const/4 v7, 0x0

    :goto_5
    return v7

    :cond_1b
    const/4 v7, 0x1

    goto :goto_5
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const v9, 0xdfff

    const v8, 0xd800

    const v7, 0xdc00

    const/16 v6, 0x20

    .line 389
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_9

    .line 390
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 392
    .local v0, "c":C
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1

    .line 393
    const-string/jumbo v4, "&lt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_2

    .line 395
    const-string/jumbo v4, "&gt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 396
    :cond_2
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    .line 397
    const-string/jumbo v4, "&amp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 398
    :cond_3
    if-lt v0, v8, :cond_4

    if-gt v0, v9, :cond_4

    .line 399
    if-ge v0, v7, :cond_0

    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_0

    .line 400
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 401
    .local v2, "d":C
    if-lt v2, v7, :cond_0

    if-gt v2, v9, :cond_0

    .line 402
    add-int/lit8 v3, v3, 0x1

    .line 403
    sub-int v4, v0, v8

    shl-int/lit8 v4, v4, 0xa

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    sub-int v5, v2, v7

    or-int v1, v4, v5

    .line 404
    .local v1, "codepoint":I
    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 407
    .end local v1    # "codepoint":I
    .end local v2    # "d":C
    :cond_4
    const/16 v4, 0x7e

    if-gt v0, v4, :cond_5

    if-ge v0, v6, :cond_6

    .line 408
    :cond_5
    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 409
    :cond_6
    if-ne v0, v6, :cond_8

    .line 410
    :goto_2
    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_7

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_7

    .line 411
    const-string/jumbo v4, "&nbsp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 415
    :cond_7
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 417
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 388
    .end local v0    # "c":C
    :cond_9
    return-void
.end method
