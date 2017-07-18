.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# instance fields
.field protected mFromXDelta:F

.field private mFromXType:I

.field protected mFromXValue:F

.field protected mFromYDelta:F

.field private mFromYType:I

.field protected mFromYValue:F

.field protected mToXDelta:F

.field private mToXType:I

.field protected mToXValue:F

.field protected mToYDelta:F

.field private mToYType:I

.field protected mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 30
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 31
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 33
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 34
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 37
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 39
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 42
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 44
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 103
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 104
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 105
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 106
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 108
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 109
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 110
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 111
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 102
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2
    .param p1, "fromXType"    # I
    .param p2, "fromXValue"    # F
    .param p3, "toXType"    # I
    .param p4, "toXValue"    # F
    .param p5, "fromYType"    # I
    .param p6, "fromYValue"    # F
    .param p7, "toYType"    # I
    .param p8, "toYValue"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 30
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 31
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 33
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 34
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 37
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 39
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 42
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 44
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 145
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 146
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 147
    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 148
    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 150
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 151
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 152
    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 153
    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 31
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 33
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 34
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 37
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 39
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 42
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 44
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    .line 64
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 69
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 70
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 73
    const/4 v2, 0x1

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 74
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 75
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 78
    const/4 v2, 0x2

    .line 77
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 79
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 80
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 83
    const/4 v2, 0x3

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 84
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 85
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 159
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 160
    .local v0, "dx":F
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 161
    .local v1, "dy":F
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 162
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 164
    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 165
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 167
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 158
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 173
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 174
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 175
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 176
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    .line 171
    return-void
.end method
