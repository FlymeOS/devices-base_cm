.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$OnDayClickListener;,
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAY_SEPARATOR_WIDTH:I = 0x1

.field private static final DEFAULT_HEIGHT:I = 0x20

.field private static final DEFAULT_NUM_DAYS:I = 0x7

.field private static final DEFAULT_NUM_ROWS:I = 0x6

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_NUM_ROWS:I = 0x6

.field private static final MIN_HEIGHT:I = 0xa

.field private static final SELECTED_CIRCLE_ALPHA:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "SimpleMonthView"

.field private static mScale:F


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayNumberDisabledPaint:Landroid/graphics/Paint;

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDayOfWeekTypeface:Ljava/lang/String;

.field private final mDaySelectedCircleSize:I

.field private mDisabledTextColor:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private final mFormatter:Ljava/util/Formatter;

.field private mHasToday:Z

.field private mLockAccessibilityDelegate:Z

.field private final mMiniDayNumberTextSize:I

.field private mMonth:I

.field private mMonthDayLabelPaint:Landroid/graphics/Paint;

.field private final mMonthDayLabelTextSize:I

.field private final mMonthHeaderSize:I

.field private final mMonthLabelTextSize:I

.field private mMonthTitlePaint:Landroid/graphics/Paint;

.field private mMonthTitleTypeface:Ljava/lang/String;

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mNumRows:I

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPadding:I

.field private mRowHeight:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mWidth:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput v0, Landroid/widget/SimpleMonthView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 154
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 82
    iput v5, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    .line 104
    const/16 v1, 0x20

    iput v1, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    .line 107
    iput-boolean v5, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    .line 110
    iput v6, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    .line 113
    iput v6, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 116
    iput v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 119
    const/4 v1, 0x7

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    .line 122
    iget v1, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    .line 124
    iput v5, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 127
    iput v4, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 130
    const/16 v1, 0x1f

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 137
    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1040749

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    .line 163
    const v1, 0x1040748

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 166
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mFormatter:Ljava/util/Formatter;

    .line 168
    const v1, 0x1050087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    .line 169
    const v1, 0x1050088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMonthLabelTextSize:I

    .line 170
    const v1, 0x1050089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    .line 172
    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    .line 174
    const v1, 0x105008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectedCircleSize:I

    .line 177
    const v1, 0x105008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    .line 181
    new-instance v1, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v1, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 182
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 183
    invoke-virtual {p0, v4}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    .line 184
    iput-boolean v4, p0, Landroid/widget/SimpleMonthView;->mLockAccessibilityDelegate:Z

    .line 187
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->initView()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SimpleMonthView;FF)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SimpleMonthView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClick(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method private calculateNumRows()I
    .locals 5

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    .line 405
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    div-int v0, v3, v4

    .line 406
    .local v0, "dividend":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    rem-int v2, v3, v4

    .line 407
    .local v2, "remainder":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 463
    iget v6, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    add-int v5, v6, v7

    .line 465
    .local v5, "y":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v7, v7, 0x2

    div-int v1, v6, v7

    .line 466
    .local v1, "dayWidthHalf":I
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v2

    .line 467
    .local v2, "j":I
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_0
    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-gt v0, v6, :cond_5

    .line 468
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v1

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    add-int v4, v6, v7

    .line 469
    .local v4, "x":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    if-ne v6, v0, :cond_0

    .line 470
    int-to-float v6, v4

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    div-int/lit8 v7, v7, 0x3

    sub-int v7, v5, v7

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/SimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 474
    :cond_0
    iget-boolean v6, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/widget/SimpleMonthView;->mToday:I

    if-ne v6, v0, :cond_3

    .line 475
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v7, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    :goto_1
    iget v6, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt v0, v6, :cond_1

    iget v6, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-le v0, v6, :cond_4

    :cond_1
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    .line 481
    .local v3, "paint":Landroid/graphics/Paint;
    :goto_2
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 483
    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    if-ne v2, v6, :cond_2

    .line 484
    const/4 v2, 0x0

    .line 485
    iget v6, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    add-int/2addr v5, v6

    .line 467
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_3
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 479
    :cond_4
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 488
    .end local v4    # "x":I
    :cond_5
    return-void
.end method

.method private drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 440
    iget v2, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 441
    .local v0, "x":F
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 442
    .local v1, "y":F
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    return-void
.end method

.method private drawWeekDayLabels(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 446
    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 447
    .local v5, "y":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v7, v7, 0x2

    div-int v2, v6, v7

    .line 449
    .local v2, "dayWidthHalf":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    if-ge v3, v6, :cond_0

    .line 450
    iget v6, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v6, v3

    iget v7, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    rem-int v0, v6, v7

    .line 451
    .local v0, "calendarDay":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 453
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Landroid/widget/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "dayLabel":Ljava/lang/String;
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    add-int v4, v6, v7

    .line 455
    .local v4, "x":I
    int-to-float v6, v4

    int-to-float v7, v5

    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "calendarDay":I
    .end local v1    # "dayLabel":Ljava/lang/String;
    .end local v4    # "x":I
    :cond_0
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    .prologue
    .line 491
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    goto :goto_0
.end method

.method private getDayFromLocation(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, -0x1

    .line 503
    iget v2, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    .line 504
    .local v2, "dayStart":I
    int-to-float v5, v2

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    iget v5, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    iget v6, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    :cond_0
    move v1, v4

    .line 516
    :cond_1
    :goto_0
    return v1

    .line 508
    :cond_2
    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    float-to-int v5, v5

    iget v6, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    div-int v3, v5, v6

    .line 509
    .local v3, "row":I
    int-to-float v5, v2

    sub-float v5, p1, v5

    iget v6, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    sub-int/2addr v6, v2

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 511
    .local v0, "column":I
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v5

    sub-int v5, v0, v5

    add-int/lit8 v1, v5, 0x1

    .line 512
    .local v1, "day":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mNumDays:I

    mul-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 513
    const/4 v5, 0x1

    if-lt v1, v5, :cond_3

    iget v5, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-le v1, v5, :cond_1

    :cond_3
    move v1, v4

    .line 514
    goto :goto_0
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 377
    packed-switch p0, :pswitch_data_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :pswitch_0
    const/16 v0, 0x1f

    .line 392
    :goto_0
    return v0

    .line 390
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 392
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 431
    const/16 v6, 0x34

    .line 433
    .local v6, "flags":I
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 434
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 435
    .local v2, "millis":J
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mFormatter:Ljava/util/Formatter;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    .line 255
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthLabelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 259
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 260
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 264
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 267
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 268
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 269
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 270
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 273
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 276
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 277
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 281
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 284
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 287
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    .line 288
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 289
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDisabledTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 291
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 292
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 294
    return-void
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 304
    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 1
    .param p0, "month"    # I

    .prologue
    .line 308
    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDayClick(I)V
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 526
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_0

    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 528
    .local v0, "date":Ljava/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 529
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V

    .line 533
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 534
    return-void
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 2
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/text/format/Time;

    .prologue
    .line 411
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    .line 556
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method getAccessibilityFocus()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 541
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v1

    .line 542
    .local v1, "day":I
    const/4 v0, 0x0

    .line 543
    .local v0, "date":Ljava/util/Calendar;
    if-ltz v1, :cond_0

    .line 544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 545
    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    .line 547
    :cond_0
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 195
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    .line 299
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawWeekDayLabels(Landroid/graphics/Canvas;)V

    .line 300
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 301
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 418
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeaderSize:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    .line 420
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 424
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWidth:I

    .line 427
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 428
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 241
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/SimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 242
    .local v0, "day":I
    if-ltz v0, :cond_0

    .line 243
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->onDayClick(I)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method restoreAccessibilityFocus(Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 566
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-le v1, v2, :cond_1

    .line 568
    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    .line 570
    :cond_1
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->setFocusedVirtualView(I)V

    goto :goto_0
.end method

.method public reuse()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    .line 400
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    .line 401
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 219
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 222
    :cond_0
    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 8
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .prologue
    const/16 v7, 0x20

    const/16 v4, 0xa

    const/4 v6, 0x1

    .line 327
    iget v3, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    if-ge v3, v4, :cond_0

    .line 328
    iput v4, p0, Landroid/widget/SimpleMonthView;->mRowHeight:I

    .line 331
    :cond_0
    iput p1, p0, Landroid/widget/SimpleMonthView;->mSelectedDay:I

    .line 333
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 336
    :cond_1
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 339
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 340
    .local v2, "today":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 341
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    .line 342
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 344
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 345
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 346
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 347
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 349
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 350
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 355
    :goto_0
    if-lez p5, :cond_2

    if-ge p6, v7, :cond_2

    .line 356
    iput p5, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 358
    :cond_2
    if-lez p6, :cond_3

    if-ge p6, v7, :cond_3

    if-lt p6, p5, :cond_3

    .line 359
    iput p6, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 362
    :cond_3
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mNumCells:I

    if-ge v1, v3, :cond_6

    .line 364
    add-int/lit8 v0, v1, 0x1

    .line 365
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    iput-boolean v6, p0, Landroid/widget/SimpleMonthView;->mHasToday:Z

    .line 367
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 363
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    .end local v0    # "day":I
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 370
    .restart local v1    # "i":I
    :cond_6
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->calculateNumRows()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mNumRows:I

    .line 373
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 374
    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    .prologue
    .line 225
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 226
    return-void
.end method

.method setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const v2, 0x106009d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    .line 202
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    sget-object v1, Landroid/widget/SimpleMonthView;->EMPTY_STATE_SET:[I

    const v2, 0x106009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDisabledTextColor:I

    .line 207
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayNumberDisabledPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDisabledTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_SELECTED_STATE_SET:[I

    const v2, 0x1060012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    .line 211
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/SimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    return-void
.end method
