.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"


# static fields
.field private static final STATE_ENABLED:[I


# instance fields
.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mChanged:Z

.field private mExtent:I

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private final mTempBounds:Landroid/graphics/Rect;

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Landroid/widget/ScrollBarDrawable;->STATE_ENABLED:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    move/from16 v17, v0

    .line 106
    .local v17, "vertical":Z
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 107
    .local v11, "extent":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 109
    .local v14, "range":I
    const/4 v10, 0x1

    .line 110
    .local v10, "drawTrack":Z
    const/4 v9, 0x1

    .line 111
    .local v9, "drawThumb":Z
    if-lez v11, :cond_0

    if-gt v14, v11, :cond_1

    .line 112
    :cond_0
    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 113
    :goto_0
    const/4 v9, 0x0

    .line 116
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 117
    .local v13, "r":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v13, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v13, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sget-object v8, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 112
    .end local v13    # "r":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    goto :goto_0

    .line 120
    .restart local v13    # "r":Landroid/graphics/Rect;
    :cond_4
    if-eqz v10, :cond_5

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 124
    :cond_5
    if-eqz v9, :cond_2

    .line 125
    if-eqz v17, :cond_8

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 126
    .local v15, "size":I
    :goto_2
    if-eqz v17, :cond_9

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 127
    .local v16, "thickness":I
    :goto_3
    int-to-float v3, v15

    int-to-float v4, v11

    mul-float/2addr v3, v4

    int-to-float v4, v14

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 128
    .local v7, "length":I
    sub-int v3, v15, v7

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-int v4, v14, v11

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 131
    .local v6, "offset":I
    mul-int/lit8 v12, v16, 0x2

    .line 132
    .local v12, "minLength":I
    if-ge v7, v12, :cond_6

    .line 133
    move v7, v12

    .line 136
    :cond_6
    add-int v3, v6, v7

    if-le v3, v15, :cond_7

    .line 137
    sub-int v6, v15, v7

    :cond_7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v13

    move/from16 v8, v17

    .line 140
    invoke-virtual/range {v3 .. v8}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    goto :goto_1

    .line 125
    .end local v6    # "offset":I
    .end local v7    # "length":I
    .end local v12    # "minLength":I
    .end local v15    # "size":I
    .end local v16    # "thickness":I
    :cond_8
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v15

    goto :goto_2

    .line 126
    .restart local v15    # "size":I
    :cond_9
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v16

    goto :goto_3
.end method

.method protected drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .prologue
    .line 166
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 167
    .local v2, "thumbRect":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 168
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 169
    if-eqz p5, :cond_5

    .line 170
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p3

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p3

    add-int/2addr v6, p4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    :cond_1
    :goto_1
    if-eqz p5, :cond_6

    .line 179
    iget-object v3, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 180
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 181
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 182
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    return-void

    .line 167
    .end local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    .restart local v0    # "changed":Z
    :cond_5
    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 185
    :cond_6
    iget-object v3, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 186
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 187
    .restart local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 188
    :cond_7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    .prologue
    .line 152
    if-eqz p3, :cond_2

    .line 153
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 157
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 158
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 161
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    :cond_1
    return-void

    .line 155
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, -0x3

    return v0
.end method

.method public getSize(Z)I
    .locals 2
    .param p1, "vertical"    # Z

    .prologue
    const/4 v0, 0x0

    .line 234
    if-eqz p1, :cond_2

    .line 235
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 238
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public mutate()Landroid/widget/ScrollBarDrawable;
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-nez v0, :cond_4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 246
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 249
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 255
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 258
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    .line 260
    :cond_4
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    .line 148
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 268
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 271
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 274
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 277
    :cond_3
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .line 60
    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 287
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 293
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 296
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 299
    :cond_3
    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 214
    if-eqz p1, :cond_1

    .line 215
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 218
    :cond_0
    sget-object v0, Landroid/widget/ScrollBarDrawable;->STATE_ENABLED:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 219
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 221
    :cond_1
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 224
    if-eqz p1, :cond_1

    .line 225
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 228
    :cond_0
    sget-object v0, Landroid/widget/ScrollBarDrawable;->STATE_ENABLED:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 230
    :cond_1
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 231
    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 2
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eq v0, p4, :cond_0

    .line 90
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    .line 93
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_2

    .line 94
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 97
    :cond_2
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 98
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 99
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 100
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 101
    return-void
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 194
    if-eqz p1, :cond_1

    .line 195
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_0
    sget-object v0, Landroid/widget/ScrollBarDrawable;->STATE_ENABLED:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 199
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_1
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 204
    if-eqz p1, :cond_1

    .line 205
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_0
    sget-object v0, Landroid/widget/ScrollBarDrawable;->STATE_ENABLED:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 210
    :cond_1
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v0, :cond_0

    const-string v0, " V"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " H"

    goto :goto_0
.end method
