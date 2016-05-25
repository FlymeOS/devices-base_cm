.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mInsetBottom:I

.field mInsetLeft:I

.field mInsetRight:I

.field mInsetTop:I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/graphics/drawable/InsetDrawable;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "owner"    # Landroid/graphics/drawable/InsetDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 427
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 428
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 429
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 430
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    .line 438
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    .line 439
    if-eqz p3, :cond_1

    .line 440
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 444
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 445
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 446
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 447
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 448
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 449
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 450
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 451
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    .line 454
    :cond_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 489
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    move-result v1

    .line 492
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 478
    iget-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    .line 480
    iput-boolean v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCheckedConstantState:Z

    .line 483
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mCanConstantState:Z

    return v0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 469
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V

    return-object v0
.end method
