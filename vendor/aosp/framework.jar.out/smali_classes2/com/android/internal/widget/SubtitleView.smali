.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Ljava/lang/StringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x1

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    .line 73
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 74
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 75
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 93
    sget-object v7, Landroid/R$styleable;->TextView:[I

    .line 92
    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v5, ""

    .line 96
    .local v5, "text":Ljava/lang/CharSequence;
    const/16 v6, 0xf

    .line 98
    .local v6, "textSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 99
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 102
    .local v1, "attr":I
    sparse-switch v1, :sswitch_data_0

    .line 99
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :sswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    .line 107
    :sswitch_1
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v7, v7

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    goto :goto_1

    .line 110
    :sswitch_2
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    goto :goto_1

    .line 113
    :sswitch_3
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto :goto_1

    .line 120
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 121
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050083

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 122
    const v7, 0x1050086

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    .line 123
    const v7, 0x1050084

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 124
    const v7, 0x1050085

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    .line 125
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    .line 127
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 128
    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 129
    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 131
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 132
    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    int-to-float v7, v6

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 89
    return-void

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_0
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
    .end sparse-switch
.end method

.method private computeMeasurements(I)Z
    .locals 9
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 242
    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    .line 243
    return v7

    .line 247
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    .line 248
    .local v8, "paddingX":I
    sub-int/2addr p1, v8

    .line 249
    if-gtz p1, :cond_1

    .line 250
    return v2

    .line 256
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 257
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 258
    new-instance v0, Landroid/text/StaticLayout;

    .line 259
    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    move v3, p1

    .line 258
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 261
    return v7
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 292
    .local v11, "layout":Landroid/text/StaticLayout;
    if-nez v11, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .line 297
    .local v17, "saveCount":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 298
    .local v10, "innerPaddingX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    .line 301
    .local v12, "lineCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    .line 302
    .local v18, "textPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 303
    .local v14, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 305
    .local v4, "bounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    move-result v19

    if-lez v19, :cond_1

    .line 306
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 307
    .local v7, "cornerRadius":F
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v15, v0

    .line 309
    .local v15, "previousBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_1

    .line 313
    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v19

    int-to-float v0, v10

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 314
    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v19

    int-to-float v0, v10

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 315
    iput v15, v4, Landroid/graphics/RectF;->top:F

    .line 316
    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 317
    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    .line 319
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v7, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 323
    .end local v7    # "cornerRadius":F
    .end local v9    # "i":I
    .end local v15    # "previousBottom":F
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 324
    .local v8, "edgeType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    .line 325
    sget-object v19, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    sget-object v19, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 330
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v12, :cond_3

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 330
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 333
    .end local v9    # "i":I
    :cond_2
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 353
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v12, :cond_a

    .line 357
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 356
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 335
    .end local v9    # "i":I
    :cond_4
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v8, v0, :cond_5

    .line 336
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 337
    :cond_5
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v8, v0, :cond_6

    const/16 v16, 0x1

    .line 338
    .local v16, "raised":Z
    :goto_4
    if-eqz v16, :cond_7

    const/4 v6, -0x1

    .line 339
    .local v6, "colorUp":I
    :goto_5
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 340
    .local v5, "colorDown":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v13, v19, v20

    .line 342
    .local v13, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    neg-float v0, v13

    move/from16 v20, v0

    neg-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 346
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    if-ge v9, v12, :cond_9

    .line 347
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 346
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 337
    .end local v5    # "colorDown":I
    .end local v6    # "colorUp":I
    .end local v9    # "i":I
    .end local v13    # "offset":F
    .end local v16    # "raised":Z
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "raised":Z
    goto :goto_4

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .restart local v6    # "colorUp":I
    goto :goto_5

    .line 339
    :cond_8
    const/4 v5, -0x1

    .restart local v5    # "colorDown":I
    goto :goto_6

    .line 350
    .restart local v9    # "i":I
    .restart local v13    # "offset":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13, v13, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    .line 360
    .end local v5    # "colorDown":I
    .end local v6    # "colorUp":I
    .end local v13    # "offset":F
    .end local v16    # "raised":Z
    :cond_a
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 361
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 290
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 236
    sub-int v0, p4, p2

    .line 238
    .local v0, "width":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x1000000

    .line 219
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 221
    .local v4, "widthSpec":I
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 225
    .local v1, "layout":Landroid/text/StaticLayout;
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .line 226
    .local v2, "paddingX":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    add-int v3, v5, v2

    .line 227
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int v0, v5, v6

    .line 228
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 218
    .end local v0    # "height":I
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "paddingX":I
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0, v6, v6}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 206
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 160
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 172
    return-void
.end method

.method public setEdgeType(I)V
    .locals 0
    .param p1, "edgeType"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 166
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 153
    return-void
.end method

.method public setStyle(I)V
    .locals 6
    .param p1, "styleId"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    .line 266
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 268
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 269
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v3

    .line 274
    .local v3, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :goto_0
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 275
    .local v2, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 275
    :goto_1
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 277
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 277
    :goto_2
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 279
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_3
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 280
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_4
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 281
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 283
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .line 284
    .local v4, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 264
    return-void

    .line 271
    .end local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v3, v5, p1

    .restart local v3    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    goto :goto_0

    .line 276
    .restart local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_1
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_1

    .line 278
    :cond_2
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_2

    .line 279
    :cond_3
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    .line 280
    :cond_4
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 140
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 143
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 186
    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 183
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 195
    :cond_0
    return-void
.end method
