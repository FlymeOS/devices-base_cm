.class public Landroid/view/animation/AnticipateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AnticipateInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 38
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 39
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "tension"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 47
    iput p1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 57
    if-eqz p2, :cond_0

    .line 58
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/animation/AnticipateInterpolator;->setChangingConfiguration(I)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void

    .line 60
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createAnticipateInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 70
    mul-float v0, p1, p1

    iget v1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
