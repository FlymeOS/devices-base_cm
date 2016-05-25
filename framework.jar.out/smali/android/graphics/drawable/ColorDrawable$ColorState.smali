.class final Landroid/graphics/drawable/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mUseColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 285
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 289
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 285
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 292
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    .line 293
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 294
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 295
    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 296
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 297
    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 298
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/graphics/drawable/ColorDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 312
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/graphics/drawable/ColorDrawable$1;)V

    return-object v0
.end method
