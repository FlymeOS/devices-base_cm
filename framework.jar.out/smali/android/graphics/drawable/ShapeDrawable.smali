.class public Landroid/graphics/drawable/ShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ShapeDrawable$1;,
        Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;,
        Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 576
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 577
    iput-object p1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 579
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->initializeWithState(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    .line 580
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/ShapeDrawable$1;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 2
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 91
    return-void
.end method

.method private initializeWithState(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 588
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 589
    return-void
.end method

.method private static modulateAlpha(II)I
    .locals 2
    .param p0, "paintAlpha"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 210
    ushr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .line 211
    .local v0, "scale":I
    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private updateShape()V
    .locals 6

    .prologue
    .line 460
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 462
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 463
    .local v2, "w":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 465
    .local v0, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    int-to-float v4, v2

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 466
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    if-eqz v3, :cond_0

    .line 467
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    invoke-virtual {v4, v2, v0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;->resize(II)Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 470
    .end local v0    # "h":I
    .end local v1    # "r":Landroid/graphics/Rect;
    .end local v2    # "w":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 471
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, -0x1

    .line 426
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 427
    .local v3, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v2, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 430
    .local v2, "paint":Landroid/graphics/Paint;
    iget v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 433
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v6

    iput-object v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    .line 435
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 436
    .local v0, "color":I
    const/4 v6, 0x4

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 437
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    invoke-virtual {v2}, Landroid/graphics/Paint;->isDither()Z

    move-result v1

    .line 440
    .local v1, "dither":Z
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 441
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 443
    const/4 v6, 0x3

    iget v7, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 445
    const/4 v6, 0x2

    iget v7, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 448
    const/4 v6, 0x5

    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 449
    .local v5, "tintMode":I
    if-eq v5, v8, :cond_0

    .line 450
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 453
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 454
    .local v4, "tint":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_1

    .line 455
    iput-object v4, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 457
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 412
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 413
    .local v1, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    if-nez v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 418
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 419
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 422
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->initializeWithState(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    .line 516
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 226
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 227
    .local v5, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v2, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 229
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 230
    .local v3, "prevAlpha":I
    iget v6, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    invoke-static {v3, v6}, Landroid/graphics/drawable/ShapeDrawable;->modulateAlpha(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 233
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Paint;->hasShadowLayer()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    :cond_0
    iget-object v6, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v6

    if-nez v6, :cond_2

    .line 236
    iget-object v6, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 237
    const/4 v0, 0x1

    .line 242
    .local v0, "clearColorFilter":Z
    :goto_0
    iget-object v6, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v6, :cond_3

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 246
    .local v1, "count":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 247
    iget-object v6, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0, v6, p1, v2}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 248
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 253
    .end local v1    # "count":I
    :goto_1
    if-eqz v0, :cond_1

    .line 254
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 259
    .end local v0    # "clearColorFilter":Z
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    return-void

    .line 239
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clearColorFilter":Z
    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 484
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 309
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-nez v2, :cond_1

    .line 310
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 311
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    if-nez v2, :cond_1

    .line 312
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 313
    .local v0, "alpha":I
    if-nez v0, :cond_0

    .line 314
    const/4 v2, -0x2

    .line 322
    .end local v0    # "alpha":I
    .end local v1    # "p":Landroid/graphics/Paint;
    :goto_0
    return v2

    .line 316
    .restart local v0    # "alpha":I
    .restart local v1    # "p":Landroid/graphics/Paint;
    :cond_0
    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    .line 317
    const/4 v2, -0x1

    goto :goto_0

    .line 322
    .end local v0    # "alpha":I
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_1
    const/4 v2, -0x3

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 475
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/shapes/Shape;->getOutline(Landroid/graphics/Outline;)V

    .line 477
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 479
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 201
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShaderFactory()Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 384
    sget-object v4, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    invoke-static {p1, p4, p3, v4}, Landroid/graphics/drawable/ShapeDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 385
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 386
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 391
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 392
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 396
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    const-string v4, "drawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for ShapeDrawable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {p0, v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->initializeWithState(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;)V

    .line 406
    return-void
.end method

.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 360
    const-string/jumbo v3, "padding"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    sget-object v3, Lcom/android/internal/R$styleable;->ShapeDrawablePadding:[I

    invoke-virtual {p2, p4, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 363
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 372
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 376
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 350
    .local v0, "s":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 489
    iget-boolean v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 490
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 495
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 501
    :goto_1
    :try_start_0
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v2}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    iput-boolean v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    .line 507
    .end local p0    # "this":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    :goto_2
    return-object p0

    .line 493
    .restart local p0    # "this":Landroid/graphics/drawable/ShapeDrawable;
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 498
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 p0, 0x0

    goto :goto_2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 334
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 335
    return-void
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 220
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 221
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    .line 339
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 340
    .local v0, "state":Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 342
    const/4 v1, 0x1

    .line 344
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 278
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 279
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 280
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 303
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 304
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 305
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 327
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 328
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 329
    return-void
.end method

.method public setIntrinsicHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 185
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 187
    return-void
.end method

.method public setIntrinsicWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 177
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 142
    or-int v0, p1, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 150
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 151
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 148
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 166
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 167
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 164
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V
    .locals 1
    .param p1, "fact"    # Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 116
    return-void
.end method

.method public setShape(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 105
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 106
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 291
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 292
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 297
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/ShapeDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 298
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 299
    return-void
.end method
