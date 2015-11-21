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
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_SELECTOR:I = 0x3c

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

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

.field private static final TAG:Ljava/lang/String; = "ClockView"

.field private static sSnapPrefer30sMap:[I


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private final mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field private final mAnimationRadiusMultiplier:[F

.field mChangedDuringTouch:Z

.field private final mCircleRadius:[F

.field private final mCircleRadiusMultiplier:[F

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

.field private final mInnerTextGridHeights:[F

.field private final mInnerTextGridWidths:[F

.field private mInnerTextHours:[Ljava/lang/String;

.field private mInnerTextSize:F

.field private mInputEnabled:Z

.field private final mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private final mLineLength:[I

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

.field private final mNumbersRadiusMultiplier:[F

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private mOuterTextMinutes:[Ljava/lang/String;

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintDebug:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private final mSelectionRadius:[I

.field private final mSelectionRadiusMultiplier:F

.field private mShowHours:Z

.field private final mTextGridHeights:[[F

.field private final mTextGridWidths:[[F

.field private final mTextSize:[F

.field private final mTextSizeMultiplier:[F

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private mTransition:Landroid/animation/AnimatorSet;

.field private final mTransitionEndRadiusMultiplier:F

.field private final mTransitionMidRadiusMultiplier:F

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 88
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sput v0, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    .line 94
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 95
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 96
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 100
    const/16 v0, 0x169

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    .line 191
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 192
    return-void

    .line 94
    nop

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

    .line 95
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

    .line 96
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 297
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 306
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    new-instance v12, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .line 105
    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 106
    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 107
    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 108
    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 110
    const/4 v12, 0x2

    new-array v12, v12, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 111
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    .line 112
    const/4 v12, 0x2

    new-array v12, v12, [Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    .line 114
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 116
    const/4 v12, 0x2

    const/4 v13, 0x3

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Landroid/graphics/Paint;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    .line 117
    const/4 v12, 0x2

    const/4 v13, 0x3

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    .line 118
    const/4 v12, 0x2

    const/4 v13, 0x3

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Landroid/widget/RadialTimePickerView$IntHolder;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    .line 120
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 121
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    .line 125
    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    .line 127
    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    .line 129
    const/4 v12, 0x2

    const/4 v13, 0x7

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    .line 130
    const/4 v12, 0x2

    const/4 v13, 0x7

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    .line 132
    const/4 v12, 0x7

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    .line 133
    const/4 v12, 0x7

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    .line 135
    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    .line 136
    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    .line 138
    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    .line 140
    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    .line 145
    const/4 v12, 0x3

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    .line 146
    const/4 v12, 0x3

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    .line 148
    const/4 v12, 0x3

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 150
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    .line 151
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    .line 183
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1203
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 309
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 310
    .local v10, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, 0x1010033

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v10, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 311
    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v12

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 315
    .local v11, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v12, v0, v13, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 318
    .local v3, "a":Landroid/content/res/TypedArray;
    const-string v12, "sans-serif"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 321
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v12, v12

    if-ge v7, v12, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v13, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v14, 0xff

    invoke-direct {v13, v14}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v13, v12, v7

    .line 321
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 324
    :cond_0
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v12, v12

    if-ge v7, v12, :cond_2

    .line 325
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v12, v12, v7

    array-length v12, v12

    if-ge v8, v12, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v12, v12, v7

    new-instance v13, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v14, 0xff

    invoke-direct {v13, v14}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v13, v12, v8

    .line 325
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 324
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 330
    .end local v8    # "j":I
    :cond_2
    const/4 v12, 0x3

    const v13, 0x10600fa

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 333
    .local v9, "numbersTextColor":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 334
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v13, 0x0

    aput v9, v12, v13

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v13, 0x1

    aput v9, v12, v13

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    .line 353
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    .line 359
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 360
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 367
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 373
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    .line 385
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v13, 0x4

    const v14, 0x10600fe

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 397
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 398
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 399
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 402
    new-instance v12, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 406
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    .line 409
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 410
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 412
    const v12, 0x1040129

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    .line 414
    const v12, 0x104012a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v13, 0x0

    const/4 v14, 0x7

    new-array v14, v14, [F

    aput-object v14, v12, v13

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v13, 0x1

    const/4 v14, 0x7

    new-array v14, v14, [F

    aput-object v14, v12, v13

    .line 420
    const v12, 0x1040121

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    .line 423
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setClickable(Z)V

    .line 429
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 430
    .local v4, "calendar":Ljava/util/Calendar;
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 431
    .local v5, "currentHour":I
    const/16 v12, 0xc

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 433
    .local v6, "currentMinute":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 434
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 436
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 437
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/RadialTimePickerView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RadialTimePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/RadialTimePickerView;FF)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/RadialTimePickerView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    return-object v0
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
    .line 932
    move v0, p1

    .line 934
    .local v0, "offset1":F
    sget v3, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    mul-float v1, p1, v3

    .line 936
    .local v1, "offset2":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, p1, v3

    .line 938
    .local v2, "offset3":F
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 940
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    .line 942
    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    .line 943
    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    .line 944
    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    .line 945
    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    .line 946
    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    .line 947
    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    .line 948
    const/4 v3, 0x3

    aput p3, p5, v3

    .line 949
    const/4 v3, 0x3

    aput p2, p6, v3

    .line 950
    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    .line 951
    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    .line 952
    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    .line 953
    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    .line 954
    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    .line 955
    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    .line 956
    return-void
.end method

.method private calculateGridSizesHours()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 893
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .line 897
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

    .line 901
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v8

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float v3, v0, v2

    .line 906
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

    .line 909
    .end local v3    # "innerNumbersRadius":F
    :cond_0
    return-void
.end method

.method private calculateGridSizesMinutes()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 913
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .line 917
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

    .line 919
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 781
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 782
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 777
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 778
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 843
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v10, 0x0

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float v19, v5, v10

    .line 844
    .local v19, "outerRadius":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v5, v10, v1, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v10, 0x0

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float v17, v5, v10

    .line 848
    .local v17, "innerRadius":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v5, v10, v1, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 851
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 854
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    sub-float v6, v5, v19

    .line 855
    .local v6, "left":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    sub-float v7, v5, v19

    .line 856
    .local v7, "top":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    add-float v8, v5, v19

    .line 857
    .local v8, "right":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    add-float v9, v5, v19

    .line 858
    .local v9, "bottom":F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 861
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float v6, v5, v10

    .line 862
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float v7, v5, v10

    .line 863
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float v8, v5, v10

    .line 864
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float v9, v5, v10

    .line 865
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 868
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v5

    int-to-float v13, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v5

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 871
    const-string v5, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 873
    .local v21, "selected":Ljava/lang/String;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v10, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 875
    .local v18, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 876
    .local v22, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->measure(II)V

    .line 879
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .line 880
    .local v20, "paint":Landroid/graphics/Paint;
    const/high16 v5, 0x60ff0000

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 882
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v23

    .line 884
    .local v23, "width":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float v16, v5, v10

    .line 885
    .local v16, "height":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    div-int/lit8 v10, v23, 0x2

    sub-int/2addr v5, v10

    int-to-float v0, v5

    move/from16 v24, v0

    .line 886
    .local v24, "x":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v10, v10, v16

    add-float v25, v5, v10

    .line 888
    .local v25, "y":F
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 889
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 785
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    .line 786
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    .line 787
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;I)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    .line 795
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

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 800
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

    .line 801
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

    .line 808
    .local v12, "pointY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v9, v2, v3

    .line 809
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .line 810
    .local v8, "alpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v7, v2, v3

    .line 811
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    int-to-float v2, v11

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v4, v4, p2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_0

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v9, v2, v3

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v7, v2, v3

    .line 821
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 822
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 823
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

    .line 833
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v9, v2, v3

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v7, v2, v3

    .line 836
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 837
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 838
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

    .line 839
    return-void

    .line 827
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v2, v2, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, p2

    sub-int v10, v2, v3

    .line 828
    .local v10, "lineLength":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-double v4, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    add-int v11, v2, v3

    .line 829
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
    .line 963
    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 964
    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 965
    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 966
    invoke-direct {p0, p8, p9}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 967
    const/4 v0, 0x0

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x0

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 968
    const/4 v0, 0x1

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 969
    const/4 v0, 0x2

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 970
    const/4 v0, 0x3

    aget-object v0, p4, v0

    const/4 v1, 0x6

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 971
    const/4 v0, 0x4

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 972
    const/4 v0, 0x5

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 973
    const/4 v0, 0x6

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x6

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 974
    const/4 v0, 0x7

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 975
    const/16 v0, 0x8

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 976
    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 977
    const/16 v0, 0xa

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 978
    const/16 v0, 0xb

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 979
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/16 v1, 0xc

    .line 556
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    .line 557
    if-lt p1, v1, :cond_0

    .line 558
    add-int/lit8 p1, p1, -0xc

    .line 563
    :cond_0
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0

    .line 560
    :cond_1
    if-ne p1, v1, :cond_0

    .line 561
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 590
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FF)I
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1152
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    sub-float v10, p2, v10

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    sub-float v11, p2, v11

    mul-float/2addr v10, v11

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v11, v11

    sub-float v11, p1, v11

    iget v12, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v12, v12

    sub-float v12, p1, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 1156
    .local v2, "hypotenuse":D
    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    float-to-double v10, v10

    cmpl-double v10, v2, v10

    if-lez v10, :cond_0

    .line 1157
    const/4 v0, -0x1

    .line 1200
    :goto_0
    return v0

    .line 1160
    :cond_0
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v10, :cond_4

    .line 1161
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    int-to-double v10, v10

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_2

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v10, v10

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_2

    .line 1163
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1181
    :cond_1
    :goto_1
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    sub-float v10, p2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1182
    .local v7, "opposite":F
    float-to-double v10, v7

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v0, v10

    .line 1185
    .local v0, "degrees":I
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v10, v10

    cmpl-float v10, p1, v10

    if-lez v10, :cond_6

    const/4 v8, 0x1

    .line 1186
    .local v8, "rightSide":Z
    :goto_2
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    cmpg-float v10, p2, v10

    if-gez v10, :cond_7

    const/4 v9, 0x1

    .line 1187
    .local v9, "topSide":Z
    :goto_3
    if-eqz v8, :cond_9

    .line 1188
    if-eqz v9, :cond_8

    .line 1189
    rsub-int/lit8 v0, v0, 0x5a

    goto :goto_0

    .line 1164
    .end local v0    # "degrees":I
    .end local v7    # "opposite":F
    .end local v8    # "rightSide":Z
    .end local v9    # "topSide":Z
    :cond_2
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    int-to-double v10, v10

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_3

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v10, v10

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_3

    .line 1166
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    goto :goto_1

    .line 1168
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 1171
    :cond_4
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    .line 1172
    .local v4, "index":I
    :goto_4
    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v10, v10, v4

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v11, v11, v4

    mul-float v5, v10, v11

    .line 1173
    .local v5, "length":F
    float-to-double v10, v5

    sub-double v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-int v1, v10

    .line 1174
    .local v1, "distanceToNumber":I
    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v10, v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v12, v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v6, v10

    .line 1176
    .local v6, "maxAllowedDistance":I
    if-le v1, v6, :cond_1

    .line 1177
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 1171
    .end local v1    # "distanceToNumber":I
    .end local v4    # "index":I
    .end local v5    # "length":F
    .end local v6    # "maxAllowedDistance":I
    :cond_5
    const/4 v4, 0x1

    goto :goto_4

    .line 1185
    .restart local v0    # "degrees":I
    .restart local v7    # "opposite":F
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 1186
    .restart local v8    # "rightSide":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 1191
    .restart local v9    # "topSide":Z
    :cond_8
    add-int/lit8 v0, v0, 0x5a

    goto/16 :goto_0

    .line 1194
    :cond_9
    if-eqz v9, :cond_a

    .line 1195
    add-int/lit16 v0, v0, 0x10e

    goto/16 :goto_0

    .line 1197
    :cond_a
    rsub-int v0, v0, 0x10e

    goto/16 :goto_0
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 16
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    .line 1054
    const/16 v5, 0x1f4

    .line 1057
    .local v5, "duration":I
    const/high16 v3, 0x3e800000    # 0.25f

    .line 1058
    .local v3, "delayMultiplier":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1059
    .local v12, "transitionDurationMultiplier":F
    add-float v11, v12, v3

    .line 1060
    .local v11, "totalDurationMultiplier":F
    int-to-float v13, v5

    mul-float/2addr v13, v11

    float-to-int v10, v13

    .line 1061
    .local v10, "totalDuration":I
    int-to-float v13, v5

    mul-float/2addr v13, v3

    int-to-float v14, v10

    div-float v4, v13, v14

    .line 1063
    .local v4, "delayPoint":F
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    .line 1064
    .local v7, "kf0":Landroid/animation/Keyframe;
    move/from16 v0, p1

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    .line 1065
    .local v8, "kf1":Landroid/animation/Keyframe;
    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v0, p2

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    .line 1066
    .local v9, "kf2":Landroid/animation/Keyframe;
    const-string v13, "value"

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

    .line 1068
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

    .line 1070
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1071
    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    .line 1043
    const/16 v1, 0x1f4

    .line 1044
    .local v1, "duration":I
    const-string v2, "value"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1045
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1046
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1048
    return-object v0
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .prologue
    .line 537
    div-int/lit8 v1, p1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    .line 538
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    .line 541
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 543
    const/16 v0, 0xc

    .line 551
    :cond_0
    :goto_0
    return v0

    .line 544
    :cond_1
    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 546
    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 548
    :cond_2
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 549
    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 586
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 790
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

    .line 998
    const v5, 0x3e4ccccd    # 0.2f

    .line 999
    .local v5, "midwayPoint":F
    const/16 v1, 0x1f4

    .line 1001
    .local v1, "duration":I
    const/4 v7, 0x0

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 1002
    .local v2, "kf0":Landroid/animation/Keyframe;
    invoke-static {v5, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 1003
    .local v3, "kf1":Landroid/animation/Keyframe;
    invoke-static {v8, p4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 1004
    .local v4, "kf2":Landroid/animation/Keyframe;
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1007
    .local v6, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v9

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1009
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1010
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
    .line 1017
    const v10, 0x3e4ccccd    # 0.2f

    .line 1018
    .local v10, "midwayPoint":F
    const/16 v5, 0x1f4

    .line 1021
    .local v5, "duration":I
    const/high16 v3, 0x3e800000    # 0.25f

    .line 1022
    .local v3, "delayMultiplier":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1023
    .local v14, "transitionDurationMultiplier":F
    add-float v13, v14, v3

    .line 1024
    .local v13, "totalDurationMultiplier":F
    int-to-float v15, v5

    mul-float/2addr v15, v13

    float-to-int v12, v15

    .line 1025
    .local v12, "totalDuration":I
    int-to-float v15, v5

    mul-float/2addr v15, v3

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v4, v15, v16

    .line 1026
    .local v4, "delayPoint":F
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v4

    mul-float v16, v16, v10

    sub-float v10, v15, v16

    .line 1028
    const/4 v15, 0x0

    move/from16 v0, p4

    invoke-static {v15, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 1029
    .local v6, "kf0":Landroid/animation/Keyframe;
    move/from16 v0, p4

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 1030
    .local v7, "kf1":Landroid/animation/Keyframe;
    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 1031
    .local v8, "kf2":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v16}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 1032
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

    .line 1035
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

    .line 1037
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1038
    return-object v2
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1242
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1243
    .local v6, "wasOnInnerCircle":Z
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    .line 1244
    .local v0, "degrees":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return v7

    .line 1248
    :cond_1
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 1253
    .local v2, "selectionDegrees":[I
    iget-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v9, :cond_8

    .line 1254
    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v9

    rem-int/lit16 v3, v9, 0x168

    .line 1255
    .local v3, "snapDegrees":I
    aget v9, v2, v7

    if-ne v9, v3, :cond_2

    aget v9, v2, v10

    if-ne v9, v3, :cond_2

    iget-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v6, v9, :cond_7

    :cond_2
    move v5, v8

    .line 1259
    .local v5, "valueChanged":Z
    :goto_1
    aput v3, v2, v7

    .line 1260
    aput v3, v2, v10

    .line 1261
    const/4 v4, 0x0

    .line 1262
    .local v4, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 1272
    .local v1, "newValue":I
    :goto_2
    if-nez v5, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_0

    .line 1274
    :cond_3
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v7, :cond_4

    .line 1275
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v7, v4, v1, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1279
    :cond_4
    if-nez v5, :cond_5

    if-eqz p3, :cond_6

    .line 1280
    :cond_5
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1281
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_6
    move v7, v8

    .line 1283
    goto :goto_0

    .end local v1    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_7
    move v5, v7

    .line 1255
    goto :goto_1

    .line 1264
    .end local v3    # "snapDegrees":I
    :cond_8
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v9

    rem-int/lit16 v3, v9, 0x168

    .line 1265
    .restart local v3    # "snapDegrees":I
    aget v9, v2, v8

    if-eq v9, v3, :cond_9

    move v5, v8

    .line 1267
    .restart local v5    # "valueChanged":Z
    :goto_3
    aput v3, v2, v8

    .line 1268
    const/4 v4, 0x1

    .line 1269
    .restart local v4    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .restart local v1    # "newValue":I
    goto :goto_2

    .end local v1    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_9
    move v5, v7

    .line 1265
    goto :goto_3
.end method

.method private initData()V
    .locals 8

    .prologue
    const/16 v2, 0xff

    const/16 v4, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 636
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 638
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 644
    :goto_0
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 648
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_3

    .line 649
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    .line 650
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x1040120

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 652
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040125

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 654
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040128

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 657
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040124

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    .line 659
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040127

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    .line 678
    :goto_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v3

    .line 679
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v7

    .line 680
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v6

    .line 682
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 683
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 685
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 687
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 689
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v7

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_8

    move v1, v4

    :goto_6
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 692
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_9

    move v1, v3

    :goto_7
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 694
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 696
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v7

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v2, :cond_a

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 698
    return-void

    .line 640
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 641
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto/16 :goto_0

    .line 662
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104011f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 664
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040123

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    .line 666
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040126

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    goto/16 :goto_1

    .line 670
    :cond_3
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104011f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    .line 672
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040123

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    .line 674
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

    .line 682
    goto/16 :goto_2

    :cond_5
    move v1, v2

    .line 683
    goto/16 :goto_3

    :cond_6
    move v1, v3

    .line 685
    goto/16 :goto_4

    :cond_7
    move v1, v3

    .line 687
    goto/16 :goto_5

    :cond_8
    move v1, v3

    .line 689
    goto/16 :goto_6

    :cond_9
    move v1, v4

    .line 692
    goto/16 :goto_7

    :cond_a
    move v3, v4

    .line 696
    goto :goto_8
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 628
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 629
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 630
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 631
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .prologue
    .line 218
    const/4 v3, 0x0

    .line 220
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 224
    .local v0, "count":I
    const/16 v2, 0x8

    .line 226
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v1, v4, :cond_3

    .line 228
    sget-object v4, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 231
    if-ne v0, v2, :cond_2

    .line 232
    add-int/lit8 v3, v3, 0x6

    .line 233
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 234
    const/4 v2, 0x7

    .line 240
    :goto_1
    const/4 v0, 0x1

    .line 226
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 236
    const/16 v2, 0xe

    goto :goto_1

    .line 238
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 245
    :cond_3
    return-void
.end method

.method private setAnimationRadiusMultiplierHours(F)V
    .locals 2
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 984
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 985
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 986
    return-void
.end method

.method private setAnimationRadiusMultiplierMinutes(F)V
    .locals 2
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 991
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 992
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 8
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .prologue
    const/16 v7, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 503
    rem-int/lit8 v5, p1, 0xc

    mul-int/lit8 v1, v5, 0x1e

    .line 504
    .local v1, "degrees":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v1, v5, v4

    .line 505
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v6, 0x2

    aput v1, v5, v6

    .line 508
    if-eqz p1, :cond_0

    rem-int/lit8 v5, p1, 0x18

    if-ge v5, v7, :cond_4

    :cond_0
    move v0, v4

    .line 509
    .local v0, "amOrPm":I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v5, :cond_5

    if-lt p1, v3, :cond_5

    if-gt p1, v7, :cond_5

    move v2, v3

    .line 510
    .local v2, "isOnInnerCircle":Z
    :goto_1
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v3, v0, :cond_1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v3, v2, :cond_2

    .line 511
    :cond_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 512
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 514
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 515
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 516
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 519
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 521
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v3, :cond_3

    .line 522
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v3, v4, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 524
    :cond_3
    return-void

    .end local v0    # "amOrPm":I
    .end local v2    # "isOnInnerCircle":Z
    :cond_4
    move v0, v3

    .line 508
    goto :goto_0

    .restart local v0    # "amOrPm":I
    :cond_5
    move v2, v4

    .line 509
    goto :goto_1
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v2, 0x1

    .line 571
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    aput v1, v0, v2

    .line 573
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 575
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 578
    :cond_0
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    .line 271
    const/16 v2, 0x1e

    .line 272
    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    .line 273
    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    .line 274
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 275
    move p0, v0

    .line 288
    :goto_0
    return p0

    .line 276
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 277
    if-ne p0, v1, :cond_1

    .line 278
    add-int/lit8 v1, v1, -0x1e

    .line 280
    :cond_1
    move p0, v1

    goto :goto_0

    .line 282
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    .line 283
    move p0, v1

    goto :goto_0

    .line 285
    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 255
    sget-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 256
    const/4 v0, -0x1

    .line 258
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

    .line 1082
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1111
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    .line 1112
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1113
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1114
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

    .line 1117
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1146
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    .line 1147
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1148
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1149
    return-void
.end method

.method private updateLayoutData()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 706
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 707
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 709
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 711
    .local v0, "min":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, v4

    .line 712
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, v6

    .line 713
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    aput v2, v1, v5

    .line 715
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    .line 717
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    .line 719
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v4

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    .line 722
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v4

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, v4

    .line 723
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    aput v2, v1, v5

    .line 725
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    .line 729
    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    .line 730
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    .line 732
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v4

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v4

    .line 733
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, v4

    aput v2, v1, v6

    .line 734
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    .line 736
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 737
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1292
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    const/4 v0, 0x1

    .line 1295
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAmOrPm()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    aget v0, v1, v0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .prologue
    .line 478
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
    .line 582
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    .line 456
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 457
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 460
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 461
    invoke-direct {p0, p2, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 462
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 741
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v0, :cond_1

    .line 742
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

    .line 747
    :goto_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    .line 748
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    .line 750
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 751
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 753
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

    .line 757
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 758
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

    .line 763
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

    .line 767
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;)V

    .line 773
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 774
    return-void

    .line 744
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 702
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 703
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 444
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 445
    .local v2, "measuredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 446
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 447
    .local v1, "measuredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 448
    .local v0, "heightMode":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 450
    .local v3, "minDimension":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v5, v6}, Landroid/view/View;->onMeasure(II)V

    .line 452
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 1207
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v3, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return v6

    .line 1211
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1212
    .local v0, "action":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-nez v0, :cond_0

    .line 1215
    :cond_2
    const/4 v2, 0x0

    .line 1216
    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    .line 1218
    .local v1, "autoAdvance":Z
    if-nez v0, :cond_4

    .line 1220
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 1231
    :cond_3
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v1}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    .line 1221
    :cond_4
    if-ne v0, v6, :cond_3

    .line 1222
    const/4 v1, 0x1

    .line 1226
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v3, :cond_3

    .line 1227
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 594
    rem-int/lit8 v0, p1, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 595
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 596
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 597
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 491
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 492
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 465
    packed-switch p1, :pswitch_data_0

    .line 473
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

    .line 475
    :goto_0
    return-void

    .line 467
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    goto :goto_0

    .line 470
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 568
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .prologue
    .line 1299
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1300
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1301
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .prologue
    .line 482
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 483
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 604
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 606
    if-eqz p1, :cond_1

    .line 607
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startMinutesToHoursAnimation()V

    .line 609
    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 610
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 611
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 615
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 616
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 617
    if-eqz p1, :cond_1

    .line 618
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startHoursToMinutesAnimation()V

    .line 620
    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 621
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    .line 622
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method
