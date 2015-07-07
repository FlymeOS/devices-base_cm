.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$IntHolder;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_AMPM_PRESSED:I = 0xff

.field private static final ALPHA_AMPM_SELECTED:I = 0x3c

.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_SELECTOR:I = 0x3c

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

.field private static final AMPM:I = 0x3

.field private static final CENTER_RADIUS:I = 0x2

.field private static final COSINE_30_DEGREES:F

.field private static final DEBUG:Z = false

.field private static final DEBUG_COLOR:I = 0x20ff0000

.field private static final DEBUG_STROKE_WIDTH:I = 0x2

.field private static final DEBUG_TEXT_COLOR:I = 0x60ff0000

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field private static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES:I = 0x1

.field private static final MINUTES_NUMBERS:[I

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SINE_30_DEGREES:F = 0.5f

.field private static final STATE_SET_SELECTED:[I

.field private static final TAG:Ljava/lang/String; = "ClockView"

.field private static sSnapPrefer30sMap:[I


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private final mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field private mAmOrPmPressed:I

.field private mAmPmCircleRadius:I

.field private mAmPmCircleRadiusMultiplier:F

.field private mAmPmSelectedColor:I

.field private final mAmPmText:[Ljava/lang/String;

.field private mAmPmTextColor:I

.field private mAmPmUnselectedColor:I

.field private mAmPmYCenter:F

.field private mAnimationRadiusMultiplier:[F

.field private mCircleRadius:[F

.field private mCircleRadiusMultiplier:[F

.field private final mColor:[I

.field private final mColorSelector:[[I

.field private mDisabledAlpha:I

.field private mHalfwayHypotenusePoint:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private final mHoursToMinutesAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextGridHeights:[F

.field private mInnerTextGridWidths:[F

.field private mInnerTextHours:[Ljava/lang/String;

.field private mInnerTextSize:F

.field private mInputEnabled:Z

.field private mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mLeftIndicatorXCenter:F

.field private mLineLength:[I

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxHypotenuseForOuterNumber:I

.field private mMinHypotenuseForInnerNumber:I

.field private final mMinuteToHoursAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinutesTexts:[Ljava/lang/String;

.field private mNumbersRadiusMultiplier:[F

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private mOuterTextMinutes:[Ljava/lang/String;

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintAmPmCircle:[Landroid/graphics/Paint;

.field private final mPaintAmPmText:Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintDebug:Landroid/graphics/Paint;

.field private final mPaintDisabled:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRightIndicatorXCenter:F

.field private mSelectionDegrees:[I

.field private mSelectionRadius:[I

.field private mSelectionRadiusMultiplier:F

.field private mShowHours:Z

.field private mTextGridHeights:[[F

.field private mTextGridWidths:[[F

.field private mTextSize:[F

.field private mTextSizeMultiplier:[F

.field private mTransition:Landroid/animation/AnimatorSet;

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 96
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sput v0, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    .line 102
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 104
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Landroid/widget/RadialTimePickerView;->STATE_SET_SELECTED:[I

    .line 110
    const/16 v0, 0x169

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    .line 217
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 218
    return-void

    .line 102
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 103
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 104
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 318
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 322
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 113
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 114
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 115
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 117
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    .line 119
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 120
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    .line 121
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    .line 123
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 125
    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, Landroid/graphics/Paint;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    .line 126
    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    .line 127
    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, Landroid/widget/RadialTimePickerView$IntHolder;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    .line 129
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    .line 130
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    .line 132
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 133
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintDisabled:Landroid/graphics/Paint;

    .line 134
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    .line 150
    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    .line 156
    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    .line 159
    const/4 v13, 0x2

    const/4 v14, 0x7

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    .line 160
    const/4 v13, 0x2

    const/4 v14, 0x7

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    .line 162
    const/4 v13, 0x7

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    .line 163
    const/4 v13, 0x7

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    .line 169
    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    .line 170
    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    .line 172
    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    .line 174
    const/4 v13, 0x3

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    .line 180
    new-instance v13, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .line 182
    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    .line 183
    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    .line 185
    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 204
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    .line 205
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 208
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    .line 209
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    .line 325
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 326
    .local v11, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x1010033

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v11, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 327
    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 331
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->TimePicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 334
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x7

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 336
    .local v3, "amPmBackgroundColor":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_0

    .line 337
    const v13, 0x10600ef

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 343
    :cond_0
    const/16 v13, 0xc

    const v14, 0x10600ee

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 345
    .local v4, "amPmSelectedColor":I
    const v13, 0x10100a1

    invoke-static {v3, v13, v4}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 348
    sget-object v13, Landroid/widget/RadialTimePickerView;->STATE_SET_SELECTED:[I

    invoke-virtual {v3, v13, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    .line 350
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmUnselectedColor:I

    .line 352
    const/4 v13, 0x6

    const v14, 0x10600ed

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmPmTextColor:I

    .line 355
    const-string/jumbo v13, "sans-serif"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 358
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v13, v13

    if-ge v8, v13, :cond_1

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v14, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v15, 0xff

    invoke-direct {v14, v15}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v14, v13, v8

    .line 358
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v13, v13

    if-ge v8, v13, :cond_3

    .line 362
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v13, v13, v8

    array-length v13, v13

    if-ge v9, v13, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v13, v13, v8

    new-instance v14, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v15, 0xff

    invoke-direct {v14, v15}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v14, v13, v9

    .line 362
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 361
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 367
    .end local v9    # "j":I
    :cond_3
    const/4 v13, 0x3

    const v14, 0x10600ed

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 370
    .local v10, "numbersTextColor":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v14, 0x0

    aput v10, v13, v14

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v14, 0x1

    aput v10, v13, v14

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x5

    const v16, 0x10600f0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    const v16, 0x10600f0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x5

    const v16, 0x10600f0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x5

    const v16, 0x10600f0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    const v16, 0x10600f0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 418
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x5

    const v16, 0x10600f0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    aput v15, v13, v14

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/RadialTimePickerView;->mAmPmTextColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 428
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 429
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x4

    const v15, 0x10600f1

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 445
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 446
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 447
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    .line 449
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 450
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 452
    const v13, 0x1040129

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    .line 454
    const v13, 0x104012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v14, 0x0

    const/4 v15, 0x7

    new-array v15, v15, [F

    aput-object v15, v13, v14

    .line 458
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v14, 0x1

    const/4 v15, 0x7

    new-array v15, v15, [F

    aput-object v15, v13, v14

    .line 460
    const v13, 0x1040121

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    .line 463
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 466
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setClickable(Z)V

    .line 469
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 470
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v13, 0xb

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 471
    .local v6, "currentHour":I
    const/16 v13, 0xc

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 473
    .local v7, "currentMinute":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 474
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 476
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 477
    return-void
.end method

.method private static calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 5
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "numbersRadius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "textGridHeights"    # [F
    .param p6, "textGridWidths"    # [F

    .prologue
    .line 997
    move v0, p1

    .line 999
    .local v0, "offset1":F
    sget v3, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    mul-float v1, p1, v3

    .line 1001
    .local v1, "offset2":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, p1, v3

    .line 1003
    .local v2, "offset3":F
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1005
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    .line 1007
    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    .line 1008
    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    .line 1009
    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    .line 1010
    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    .line 1011
    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    .line 1012
    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    .line 1013
    const/4 v3, 0x3

    aput p3, p5, v3

    .line 1014
    const/4 v3, 0x3

    aput p2, p6, v3

    .line 1015
    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    .line 1016
    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    .line 1017
    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    .line 1018
    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    .line 1019
    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    .line 1020
    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    .line 1021
    return-void
.end method

.method private calculateGridSizesHours()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 958
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .line 962
    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    .line 966
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v8

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float v3, v0, v2

    .line 971
    .local v3, "innerNumbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v2, v0, v7

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v0

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    .line 974
    .end local v3    # "innerNumbersRadius":F
    :cond_0
    return-void
.end method

.method private calculateGridSizesMinutes()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 978
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .line 982
    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    .line 984
    return-void
.end method

.method private drawAmPm(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 808
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isLayoutRtl()Z

    move-result v2

    .line 810
    .local v2, "isLayoutRtl":Z
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmUnselectedColor:I

    .line 811
    .local v1, "amColor":I
    const/16 v0, 0xff

    .line 812
    .local v0, "amAlpha":I
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmPmUnselectedColor:I

    .line 813
    .local v4, "pmColor":I
    const/16 v3, 0xff

    .line 814
    .local v3, "pmAlpha":I
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-nez v6, :cond_2

    .line 815
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    .line 816
    const/16 v0, 0x3c

    .line 821
    :cond_0
    :goto_0
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-nez v6, :cond_3

    .line 822
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    .line 823
    const/16 v0, 0xff

    .line 830
    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v11

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v11

    invoke-direct {p0, v1, v0}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 832
    if-eqz v2, :cond_4

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    :goto_2
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    iget v8, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v9, v9, v11

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 835
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v10

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 836
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v6, v6, v10

    invoke-direct {p0, v4, v3}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 837
    if-eqz v2, :cond_5

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    :goto_3
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    iget v8, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmCircle:[Landroid/graphics/Paint;

    aget-object v9, v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 841
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 842
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v5, v6, v7

    .line 845
    .local v5, "textYCenter":F
    if-eqz v2, :cond_6

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v10

    :goto_4
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 847
    if-eqz v2, :cond_7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v11

    :goto_5
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 849
    return-void

    .line 817
    .end local v5    # "textYCenter":F
    :cond_2
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v6, v10, :cond_0

    .line 818
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    .line 819
    const/16 v3, 0x3c

    goto/16 :goto_0

    .line 824
    :cond_3
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-ne v6, v10, :cond_1

    .line 825
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmPmSelectedColor:I

    .line 826
    const/16 v3, 0xff

    goto/16 :goto_1

    .line 832
    :cond_4
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    goto :goto_2

    .line 837
    :cond_5
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    goto :goto_3

    .line 845
    .restart local v5    # "textYCenter":F
    :cond_6
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v11

    goto :goto_4

    .line 847
    :cond_7
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v6, v6, v10

    goto :goto_5
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 799
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 800
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 795
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 796
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    mul-float v10, v19, v20

    .line 906
    .local v10, "outerRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    mul-float v7, v19, v20

    .line 910
    .local v7, "innerRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v8, v19, v10

    .line 917
    .local v8, "left":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v14, v19, v10

    .line 918
    .local v14, "top":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v12, v19, v10

    .line 919
    .local v12, "right":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v19, v10

    .line 920
    .local v5, "bottom":F
    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v14, v12, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v8, v19, v20

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v14, v19, v20

    .line 926
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v12, v19, v20

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v5, v19, v20

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v14, v12, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 936
    const-string v19, "%02d:%02d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 938
    .local v13, "selected":Ljava/lang/String;
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 940
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 941
    .local v15, "tv":Landroid/widget/TextView;
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 944
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 945
    .local v11, "paint":Landroid/graphics/Paint;
    const/high16 v19, 0x60ff0000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 947
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v16

    .line 949
    .local v16, "width":I
    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v19

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    sub-float v6, v19, v20

    .line 950
    .local v6, "height":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v19, v0

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    .line 951
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3fc00000    # 1.5f

    mul-float v20, v20, v6

    add-float v18, v19, v20

    .line 953
    .local v18, "y":F
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 954
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    .line 804
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    .line 805
    return-void

    .line 803
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;I)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, p2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, p2

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 862
    .local v14, "selectionRadians":D
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v4, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    add-int v11, v2, v3

    .line 863
    .local v11, "pointX":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v4, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    sub-int v12, v2, v3

    .line 870
    .local v12, "pointY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v9, v2, v3

    .line 871
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .line 872
    .local v8, "alpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v7, v2, v3

    .line 873
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 874
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 875
    int-to-float v2, v11

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v4, v4, p2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v9, v2, v3

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v7, v2, v3

    .line 883
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 884
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 885
    int-to-float v2, v11

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v4, v4, p2

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 895
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v9, v2, v3

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v7, v2, v3

    .line 898
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 899
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 900
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v2

    int-to-float v5, v11

    int-to-float v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 901
    return-void

    .line 889
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v2, v2, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, p2

    sub-int v10, v2, v3

    .line 890
    .local v10, "lineLength":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-double v4, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    add-int v11, v2, v3

    .line 891
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-double v4, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    sub-int v12, v2, v3

    goto :goto_0
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "texts"    # [Ljava/lang/String;
    .param p5, "textGridWidths"    # [F
    .param p6, "textGridHeights"    # [F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "color"    # I
    .param p9, "alpha"    # I

    .prologue
    .line 1028
    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1029
    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1030
    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1031
    invoke-direct {p0, p8, p9}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1032
    const/4 v0, 0x0

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x0

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1033
    const/4 v0, 0x1

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1034
    const/4 v0, 0x2

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1035
    const/4 v0, 0x3

    aget-object v0, p4, v0

    const/4 v1, 0x6

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1036
    const/4 v0, 0x4

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1037
    const/4 v0, 0x5

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1038
    const/4 v0, 0x6

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x6

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1039
    const/4 v0, 0x7

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1040
    const/16 v0, 0x8

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1041
    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1042
    const/16 v0, 0xa

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1043
    const/16 v0, 0xb

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1044
    return-void
.end method

.method private getDegreesFromXY(FF)I
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1215
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    sub-float v11, p2, v11

    iget v12, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v12, v12

    sub-float v12, p2, v12

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v12, v12

    sub-float v12, p1, v12

    iget v13, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v13, v13

    sub-float v13, p1, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 1219
    .local v4, "hypotenuse":D
    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    float-to-double v12, v11

    cmpl-double v11, v4, v12

    if-lez v11, :cond_0

    .line 1220
    const/4 v11, -0x1

    .line 1259
    :goto_0
    return v11

    .line 1223
    :cond_0
    iget-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v11, :cond_5

    iget-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v11, :cond_5

    .line 1224
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    int-to-double v12, v11

    cmpl-double v11, v4, v12

    if-ltz v11, :cond_3

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v12, v11

    cmpg-double v11, v4, v12

    if-gtz v11, :cond_3

    .line 1226
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1244
    :cond_1
    :goto_1
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    sub-float v11, p2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1245
    .local v8, "opposite":F
    float-to-double v12, v8

    div-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 1248
    .local v0, "degrees":D
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v11, v11

    cmpl-float v11, p1, v11

    if-lez v11, :cond_7

    const/4 v9, 0x1

    .line 1249
    .local v9, "rightSide":Z
    :goto_2
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    cmpg-float v11, p2, v11

    if-gez v11, :cond_8

    const/4 v10, 0x1

    .line 1250
    .local v10, "topSide":Z
    :goto_3
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 1251
    const-wide v12, 0x4056800000000000L    # 90.0

    sub-double v0, v12, v0

    .line 1259
    :cond_2
    :goto_4
    double-to-int v11, v0

    goto :goto_0

    .line 1227
    .end local v0    # "degrees":D
    .end local v8    # "opposite":F
    .end local v9    # "rightSide":Z
    .end local v10    # "topSide":Z
    :cond_3
    iget v11, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    int-to-double v12, v11

    cmpg-double v11, v4, v12

    if-gtz v11, :cond_4

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v12, v11

    cmpl-double v11, v4, v12

    if-ltz v11, :cond_4

    .line 1229
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    goto :goto_1

    .line 1231
    :cond_4
    const/4 v11, -0x1

    goto :goto_0

    .line 1234
    :cond_5
    iget-boolean v11, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v11, :cond_6

    const/4 v3, 0x0

    .line 1235
    .local v3, "index":I
    :goto_5
    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v11, v11, v3

    iget-object v12, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v12, v12, v3

    mul-float v6, v11, v12

    .line 1236
    .local v6, "length":F
    float-to-double v12, v6

    sub-double v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    double-to-int v2, v12

    .line 1237
    .local v2, "distanceToNumber":I
    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v11, v11, v3

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v13, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v13, v13, v3

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 1239
    .local v7, "maxAllowedDistance":I
    if-le v2, v7, :cond_1

    .line 1240
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 1234
    .end local v2    # "distanceToNumber":I
    .end local v3    # "index":I
    .end local v6    # "length":F
    .end local v7    # "maxAllowedDistance":I
    :cond_6
    const/4 v3, 0x1

    goto :goto_5

    .line 1248
    .restart local v0    # "degrees":D
    .restart local v8    # "opposite":F
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1249
    .restart local v9    # "rightSide":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 1252
    .restart local v10    # "topSide":Z
    :cond_9
    if-eqz v9, :cond_a

    if-nez v10, :cond_a

    .line 1253
    const-wide v12, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v12

    goto :goto_4

    .line 1254
    :cond_a
    if-nez v9, :cond_b

    if-nez v10, :cond_b

    .line 1255
    const-wide v12, 0x4070e00000000000L    # 270.0

    sub-double v0, v12, v0

    goto :goto_4

    .line 1256
    :cond_b
    if-nez v9, :cond_2

    if-eqz v10, :cond_2

    .line 1257
    const-wide v12, 0x4070e00000000000L    # 270.0

    add-double/2addr v0, v12

    goto :goto_4
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 16
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    .line 1117
    const/16 v5, 0x1f4

    .line 1120
    .local v5, "duration":I
    const/high16 v3, 0x3e800000    # 0.25f

    .line 1121
    .local v3, "delayMultiplier":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1122
    .local v12, "transitionDurationMultiplier":F
    add-float v11, v12, v3

    .line 1123
    .local v11, "totalDurationMultiplier":F
    int-to-float v13, v5

    mul-float/2addr v13, v11

    float-to-int v10, v13

    .line 1124
    .local v10, "totalDuration":I
    int-to-float v13, v5

    mul-float/2addr v13, v3

    int-to-float v14, v10

    div-float v4, v13, v14

    .line 1126
    .local v4, "delayPoint":F
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    .line 1127
    .local v7, "kf0":Landroid/animation/Keyframe;
    move/from16 v0, p1

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    .line 1128
    .local v8, "kf1":Landroid/animation/Keyframe;
    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v0, p2

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    .line 1129
    .local v9, "kf2":Landroid/animation/Keyframe;
    const-string/jumbo v13, "value"

    const/4 v14, 0x3

    new-array v14, v14, [Landroid/animation/Keyframe;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/4 v15, 0x2

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1131
    .local v6, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v10

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1133
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1134
    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    .line 1106
    const/16 v1, 0x1f4

    .line 1107
    .local v1, "duration":I
    const-string/jumbo v2, "value"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1108
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1109
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1111
    return-object v0
.end method

.method private getIsTouchingAmOrPm(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1263
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isLayoutRtl()Z

    move-result v2

    .line 1264
    .local v2, "isLayoutRtl":Z
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    sub-float v6, p2, v6

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    sub-float v7, p2, v7

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 1266
    .local v3, "squaredYDistance":I
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    sub-float v6, p1, v6

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    sub-float v7, p1, v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 1268
    .local v0, "distanceToAmCenter":I
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    if-gt v0, v6, :cond_1

    .line 1269
    if-eqz v2, :cond_0

    .line 1279
    :goto_0
    return v4

    :cond_0
    move v4, v5

    .line 1269
    goto :goto_0

    .line 1272
    :cond_1
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    sub-float v6, p1, v6

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    sub-float v7, p1, v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 1274
    .local v1, "distanceToPmCenter":I
    iget v6, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    if-gt v1, v6, :cond_3

    .line 1275
    if-eqz v2, :cond_2

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    .line 1279
    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 852
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;
    .locals 11
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "radiusPropertyName"    # Ljava/lang/String;
    .param p2, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
    .param p3, "midRadiusMultiplier"    # F
    .param p4, "endRadiusMultiplier"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1061
    const v5, 0x3e4ccccd    # 0.2f

    .line 1062
    .local v5, "midwayPoint":F
    const/16 v1, 0x1f4

    .line 1064
    .local v1, "duration":I
    const/4 v7, 0x0

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 1065
    .local v2, "kf0":Landroid/animation/Keyframe;
    invoke-static {v5, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 1066
    .local v3, "kf1":Landroid/animation/Keyframe;
    invoke-static {v8, p4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 1067
    .local v4, "kf2":Landroid/animation/Keyframe;
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1070
    .local v6, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v9

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1072
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1073
    return-object v0
.end method

.method private static getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;
    .locals 18
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "radiusPropertyName"    # Ljava/lang/String;
    .param p2, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
    .param p3, "midRadiusMultiplier"    # F
    .param p4, "endRadiusMultiplier"    # F

    .prologue
    .line 1080
    const v10, 0x3e4ccccd    # 0.2f

    .line 1081
    .local v10, "midwayPoint":F
    const/16 v5, 0x1f4

    .line 1084
    .local v5, "duration":I
    const/high16 v3, 0x3e800000    # 0.25f

    .line 1085
    .local v3, "delayMultiplier":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1086
    .local v14, "transitionDurationMultiplier":F
    add-float v13, v14, v3

    .line 1087
    .local v13, "totalDurationMultiplier":F
    int-to-float v15, v5

    mul-float/2addr v15, v13

    float-to-int v12, v15

    .line 1088
    .local v12, "totalDuration":I
    int-to-float v15, v5

    mul-float/2addr v15, v3

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v4, v15, v16

    .line 1089
    .local v4, "delayPoint":F
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v4

    mul-float v16, v16, v10

    sub-float v10, v15, v16

    .line 1091
    const/4 v15, 0x0

    move/from16 v0, p4

    invoke-static {v15, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 1092
    .local v6, "kf0":Landroid/animation/Keyframe;
    move/from16 v0, p4

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 1093
    .local v7, "kf1":Landroid/animation/Keyframe;
    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 1094
    .local v8, "kf2":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v16}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 1095
    .local v9, "kf3":Landroid/animation/Keyframe;
    const/4 v15, 0x4

    new-array v15, v15, [Landroid/animation/Keyframe;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    const/16 v16, 0x2

    aput-object v8, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 1098
    .local v11, "radiusReappear":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x1

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    int-to-long v0, v12

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1100
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1101
    return-object v2
.end method

.method private initData()V
    .locals 8

    .prologue
    const/16 v2, 0xff

    const/16 v4, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 631
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 633
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 639
    :goto_0
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    .line 641
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 643
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_3

    .line 644
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    .line 645
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x1040120

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 647
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040125

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 649
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040128

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 652
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040124

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    .line 654
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040127

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    .line 673
    :goto_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v3

    .line 674
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v7

    .line 675
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v6

    .line 677
    const v1, 0x1040122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadiusMultiplier:F

    .line 680
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 681
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 683
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 685
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 687
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v7

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_8

    move v1, v4

    :goto_6
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 690
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_9

    move v1, v3

    :goto_7
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 692
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 694
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v7

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v2, :cond_a

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 696
    return-void

    .line 635
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto/16 :goto_0

    .line 657
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104011f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 659
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040123

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 661
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040126

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    goto/16 :goto_1

    .line 665
    :cond_3
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104011f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    .line 667
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040123

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    .line 669
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040126

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 680
    goto/16 :goto_2

    :cond_5
    move v1, v2

    .line 681
    goto/16 :goto_3

    :cond_6
    move v1, v3

    .line 683
    goto/16 :goto_4

    :cond_7
    move v1, v3

    .line 685
    goto/16 :goto_5

    :cond_8
    move v1, v3

    .line 687
    goto/16 :goto_6

    :cond_9
    move v1, v4

    .line 690
    goto/16 :goto_7

    :cond_a
    move v3, v4

    .line 694
    goto :goto_8
.end method

.method private initHoursAndMinutesText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 618
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 619
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 620
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 621
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 622
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "amPmStrings":[Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    .line 627
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmText:[Ljava/lang/String;

    aget-object v3, v0, v7

    aput-object v3, v2, v7

    .line 628
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .prologue
    .line 244
    const/4 v3, 0x0

    .line 246
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 250
    .local v0, "count":I
    const/16 v2, 0x8

    .line 252
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v1, v4, :cond_3

    .line 254
    sget-object v4, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 257
    if-ne v0, v2, :cond_2

    .line 258
    add-int/lit8 v3, v3, 0x6

    .line 259
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 260
    const/4 v2, 0x7

    .line 266
    :goto_1
    const/4 v0, 0x1

    .line 252
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 262
    const/16 v2, 0xe

    goto :goto_1

    .line 264
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 268
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 271
    :cond_3
    return-void
.end method

.method private setAnimationRadiusMultiplierHours(F)V
    .locals 2
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1049
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1050
    return-void
.end method

.method private setAnimationRadiusMultiplierMinutes(F)V
    .locals 2
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1055
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    .line 297
    const/16 v2, 0x1e

    .line 298
    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    .line 299
    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    .line 300
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 301
    move p0, v0

    .line 314
    :goto_0
    return p0

    .line 302
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 303
    if-ne p0, v1, :cond_1

    .line 304
    add-int/lit8 v1, v1, -0x1e

    .line 306
    :cond_1
    move p0, v1

    goto :goto_0

    .line 308
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    .line 309
    move p0, v1

    goto :goto_0

    .line 311
    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 281
    sget-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 282
    const/4 v0, -0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method private startHoursToMinutesAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0xff

    const/16 v7, 0x3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1145
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1174
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    .line 1175
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1176
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1177
    return-void
.end method

.method private startMinutesToHoursAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0xff

    const/16 v7, 0x3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1180
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1209
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    .line 1210
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1211
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1212
    return-void
.end method

.method private updateLayoutData()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 704
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 705
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 707
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 709
    .local v1, "min":I
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v3, v1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    aput v3, v2, v5

    .line 710
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v3, v1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    aput v3, v2, v7

    .line 711
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v3, v1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    aput v3, v2, v6

    .line 713
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-nez v2, :cond_0

    .line 717
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 718
    .local v0, "amPmCircleRadius":I
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 721
    .end local v0    # "amPmCircleRadius":I
    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    .line 723
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    .line 725
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v4, v4, v7

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    .line 728
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    aput v3, v2, v5

    .line 729
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v6

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    aput v3, v2, v6

    .line 731
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v2, :cond_1

    .line 732
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    .line 735
    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    .line 736
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    .line 738
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v5

    .line 739
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, v5

    aput v3, v2, v7

    .line 740
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v6

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    .line 742
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    .line 743
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintAmPmText:Landroid/graphics/Paint;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 746
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mAmPmYCenter:F

    .line 750
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mLeftIndicatorXCenter:F

    .line 751
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmPmCircleRadius:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/widget/RadialTimePickerView;->mRightIndicatorXCenter:F

    .line 752
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    .line 1385
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    .line 1387
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1388
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1389
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 1390
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->minute:I

    .line 1391
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1392
    .local v2, "millis":J
    const/4 v0, 0x1

    .line 1393
    .local v0, "flags":I
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v6, :cond_0

    .line 1394
    or-int/lit16 v0, v0, 0x80

    .line 1396
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 1397
    .local v4, "timeString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    .end local v0    # "flags":I
    .end local v1    # "time":Landroid/text/format/Time;
    .end local v2    # "millis":J
    .end local v4    # "timeString":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public getAmOrPm()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    .prologue
    .line 552
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    aget v1, v2, v1

    div-int/lit8 v1, v1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    .line 554
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_3

    .line 557
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 559
    const/16 v0, 0xc

    .line 567
    :cond_0
    :goto_1
    return v0

    .line 552
    .end local v0    # "hour":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 560
    .restart local v0    # "hour":I
    :cond_2
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 562
    add-int/lit8 v0, v0, 0xc

    goto :goto_1

    .line 564
    :cond_3
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 565
    add-int/lit8 v0, v0, 0xc

    goto :goto_1
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public initialize(IIZ)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    .line 495
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 496
    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 497
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 498
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 756
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v0, :cond_2

    .line 757
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 762
    :goto_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    .line 763
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    .line 765
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 766
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 768
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v2, v0, v10

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v5, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v6, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    .line 772
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 773
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    .line 778
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v2, v0, v11

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v5, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v6, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    .line 782
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;)V

    .line 783
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-nez v0, :cond_1

    .line 784
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawAmPm(Landroid/graphics/Canvas;)V

    .line 791
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 792
    return-void

    .line 759
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1375
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1376
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1377
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1378
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 700
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 701
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 484
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 485
    .local v2, "measuredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 486
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 487
    .local v1, "measuredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 488
    .local v0, "heightMode":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 490
    .local v3, "minDimension":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v5, v6}, Landroid/view/View;->onMeasure(II)V

    .line 492
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1284
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v5, :cond_1

    move v3, v6

    .line 1366
    :cond_0
    :goto_0
    return v3

    .line 1288
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1289
    .local v1, "eventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1293
    .local v2, "eventY":F
    const/4 v3, 0x0

    .line 1295
    .local v3, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v7

    .line 1366
    goto :goto_0

    .line 1298
    :pswitch_0
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getIsTouchingAmOrPm(FF)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    .line 1299
    iget v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-eq v5, v8, :cond_3

    .line 1300
    const/4 v3, 0x1

    .line 1323
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0

    .line 1302
    :cond_3
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    .line 1303
    .local v0, "degrees":I
    if-eq v0, v8, :cond_2

    .line 1304
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_5

    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v5

    :goto_2
    rem-int/lit16 v4, v5, 0x168

    .line 1306
    .local v4, "snapDegrees":I
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_6

    .line 1307
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v7

    .line 1308
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v9

    .line 1312
    :goto_3
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1313
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v5, :cond_4

    .line 1314
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_7

    .line 1315
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v6

    invoke-interface {v5, v7, v6, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1320
    :cond_4
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    .line 1304
    .end local v4    # "snapDegrees":I
    :cond_5
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v5

    goto :goto_2

    .line 1310
    .restart local v4    # "snapDegrees":I
    :cond_6
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v6

    goto :goto_3

    .line 1317
    :cond_7
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v8

    invoke-interface {v5, v6, v8, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_4

    .line 1327
    .end local v0    # "degrees":I
    .end local v4    # "snapDegrees":I
    :pswitch_1
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getIsTouchingAmOrPm(FF)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    .line 1328
    iget v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-eq v5, v8, :cond_b

    .line 1329
    iget v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    if-eq v5, v7, :cond_8

    .line 1330
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->swapAmPm()V

    .line 1332
    :cond_8
    iput v8, p0, Landroid/widget/RadialTimePickerView;->mAmOrPmPressed:I

    .line 1333
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v5, :cond_9

    .line 1334
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v7, 0x3

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v8

    invoke-interface {v5, v7, v8, v6}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1336
    :cond_9
    const/4 v3, 0x1

    .line 1358
    :cond_a
    :goto_5
    if-eqz v3, :cond_0

    .line 1359
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto/16 :goto_0

    .line 1338
    :cond_b
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    .line 1339
    .restart local v0    # "degrees":I
    if-eq v0, v8, :cond_a

    .line 1340
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_d

    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v5

    :goto_6
    rem-int/lit16 v4, v5, 0x168

    .line 1342
    .restart local v4    # "snapDegrees":I
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_e

    .line 1343
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v7

    .line 1344
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v9

    .line 1348
    :goto_7
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v5, :cond_c

    .line 1349
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_f

    .line 1350
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v8

    invoke-interface {v5, v7, v8, v6}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1355
    :cond_c
    :goto_8
    const/4 v3, 0x1

    goto :goto_5

    .line 1340
    .end local v4    # "snapDegrees":I
    :cond_d
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v5

    goto :goto_6

    .line 1346
    .restart local v4    # "snapDegrees":I
    :cond_e
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v4, v5, v6

    goto :goto_7

    .line 1352
    :cond_f
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v7

    invoke-interface {v5, v6, v7, v6}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_8

    .line 1295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1410
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return v6

    .line 1414
    :cond_1
    const/4 v0, 0x0

    .line 1415
    .local v0, "changeMultiplier":I
    const/16 v8, 0x1000

    if-ne p1, v8, :cond_4

    .line 1416
    const/4 v0, 0x1

    .line 1420
    :cond_2
    :goto_1
    if-eqz v0, :cond_a

    .line 1421
    const/4 v5, 0x0

    .line 1422
    .local v5, "value":I
    const/4 v4, 0x0

    .line 1423
    .local v4, "stepSize":I
    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v8, :cond_5

    .line 1424
    const/16 v4, 0x1e

    .line 1425
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v8

    rem-int/lit8 v5, v8, 0xc

    .line 1431
    :goto_2
    mul-int v1, v5, v4

    .line 1432
    .local v1, "degrees":I
    invoke-static {v1, v0}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v1

    .line 1433
    div-int v5, v1, v4

    .line 1434
    const/4 v2, 0x0

    .line 1435
    .local v2, "maxValue":I
    const/4 v3, 0x0

    .line 1436
    .local v3, "minValue":I
    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v8, :cond_7

    .line 1437
    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v8, :cond_6

    .line 1438
    const/16 v2, 0x17

    .line 1446
    :goto_3
    if-le v5, v2, :cond_8

    .line 1448
    move v5, v3

    .line 1453
    :cond_3
    :goto_4
    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v8, :cond_9

    .line 1454
    invoke-virtual {p0, v5}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1455
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v8, :cond_0

    .line 1456
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v8, v7, v5, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    .line 1417
    .end local v1    # "degrees":I
    .end local v2    # "maxValue":I
    .end local v3    # "minValue":I
    .end local v4    # "stepSize":I
    .end local v5    # "value":I
    :cond_4
    const/16 v8, 0x2000

    if-ne p1, v8, :cond_2

    .line 1418
    const/4 v0, -0x1

    goto :goto_1

    .line 1427
    .restart local v4    # "stepSize":I
    .restart local v5    # "value":I
    :cond_5
    const/4 v4, 0x6

    .line 1428
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v5

    goto :goto_2

    .line 1440
    .restart local v1    # "degrees":I
    .restart local v2    # "maxValue":I
    .restart local v3    # "minValue":I
    :cond_6
    const/16 v2, 0xc

    .line 1441
    const/4 v3, 0x1

    goto :goto_3

    .line 1444
    :cond_7
    const/16 v2, 0x37

    goto :goto_3

    .line 1449
    :cond_8
    if-ge v5, v3, :cond_3

    .line 1451
    move v5, v2

    goto :goto_4

    .line 1459
    :cond_9
    invoke-virtual {p0, v5}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1460
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v8, :cond_0

    .line 1461
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v8, v6, v5, v7}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    .end local v1    # "degrees":I
    .end local v2    # "maxValue":I
    .end local v3    # "minValue":I
    .end local v4    # "stepSize":I
    .end local v5    # "value":I
    :cond_a
    move v6, v7

    .line 1467
    goto :goto_0
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 581
    rem-int/lit8 v0, p1, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 582
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 583
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 6
    .param p1, "hour"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 527
    rem-int/lit8 v1, p1, 0xc

    mul-int/lit8 v0, v1, 0x1e

    .line 528
    .local v0, "degrees":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v0, v1, v3

    .line 529
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v4, 0x2

    aput v0, v1, v4

    .line 532
    if-eqz p1, :cond_0

    rem-int/lit8 v1, p1, 0x18

    if-ge v1, v5, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 534
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_3

    .line 536
    if-lt p1, v2, :cond_2

    if-gt p1, v5, :cond_2

    :goto_1
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 541
    :goto_2
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 542
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 543
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 544
    return-void

    :cond_1
    move v1, v2

    .line 532
    goto :goto_0

    :cond_2
    move v2, v3

    .line 536
    goto :goto_1

    .line 538
    :cond_3
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    goto :goto_2
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 501
    packed-switch p1, :pswitch_data_0

    .line 509
    const-string v0, "ClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return-void

    .line 503
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    goto :goto_0

    .line 506
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 3
    .param p1, "minute"    # I

    .prologue
    .line 571
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    rem-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x6

    aput v2, v0, v1

    .line 572
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 573
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .prologue
    .line 1471
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1472
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1473
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .prologue
    .line 518
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 519
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 595
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 597
    if-eqz p1, :cond_1

    .line 598
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startMinutesToHoursAnimation()V

    .line 600
    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 601
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 602
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 608
    if-eqz p1, :cond_1

    .line 609
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startHoursToMinutesAnimation()V

    .line 611
    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 612
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 613
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method

.method public swapAmPm()V
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 591
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 592
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
