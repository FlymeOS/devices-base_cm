.class Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParagraphTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 262
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    if-lez p1, :cond_2

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    .line 325
    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 325
    goto :goto_0

    :cond_2
    move v0, v1

    .line 324
    goto :goto_0
.end method

.method private isStartBoundary(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    .line 320
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 320
    goto :goto_0

    :cond_2
    move v0, v1

    .line 319
    goto :goto_0
.end method


# virtual methods
.method public following(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 268
    .local v2, "textLength":I
    if-gtz v2, :cond_0

    .line 269
    return-object v5

    .line 271
    :cond_0
    if-lt p1, v2, :cond_1

    .line 272
    return-object v5

    .line 274
    :cond_1
    move v1, p1

    .line 275
    .local v1, "start":I
    if-gez v1, :cond_2

    .line 276
    const/4 v1, 0x0

    .line 278
    :cond_2
    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 279
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    :cond_3
    if-lt v1, v2, :cond_5

    .line 283
    return-object v5

    .line 280
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 286
    .local v0, "end":I
    :goto_1
    if-ge v0, v2, :cond_6

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 289
    :cond_6
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3

    .line 287
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public preceding(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 294
    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 295
    .local v2, "textLength":I
    if-gtz v2, :cond_0

    .line 296
    return-object v5

    .line 298
    :cond_0
    if-gtz p1, :cond_1

    .line 299
    return-object v5

    .line 301
    :cond_1
    move v0, p1

    .line 302
    .local v0, "end":I
    if-le v0, v2, :cond_2

    .line 303
    move v0, v2

    .line 305
    :cond_2
    :goto_0
    if-lez v0, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    :cond_3
    if-gtz v0, :cond_5

    .line 309
    return-object v5

    .line 306
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 311
    :cond_5
    add-int/lit8 v1, v0, -0x1

    .line 312
    .local v1, "start":I
    :goto_1
    if-lez v1, :cond_6

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 315
    :cond_6
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3

    .line 313
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
