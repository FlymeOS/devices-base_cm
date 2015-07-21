.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 149
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 878
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 900
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 151
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 152
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 153
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 155
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 69
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 91
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 81
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 105
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 878
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 900
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 120
    if-eqz p11, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 123
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 124
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 125
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 126
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 128
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 134
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v1, Landroid/text/Layout$Directions;

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 135
    iget-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 136
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 138
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 140
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 144
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 146
    return-void

    .line 105
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 131
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 49
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 60
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 62
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 646
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    if-nez p10, :cond_0

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 743
    :goto_0
    return-void

    .line 653
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 656
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 657
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 658
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 661
    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 662
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 663
    const/4 v15, 0x0

    .line 666
    .local v15, "sum":F
    move v7, v10

    .local v7, "i":I
    :goto_2
    if-lez v7, :cond_1

    .line 667
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 669
    .local v16, "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_4

    .line 676
    .end local v16    # "w":F
    :cond_1
    const/4 v5, 0x0

    .line 677
    move v4, v7

    .line 741
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    aput v5, v17, v18

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v4, v17, v18

    goto :goto_0

    .line 653
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_3
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 673
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_4
    add-float v15, v15, v16

    .line 666
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 679
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_5
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 680
    const-string v17, "StaticLayout"

    const-string v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 683
    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 685
    :cond_7
    const/4 v15, 0x0

    .line 688
    .restart local v15    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_8

    .line 689
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 691
    .restart local v16    # "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_9

    .line 698
    .end local v16    # "w":F
    :cond_8
    move v5, v7

    .line 699
    sub-int v4, v10, v7

    .line 700
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 701
    add-int/lit8 v5, v10, -0x1

    .line 702
    const/4 v4, 0x1

    goto :goto_3

    .line 695
    .restart local v16    # "w":F
    :cond_9
    add-float v15, v15, v16

    .line 688
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 706
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 707
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v14, 0x0

    .line 708
    .local v14, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .line 710
    .local v13, "right":I
    sub-float v17, p5, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    .line 711
    .local v12, "ravail":F
    move v13, v10

    :goto_5
    if-lez v13, :cond_b

    .line 712
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 714
    .restart local v16    # "w":F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_d

    .line 721
    .end local v16    # "w":F
    :cond_b
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 722
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_c

    .line 723
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 725
    .restart local v16    # "w":F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_e

    .line 732
    .end local v16    # "w":F
    :cond_c
    move v5, v9

    .line 733
    sub-int v4, v13, v9

    .line 734
    goto/16 :goto_3

    .line 718
    .end local v8    # "lavail":F
    .restart local v16    # "w":F
    :cond_d
    add-float v14, v14, v16

    .line 711
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 729
    .restart local v8    # "lavail":F
    :cond_e
    add-float v11, v11, v16

    .line 722
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 735
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .end local v16    # "w":F
    :cond_f
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 736
    const-string v17, "StaticLayout"

    const-string v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static native nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 520
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 521
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 522
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 524
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 525
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    .line 527
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 531
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 532
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 533
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 534
    move-object/from16 v25, v19

    .line 537
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 538
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 539
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 540
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 541
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 543
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 544
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 545
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 543
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 549
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 553
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 554
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 555
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 556
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 559
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_10

    const/16 v18, 0x1

    .line 560
    .local v18, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v13, 0x1

    .line 561
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v13, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_12

    :cond_4
    const/16 v23, 0x1

    .line 563
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v18, :cond_6

    .line 564
    if-eqz p21, :cond_5

    .line 565
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 568
    :cond_5
    if-eqz p20, :cond_6

    .line 569
    move/from16 p4, p6

    .line 575
    :cond_6
    if-eqz v23, :cond_8

    .line 576
    if-eqz p21, :cond_7

    .line 577
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 580
    :cond_7
    if-eqz p20, :cond_8

    .line 581
    move/from16 p5, p7

    .line 586
    :cond_8
    if-eqz p15, :cond_14

    if-nez v23, :cond_14

    .line 587
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 588
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_13

    .line 589
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    .line 597
    .end local v16    # "ex":D
    .local v15, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    aput p2, v25, v2

    .line 598
    add-int/lit8 v2, v26, 0x1

    aput p8, v25, v2

    .line 599
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v15

    aput v3, v25, v2

    .line 601
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    .line 602
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 603
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 605
    if-eqz p14, :cond_9

    .line 606
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 608
    :cond_9
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 609
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 613
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_15

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v22

    .line 620
    :goto_6
    if-eqz p25, :cond_f

    .line 623
    if-eqz p29, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_16

    const/4 v12, 0x1

    .line 625
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    if-nez p29, :cond_b

    :cond_a
    if-eqz v18, :cond_c

    if-nez p29, :cond_c

    :cond_b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_e

    :cond_c
    if-nez v18, :cond_17

    if-nez v13, :cond_d

    if-nez p29, :cond_17

    :cond_d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17

    :cond_e
    const/4 v14, 0x1

    .line 630
    .local v14, "doEllipsis":Z
    :goto_8
    if-eqz v14, :cond_f

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 631
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 637
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 638
    return p8

    .line 559
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "extra":I
    .end local v18    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 560
    .restart local v18    # "firstLine":Z
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 561
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 591
    .restart local v16    # "ex":D
    .restart local v23    # "lastLine":Z
    :cond_13
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 594
    .end local v15    # "extra":I
    .end local v16    # "ex":D
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 616
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_6

    .line 623
    :cond_16
    const/4 v12, 0x0

    goto :goto_7

    .line 625
    .restart local v12    # "forceEllipsis":Z
    :cond_17
    const/4 v14, 0x0

    goto :goto_8
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 854
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 134
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 164
    const/16 v92, 0x0

    .line 165
    .local v92, "breakOpp":[I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v114

    .line 167
    .local v114, "localeLanguageTag":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 169
    const/4 v13, 0x0

    .line 170
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 172
    .local v20, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 173
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 175
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v115, v0

    .line 177
    .local v115, "measured":Landroid/text/MeasuredText;
    const/16 v128, 0x0

    .line 178
    .local v128, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v128, p1

    .line 179
    check-cast v128, Landroid/text/Spanned;

    .line 182
    :cond_1
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_2d

    .line 183
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v36

    .line 184
    .local v36, "paraEnd":I
    if-gez v36, :cond_4

    .line 185
    move/from16 v36, p3

    .line 189
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v98, v5, 0x1

    .line 190
    .local v98, "firstWidthLineLimit":I
    move/from16 v97, p5

    .line 191
    .local v97, "firstWidth":I
    move/from16 v123, p5

    .line 193
    .local v123, "restWidth":I
    const/16 v16, 0x0

    .line 195
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v128, :cond_9

    .line 196
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v128

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v124

    check-cast v124, [Landroid/text/style/LeadingMarginSpan;

    .line 198
    .local v124, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v107, 0x0

    .local v107, "i":I
    :goto_3
    move-object/from16 v0, v124

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_5

    .line 199
    aget-object v111, v124, v107

    .line 200
    .local v111, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v124, v107

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v97, v97, v5

    .line 201
    aget-object v5, v124, v107

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v123, v123, v5

    .line 205
    move-object/from16 v0, v111

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v112, v111

    .line 206
    check-cast v112, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 207
    .local v112, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v128

    move-object/from16 v1, v112

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v113

    .line 208
    .local v113, "lmsFirstLine":I
    invoke-interface/range {v112 .. v112}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v5, v5, v113

    move/from16 v0, v98

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v98

    .line 198
    .end local v112    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v113    # "lmsFirstLine":I
    :cond_2
    add-int/lit8 v107, v107, 0x1

    goto :goto_3

    .line 170
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v36    # "paraEnd":I
    .end local v97    # "firstWidth":I
    .end local v98    # "firstWidthLineLimit":I
    .end local v107    # "i":I
    .end local v111    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v115    # "measured":Landroid/text/MeasuredText;
    .end local v123    # "restWidth":I
    .end local v124    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v128    # "spanned":Landroid/text/Spanned;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 187
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v36    # "paraEnd":I
    .restart local v115    # "measured":Landroid/text/MeasuredText;
    .restart local v128    # "spanned":Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 213
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v97    # "firstWidth":I
    .restart local v98    # "firstWidthLineLimit":I
    .restart local v107    # "i":I
    .restart local v123    # "restWidth":I
    .restart local v124    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v128

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 215
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 216
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 218
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v17

    .line 221
    :cond_7
    const/16 v107, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_9

    .line 222
    aget-object v5, v16, v107

    move-object/from16 v0, v128

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v116

    .line 224
    .local v116, "o":I
    move/from16 v0, v116

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 228
    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v107

    .line 221
    :goto_5
    add-int/lit8 v107, v107, 0x1

    goto :goto_4

    .line 232
    :cond_8
    aput v13, v17, v107

    goto :goto_5

    .line 238
    .end local v107    # "i":I
    .end local v116    # "o":I
    .end local v124    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 239
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 240
    .local v27, "chs":[C
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 241
    .local v28, "widths":[F
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 242
    .local v21, "chdirs":[B
    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 243
    .local v22, "dir":I
    move-object/from16 v0, v115

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 245
    .local v23, "easy":Z
    sub-int v5, v36, v29

    move-object/from16 v0, v114

    move-object/from16 v1, v27

    move-object/from16 v2, v92

    invoke-static {v0, v1, v5, v2}, Landroid/text/StaticLayout;->nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I

    move-result-object v92

    .line 246
    const/16 v93, 0x0

    .line 248
    .local v93, "breakOppIndex":I
    move/from16 v133, v97

    .line 250
    .local v133, "width":I
    const/16 v60, 0x0

    .line 252
    .local v60, "w":F
    move/from16 v7, v29

    .line 256
    .local v7, "here":I
    move/from16 v117, v29

    .line 257
    .local v117, "ok":I
    move/from16 v122, v60

    .line 258
    .local v122, "okWidth":F
    const/16 v118, 0x0

    .local v118, "okAscent":I
    const/16 v120, 0x0

    .local v120, "okDescent":I
    const/16 v121, 0x0

    .local v121, "okTop":I
    const/16 v119, 0x0

    .line 262
    .local v119, "okBottom":I
    move/from16 v99, v29

    .line 263
    .local v99, "fit":I
    move/from16 v100, v60

    .line 264
    .local v100, "fitWidth":F
    const/16 v37, 0x0

    .local v37, "fitAscent":I
    const/16 v38, 0x0

    .local v38, "fitDescent":I
    const/16 v39, 0x0

    .local v39, "fitTop":I
    const/16 v40, 0x0

    .line 266
    .local v40, "fitBottom":I
    move/from16 v101, v60

    .line 268
    .local v101, "fitWidthGraphing":F
    const/16 v19, 0x0

    .line 269
    .local v19, "hasTabOrEmoji":Z
    const/16 v106, 0x0

    .line 270
    .local v106, "hasTab":Z
    const/16 v130, 0x0

    .line 272
    .local v130, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v127, v29

    .local v127, "spanStart":I
    :goto_6
    move/from16 v0, v127

    move/from16 v1, v36

    if-ge v0, v1, :cond_2a

    .line 274
    if-nez v128, :cond_11

    .line 275
    move/from16 v125, v36

    .line 276
    .local v125, "spanEnd":I
    sub-int v126, v125, v127

    .line 277
    .local v126, "spanLen":I
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move/from16 v2, v126

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 288
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    .line 289
    .local v105, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v103, v0

    .line 290
    .local v103, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v102, v0

    .line 291
    .local v102, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    .line 293
    .local v104, "fmDescent":I
    move/from16 v110, v127

    .local v110, "j":I
    :goto_8
    move/from16 v0, v110

    move/from16 v1, v125

    if-ge v0, v1, :cond_24

    .line 294
    sub-int v5, v110, v29

    aget-char v94, v27, v5

    .line 296
    .local v94, "c":C
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_12

    .line 347
    :goto_9
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_a

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_a

    const/16 v5, 0x200b

    move/from16 v0, v94

    if-ne v0, v5, :cond_1a

    :cond_a
    const/16 v109, 0x1

    .line 349
    .local v109, "isSpaceOrTab":Z
    :goto_a
    move/from16 v0, v133

    int-to-float v5, v0

    cmpg-float v5, v60, v5

    if-lez v5, :cond_b

    if-eqz v109, :cond_21

    .line 350
    :cond_b
    move/from16 v100, v60

    .line 351
    if-nez v109, :cond_c

    .line 352
    move/from16 v101, v60

    .line 354
    :cond_c
    add-int/lit8 v99, v110, 0x1

    .line 356
    move/from16 v0, v105

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    .line 357
    move/from16 v39, v105

    .line 358
    :cond_d
    move/from16 v0, v102

    move/from16 v1, v37

    if-ge v0, v1, :cond_e

    .line 359
    move/from16 v37, v102

    .line 360
    :cond_e
    move/from16 v0, v104

    move/from16 v1, v38

    if-le v0, v1, :cond_f

    .line 361
    move/from16 v38, v104

    .line 362
    :cond_f
    move/from16 v0, v103

    move/from16 v1, v40

    if-le v0, v1, :cond_10

    .line 363
    move/from16 v40, v103

    .line 366
    :cond_10
    :goto_b
    aget v5, v92, v93

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1b

    aget v5, v92, v93

    sub-int v6, v110, v29

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_1b

    .line 367
    add-int/lit8 v93, v93, 0x1

    goto :goto_b

    .line 279
    .end local v94    # "c":C
    .end local v102    # "fmAscent":I
    .end local v103    # "fmBottom":I
    .end local v104    # "fmDescent":I
    .end local v105    # "fmTop":I
    .end local v109    # "isSpaceOrTab":Z
    .end local v110    # "j":I
    .end local v125    # "spanEnd":I
    .end local v126    # "spanLen":I
    :cond_11
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move/from16 v1, v127

    move/from16 v2, v36

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v125

    .line 281
    .restart local v125    # "spanEnd":I
    sub-int v126, v125, v127

    .line 282
    .restart local v126    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move/from16 v1, v127

    move/from16 v2, v125

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    check-cast v129, [Landroid/text/style/MetricAffectingSpan;

    .line 284
    .local v129, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move-object/from16 v1, v128

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    .end local v129    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v129, [Landroid/text/style/MetricAffectingSpan;

    .line 285
    .restart local v129    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move-object/from16 v2, v129

    move/from16 v3, v126

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 298
    .end local v129    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v94    # "c":C
    .restart local v102    # "fmAscent":I
    .restart local v103    # "fmBottom":I
    .restart local v104    # "fmDescent":I
    .restart local v105    # "fmTop":I
    .restart local v110    # "j":I
    :cond_12
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_15

    .line 299
    if-nez v106, :cond_13

    .line 300
    const/16 v106, 0x1

    .line 301
    const/16 v19, 0x1

    .line 302
    if-eqz v128, :cond_13

    .line 304
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v128

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    check-cast v129, [Landroid/text/style/TabStopSpan;

    .line 306
    .local v129, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v129

    array-length v5, v0

    if-lez v5, :cond_13

    .line 307
    new-instance v130, Landroid/text/Layout$TabStops;

    .end local v130    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v130

    move-object/from16 v1, v129

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 311
    .end local v129    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v130    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_13
    if-eqz v130, :cond_14

    .line 312
    move-object/from16 v0, v130

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v60

    goto/16 :goto_9

    .line 314
    :cond_14
    const/16 v5, 0x14

    move/from16 v0, v60

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v60

    goto/16 :goto_9

    .line 316
    :cond_15
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_19

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_19

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_19

    .line 318
    sub-int v5, v110, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v95

    .line 320
    .local v95, "emoji":I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v95

    if-lt v0, v5, :cond_18

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v95

    if-gt v0, v5, :cond_18

    .line 321
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v91

    .line 323
    .local v91, "bm":Landroid/graphics/Bitmap;
    if-eqz v91, :cond_17

    .line 326
    if-nez v128, :cond_16

    .line 327
    move-object/from16 v131, p4

    .line 332
    .local v131, "whichPaint":Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v91 .. v91}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v131 .. v131}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v91 .. v91}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v132, v5, v6

    .line 334
    .local v132, "wid":F
    add-float v60, v60, v132

    .line 335
    const/16 v19, 0x1

    .line 336
    add-int/lit8 v110, v110, 0x1

    .line 337
    goto/16 :goto_9

    .line 329
    .end local v131    # "whichPaint":Landroid/graphics/Paint;
    .end local v132    # "wid":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v131, v0

    .restart local v131    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_c

    .line 338
    .end local v131    # "whichPaint":Landroid/graphics/Paint;
    :cond_17
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 341
    .end local v91    # "bm":Landroid/graphics/Bitmap;
    :cond_18
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 344
    .end local v95    # "emoji":I
    :cond_19
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 347
    :cond_1a
    const/16 v109, 0x0

    goto/16 :goto_a

    .line 369
    .restart local v109    # "isSpaceOrTab":Z
    :cond_1b
    move-object/from16 v0, v92

    array-length v5, v0

    move/from16 v0, v93

    if-ge v0, v5, :cond_20

    aget v5, v92, v93

    sub-int v6, v110, v29

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_20

    const/16 v108, 0x1

    .line 372
    .local v108, "isLineBreak":Z
    :goto_d
    if-eqz v108, :cond_1f

    .line 373
    move/from16 v122, v101

    .line 374
    add-int/lit8 v117, v110, 0x1

    .line 376
    move/from16 v0, v39

    move/from16 v1, v121

    if-ge v0, v1, :cond_1c

    .line 377
    move/from16 v121, v39

    .line 378
    :cond_1c
    move/from16 v0, v37

    move/from16 v1, v118

    if-ge v0, v1, :cond_1d

    .line 379
    move/from16 v118, v37

    .line 380
    :cond_1d
    move/from16 v0, v38

    move/from16 v1, v120

    if-le v0, v1, :cond_1e

    .line 381
    move/from16 v120, v38

    .line 382
    :cond_1e
    move/from16 v0, v40

    move/from16 v1, v119

    if-le v0, v1, :cond_1f

    .line 383
    move/from16 v119, v40

    .line 293
    .end local v108    # "isLineBreak":Z
    :cond_1f
    add-int/lit8 v110, v110, 0x1

    goto/16 :goto_8

    .line 369
    :cond_20
    const/16 v108, 0x0

    goto :goto_d

    .line 390
    :cond_21
    move/from16 v0, v117

    if-eq v0, v7, :cond_25

    .line 391
    move/from16 v96, v117

    .line 392
    .local v96, "endPos":I
    move/from16 v9, v118

    .line 393
    .local v9, "above":I
    move/from16 v10, v120

    .line 394
    .local v10, "below":I
    move/from16 v11, v121

    .line 395
    .local v11, "top":I
    move/from16 v12, v119

    .line 396
    .local v12, "bottom":I
    move/from16 v32, v122

    .line 419
    .local v32, "currentTextWidth":F
    :goto_e
    move/from16 v8, v96

    .line 420
    .local v8, "ellipseEnd":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p12

    if-ne v0, v5, :cond_22

    .line 421
    move/from16 v8, v36

    .line 423
    :cond_22
    const/16 v34, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 430
    move/from16 v7, v96

    .line 431
    add-int/lit8 v110, v7, -0x1

    .line 432
    move/from16 v99, v7

    move/from16 v117, v7

    .line 433
    const/16 v60, 0x0

    .line 434
    move/from16 v101, v60

    .line 435
    const/16 v40, 0x0

    move/from16 v39, v40

    move/from16 v38, v40

    move/from16 v37, v40

    .line 436
    const/16 v119, 0x0

    move/from16 v121, v119

    move/from16 v120, v119

    move/from16 v118, v119

    .line 438
    add-int/lit8 v98, v98, -0x1

    if-gtz v98, :cond_23

    .line 439
    move/from16 v133, v123

    .line 442
    :cond_23
    move/from16 v0, v127

    if-ge v7, v0, :cond_28

    .line 445
    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 446
    move/from16 v125, v7

    .line 272
    .end local v8    # "ellipseEnd":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v94    # "c":C
    .end local v96    # "endPos":I
    .end local v109    # "isSpaceOrTab":Z
    :cond_24
    move/from16 v127, v125

    goto/16 :goto_6

    .line 397
    .restart local v94    # "c":C
    .restart local v109    # "isSpaceOrTab":Z
    :cond_25
    move/from16 v0, v99

    if-eq v0, v7, :cond_26

    .line 398
    move/from16 v96, v99

    .line 399
    .restart local v96    # "endPos":I
    move/from16 v9, v37

    .line 400
    .restart local v9    # "above":I
    move/from16 v10, v38

    .line 401
    .restart local v10    # "below":I
    move/from16 v11, v39

    .line 402
    .restart local v11    # "top":I
    move/from16 v12, v40

    .line 403
    .restart local v12    # "bottom":I
    move/from16 v32, v100

    .restart local v32    # "currentTextWidth":F
    goto :goto_e

    .line 406
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v96    # "endPos":I
    :cond_26
    add-int/lit8 v96, v7, 0x1

    .line 409
    .restart local v96    # "endPos":I
    :goto_f
    move/from16 v0, v96

    move/from16 v1, v125

    if-ge v0, v1, :cond_27

    sub-int v5, v96, v29

    aget v5, v28, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_27

    .line 410
    add-int/lit8 v96, v96, 0x1

    goto :goto_f

    .line 412
    :cond_27
    move/from16 v9, v102

    .line 413
    .restart local v9    # "above":I
    move/from16 v10, v104

    .line 414
    .restart local v10    # "below":I
    move/from16 v11, v105

    .line 415
    .restart local v11    # "top":I
    move/from16 v12, v103

    .line 416
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto/16 :goto_e

    .line 450
    .restart local v8    # "ellipseEnd":I
    :cond_28
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_1f

    .line 506
    .end local v7    # "here":I
    .end local v8    # "ellipseEnd":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v32    # "currentTextWidth":F
    .end local v36    # "paraEnd":I
    .end local v37    # "fitAscent":I
    .end local v38    # "fitDescent":I
    .end local v39    # "fitTop":I
    .end local v40    # "fitBottom":I
    .end local v60    # "w":F
    .end local v93    # "breakOppIndex":I
    .end local v94    # "c":C
    .end local v96    # "endPos":I
    .end local v97    # "firstWidth":I
    .end local v98    # "firstWidthLineLimit":I
    .end local v99    # "fit":I
    .end local v100    # "fitWidth":F
    .end local v101    # "fitWidthGraphing":F
    .end local v102    # "fmAscent":I
    .end local v103    # "fmBottom":I
    .end local v104    # "fmDescent":I
    .end local v105    # "fmTop":I
    .end local v106    # "hasTab":Z
    .end local v109    # "isSpaceOrTab":Z
    .end local v110    # "j":I
    .end local v117    # "ok":I
    .end local v118    # "okAscent":I
    .end local v119    # "okBottom":I
    .end local v120    # "okDescent":I
    .end local v121    # "okTop":I
    .end local v122    # "okWidth":F
    .end local v123    # "restWidth":I
    .end local v125    # "spanEnd":I
    .end local v126    # "spanLen":I
    .end local v127    # "spanStart":I
    .end local v130    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v133    # "width":I
    :cond_29
    :goto_10
    return-void

    .line 457
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v36    # "paraEnd":I
    .restart local v37    # "fitAscent":I
    .restart local v38    # "fitDescent":I
    .restart local v39    # "fitTop":I
    .restart local v40    # "fitBottom":I
    .restart local v60    # "w":F
    .restart local v93    # "breakOppIndex":I
    .restart local v97    # "firstWidth":I
    .restart local v98    # "firstWidthLineLimit":I
    .restart local v99    # "fit":I
    .restart local v100    # "fitWidth":F
    .restart local v101    # "fitWidthGraphing":F
    .restart local v106    # "hasTab":Z
    .restart local v117    # "ok":I
    .restart local v118    # "okAscent":I
    .restart local v119    # "okBottom":I
    .restart local v120    # "okDescent":I
    .restart local v121    # "okTop":I
    .restart local v122    # "okWidth":F
    .restart local v123    # "restWidth":I
    .restart local v127    # "spanStart":I
    .restart local v130    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v133    # "width":I
    :cond_2a
    move/from16 v0, v36

    if-eq v0, v7, :cond_2c

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_2c

    .line 458
    or-int v5, v39, v40

    or-int v5, v5, v38

    or-int v5, v5, v37

    if-nez v5, :cond_2b

    .line 459
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 461
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v39, v0

    .line 462
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v40, v0

    .line 463
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v37, v0

    .line 464
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v38, v0

    .line 469
    :cond_2b
    move/from16 v0, v36

    move/from16 v1, p3

    if-eq v0, v1, :cond_2f

    const/16 v62, 0x1

    :goto_11
    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move/from16 v35, v7

    move/from16 v41, v13

    move/from16 v42, p7

    move/from16 v43, p8

    move-object/from16 v44, v16

    move-object/from16 v45, v17

    move-object/from16 v46, v18

    move/from16 v47, v19

    move/from16 v48, v20

    move-object/from16 v49, v21

    move/from16 v50, v22

    move/from16 v51, v23

    move/from16 v52, p3

    move/from16 v53, p9

    move/from16 v54, p10

    move-object/from16 v55, v27

    move-object/from16 v56, v28

    move/from16 v57, v29

    move-object/from16 v58, p12

    move/from16 v59, p11

    move-object/from16 v61, p4

    invoke-direct/range {v33 .. v62}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 481
    :cond_2c
    move/from16 v29, v36

    .line 483
    move/from16 v0, v36

    move/from16 v1, p3

    if-ne v0, v1, :cond_30

    .line 487
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v36    # "paraEnd":I
    .end local v37    # "fitAscent":I
    .end local v38    # "fitDescent":I
    .end local v39    # "fitTop":I
    .end local v40    # "fitBottom":I
    .end local v60    # "w":F
    .end local v93    # "breakOppIndex":I
    .end local v97    # "firstWidth":I
    .end local v98    # "firstWidthLineLimit":I
    .end local v99    # "fit":I
    .end local v100    # "fitWidth":F
    .end local v101    # "fitWidthGraphing":F
    .end local v106    # "hasTab":Z
    .end local v117    # "ok":I
    .end local v118    # "okAscent":I
    .end local v119    # "okBottom":I
    .end local v120    # "okDescent":I
    .end local v121    # "okTop":I
    .end local v122    # "okWidth":F
    .end local v123    # "restWidth":I
    .end local v127    # "spanStart":I
    .end local v130    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v133    # "width":I
    :cond_2d
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_2e

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_29

    :cond_2e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_29

    .line 491
    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 493
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 495
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v65, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v66, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v68, v0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v75, 0x0

    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v77, v0

    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v78, v0

    move-object/from16 v0, v115

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v79, v0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v88, 0x0

    const/16 v90, 0x0

    move-object/from16 v61, p0

    move-object/from16 v62, p1

    move/from16 v63, p3

    move/from16 v64, p3

    move/from16 v69, v13

    move/from16 v70, p7

    move/from16 v71, p8

    move-object/from16 v74, v18

    move/from16 v76, v20

    move/from16 v80, p3

    move/from16 v81, p9

    move/from16 v82, p10

    move/from16 v85, p2

    move-object/from16 v86, p12

    move/from16 v87, p11

    move-object/from16 v89, p4

    invoke-direct/range {v61 .. v90}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    goto/16 :goto_10

    .line 469
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v36    # "paraEnd":I
    .restart local v37    # "fitAscent":I
    .restart local v38    # "fitDescent":I
    .restart local v39    # "fitTop":I
    .restart local v40    # "fitBottom":I
    .restart local v60    # "w":F
    .restart local v93    # "breakOppIndex":I
    .restart local v97    # "firstWidth":I
    .restart local v98    # "firstWidthLineLimit":I
    .restart local v99    # "fit":I
    .restart local v100    # "fitWidth":F
    .restart local v101    # "fitWidthGraphing":F
    .restart local v106    # "hasTab":Z
    .restart local v117    # "ok":I
    .restart local v118    # "okAscent":I
    .restart local v119    # "okBottom":I
    .restart local v120    # "okDescent":I
    .restart local v121    # "okTop":I
    .restart local v122    # "okWidth":F
    .restart local v123    # "restWidth":I
    .restart local v127    # "spanStart":I
    .restart local v130    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v133    # "width":I
    :cond_2f
    const/16 v62, 0x0

    goto/16 :goto_11

    .line 182
    :cond_30
    move/from16 v29, v36

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 827
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 828
    const/4 v0, 0x0

    .line 831
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 836
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 837
    const/4 v0, 0x0

    .line 840
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 807
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 787
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 788
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 790
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 792
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 812
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 751
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 752
    .local v1, "high":I
    const/4 v3, -0x1

    .line 754
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 755
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 756
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 757
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 758
    move v1, v0

    goto :goto_0

    .line 760
    :cond_0
    move v3, v0

    goto :goto_0

    .line 763
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 764
    const/4 v3, 0x0

    .line 766
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 797
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 777
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 778
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 780
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 782
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 802
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 849
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 850
    return-void
.end method
