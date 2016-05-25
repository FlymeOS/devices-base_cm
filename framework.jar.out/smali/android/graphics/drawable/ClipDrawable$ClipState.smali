.class final Landroid/graphics/drawable/ClipDrawable$ClipState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ClipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClipState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mGravity:I

.field mOrientation:I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/graphics/drawable/ClipDrawable;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "orig"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "owner"    # Landroid/graphics/drawable/ClipDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    .line 361
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 355
    iput v2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 356
    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    .line 364
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    .line 365
    if-eqz p3, :cond_1

    .line 366
    iget-object v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 370
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 371
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 373
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 374
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 375
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 376
    iput-boolean v2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCanConstantState:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCheckedConstantState:Z

    .line 378
    :cond_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

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

    .line 402
    iget-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCanConstantState:Z

    .line 404
    iput-boolean v1, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCheckedConstantState:Z

    .line 407
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mCanConstantState:Z

    return v0

    .line 403
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 393
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V

    return-object v0
.end method
