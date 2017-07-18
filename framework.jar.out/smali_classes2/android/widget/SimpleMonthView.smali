.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;,
        Landroid/widget/SimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DAY_OF_WEEK_FORMAT:Ljava/lang/String; = "EEEEE"

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_TITLE_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabelCalendar:Ljava/util/Calendar;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mTitle:Ljava/lang/CharSequence;

.field private final mTitleFormatter:Ljava/text/SimpleDateFormat;

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mTouchedItem:I

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method static synthetic -get0(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/SimpleMonthView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/SimpleMonthView;II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 65
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 66
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 67
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    .line 102
    iput v4, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 108
    iput v4, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 111
    iput v5, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 123
    iput v5, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 126
    const/16 v3, 0x1f

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 133
    iput v4, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x1050125

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 152
    const v3, 0x1050126

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 153
    const v3, 0x1050127

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 154
    const v3, 0x1050128

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 156
    const v3, 0x1050129

    .line 155
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 159
    new-instance v3, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v3, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 160
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v3}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 161
    invoke-virtual {p0, v5}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    .line 163
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 164
    .local v0, "locale":Ljava/util/Locale;
    const-string/jumbo v3, "MMMMy"

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "titleFormat":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTitleFormatter:Ljava/text/SimpleDateFormat;

    .line 166
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEEEE"

    invoke-direct {v3, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

    .line 167
    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 169
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 147
    return-void
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 181
    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    .line 182
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 181
    invoke-virtual {v4, v7, v5, v6, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 184
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 186
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    .line 189
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 193
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    .line 194
    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 195
    .local v0, "enabledColor":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    .end local v0    # "enabledColor":I
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    .line 410
    .local v17, "p":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    move/from16 v23, v0

    add-int v13, v22, v23

    .line 411
    .local v13, "headerHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move/from16 v19, v0

    .line 412
    .local v19, "rowHeight":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 415
    .local v9, "colWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->ascent()F

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->descent()F

    move-result v23

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v12, v22, v23

    .line 416
    .local v12, "halfLineHeight":F
    div-int/lit8 v22, v19, 0x2

    add-int v18, v13, v22

    .line 418
    .local v18, "rowCenter":I
    const/4 v10, 0x1

    .local v10, "day":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v6

    .local v6, "col":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v10, v0, :cond_9

    .line 419
    mul-int v22, v9, v6

    div-int/lit8 v23, v9, 0x2

    add-int v7, v22, v23

    .line 421
    .local v7, "colCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v22, v0

    sub-int v8, v22, v7

    .line 427
    .local v8, "colCenterRtl":I
    :goto_1
    const/16 v20, 0x0

    .line 429
    .local v20, "stateMask":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v15

    .line 430
    .local v15, "isDayEnabled":Z
    if-eqz v15, :cond_0

    .line 431
    const/16 v20, 0x8

    .line 434
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_5

    const/4 v14, 0x1

    .line 435
    .local v14, "isDayActivated":Z
    :goto_2
    if-eqz v14, :cond_6

    .line 436
    or-int/lit8 v20, v20, 0x20

    .line 439
    int-to-float v0, v8

    move/from16 v22, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 450
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mToday:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_7

    const/16 v16, 0x1

    .line 452
    .local v16, "isDayToday":Z
    :goto_4
    if-eqz v16, :cond_2

    if-eqz v14, :cond_8

    .line 455
    :cond_2
    invoke-static/range {v20 .. v20}, Landroid/util/StateSet;->get(I)[I

    move-result-object v21

    .line 456
    .local v21, "stateSet":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    .line 458
    .end local v21    # "stateSet":[I
    .local v11, "dayTextColor":I
    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move-object/from16 v22, v0

    int-to-long v0, v10

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v22

    int-to-float v0, v8

    move/from16 v23, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    add-int/lit8 v6, v6, 0x1

    .line 464
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v6, v0, :cond_3

    .line 465
    const/4 v6, 0x0

    .line 466
    add-int v18, v18, v19

    .line 418
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 424
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayToday":Z
    .end local v20    # "stateMask":I
    :cond_4
    move v8, v7

    .restart local v8    # "colCenterRtl":I
    goto/16 :goto_1

    .line 434
    .restart local v15    # "isDayEnabled":Z
    .restart local v20    # "stateMask":I
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "isDayActivated":Z
    goto/16 :goto_2

    .line 440
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_1

    .line 441
    or-int/lit8 v20, v20, 0x10

    .line 443
    if-eqz v15, :cond_1

    .line 445
    int-to-float v0, v8

    move/from16 v22, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 445
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 450
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "isDayToday":Z
    goto/16 :goto_4

    .line 453
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getColor()I

    move-result v11

    .restart local v11    # "dayTextColor":I
    goto/16 :goto_5

    .line 408
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayToday":Z
    .end local v20    # "stateMask":I
    :cond_9
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 376
    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 377
    .local v8, "p":Landroid/text/TextPaint;
    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 378
    .local v6, "headerHeight":I
    iget v10, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 379
    .local v10, "rowHeight":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 382
    .local v3, "colWidth":I
    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v11

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v5, v11, v12

    .line 383
    .local v5, "halfLineHeight":F
    div-int/lit8 v11, v10, 0x2

    add-int v9, v6, v11

    .line 385
    .local v9, "rowCenter":I
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    const/4 v11, 0x7

    if-ge v0, v11, :cond_1

    .line 386
    mul-int v11, v3, v0

    div-int/lit8 v12, v3, 0x2

    add-int v1, v11, v12

    .line 388
    .local v1, "colCenter":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 389
    iget v11, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v2, v11, v1

    .line 394
    .local v2, "colCenterRtl":I
    :goto_1
    iget v11, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v11, v0

    rem-int/lit8 v4, v11, 0x7

    .line 395
    .local v4, "dayOfWeek":I
    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->getDayOfWeekLabel(I)Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, "label":Ljava/lang/String;
    int-to-float v11, v2

    int-to-float v12, v9

    sub-float/2addr v12, v5

    invoke-virtual {p1, v7, v11, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "colCenterRtl":I
    .end local v4    # "dayOfWeek":I
    .end local v7    # "label":Ljava/lang/String;
    :cond_0
    move v2, v1

    .restart local v2    # "colCenterRtl":I
    goto :goto_1

    .line 375
    .end local v1    # "colCenter":I
    .end local v2    # "colCenterRtl":I
    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 366
    iget v3, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 369
    .local v1, "x":F
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    add-float v0, v3, v4

    .line 370
    .local v0, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float v2, v3, v5

    .line 372
    .local v2, "y":F
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 365
    return-void
.end method

.method private findDayOffset()I
    .locals 3

    .prologue
    .line 669
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int v0, v1, v2

    .line 670
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_0

    .line 671
    add-int/lit8 v1, v0, 0x7

    return v1

    .line 673
    :cond_0
    return v0
.end method

.method private getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 723
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 724
    const/4 v8, 0x0

    return v8

    .line 727
    :cond_0
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    add-int v3, v8, v9

    .line 730
    .local v3, "index":I
    rem-int/lit8 v0, v3, 0x7

    .line 731
    .local v0, "col":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 733
    .local v1, "colWidth":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 734
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v1

    sub-int v4, v8, v9

    .line 740
    .local v4, "left":I
    :goto_0
    div-int/lit8 v5, v3, 0x7

    .line 741
    .local v5, "row":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 742
    .local v6, "rowHeight":I
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v8, v9

    .line 743
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v2

    mul-int v9, v5, v6

    add-int v7, v8, v9

    .line 745
    .local v7, "top":I
    add-int v8, v4, v1

    add-int v9, v7, v6

    invoke-virtual {p2, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 747
    const/4 v8, 0x1

    return v8

    .line 736
    .end local v2    # "headerHeight":I
    .end local v4    # "left":I
    .end local v5    # "row":I
    .end local v6    # "rowHeight":I
    .end local v7    # "top":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v8

    mul-int v9, v0, v1

    add-int v4, v8, v9

    .restart local v4    # "left":I
    goto :goto_0
.end method

.method private getDayAtLocation(II)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v10, -0x1

    .line 686
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v8

    sub-int v4, p1, v8

    .line 687
    .local v4, "paddedX":I
    if-ltz v4, :cond_0

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v4, v8, :cond_1

    .line 688
    :cond_0
    return v10

    .line 691
    :cond_1
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v8, v9

    .line 692
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v8

    sub-int v6, p2, v8

    .line 693
    .local v6, "paddedY":I
    if-lt v6, v2, :cond_2

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v6, v8, :cond_3

    .line 694
    :cond_2
    return v10

    .line 699
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 700
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v5, v8, v4

    .line 705
    .local v5, "paddedXRtl":I
    :goto_0
    sub-int v8, v6, v2

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int v7, v8, v9

    .line 706
    .local v7, "row":I
    mul-int/lit8 v8, v5, 0x7

    iget v9, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int v0, v8, v9

    .line 707
    .local v0, "col":I
    mul-int/lit8 v8, v7, 0x7

    add-int v3, v0, v8

    .line 708
    .local v3, "index":I
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int v1, v8, v9

    .line 709
    .local v1, "day":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 710
    return v10

    .line 702
    .end local v0    # "col":I
    .end local v1    # "day":I
    .end local v3    # "index":I
    .end local v5    # "paddedXRtl":I
    .end local v7    # "row":I
    :cond_4
    move v5, v4

    .restart local v5    # "paddedXRtl":I
    goto :goto_0

    .line 713
    .restart local v0    # "col":I
    .restart local v1    # "day":I
    .restart local v3    # "index":I
    .restart local v7    # "row":I
    :cond_5
    return v1
.end method

.method private getDayOfWeekLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 402
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 577
    packed-switch p0, :pswitch_data_0

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :pswitch_0
    const/16 v0, 0x1f

    return v0

    .line 590
    :pswitch_1
    const/16 v0, 0x1e

    return v0

    .line 592
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 577
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

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 242
    const v6, 0x10405eb

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "monthTypeface":Ljava/lang/String;
    const v6, 0x10405ec

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v6, 0x10405ed

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "dayTypeface":Ljava/lang/String;
    const v6, 0x1050122

    .line 246
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 249
    .local v4, "monthTextSize":I
    const v6, 0x1050123

    .line 248
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 251
    .local v0, "dayOfWeekTextSize":I
    const v6, 0x1050124

    .line 250
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 253
    .local v2, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 254
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 255
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 256
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 257
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 260
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 261
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 262
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 263
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 269
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 272
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 273
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 274
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 275
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 2
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x0

    .line 472
    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidDayOfMonth(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    if-lt p1, v0, :cond_0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 3
    .param p0, "day"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 480
    if-lt p0, v0, :cond_0

    const/4 v2, 0x7

    if-gt p0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 2
    .param p0, "month"    # I

    .prologue
    const/4 v0, 0x0

    .line 484
    if-ltz p0, :cond_0

    const/16 v1, 0xb

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 4
    .param p1, "day"    # I

    .prologue
    const/4 v3, 0x1

    .line 757
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_0

    .line 762
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 763
    .local v0, "date":Ljava/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 764
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V

    .line 768
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1, p1, v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 769
    return v3

    .line 758
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 4
    .param p1, "day"    # I
    .param p2, "today"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 600
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 599
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 600
    goto :goto_0

    :cond_1
    move v0, v1

    .line 599
    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public getMonthHeight()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitleFormatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    .line 235
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    .line 355
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    .line 356
    .local v1, "paddingTop":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 359
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 360
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 362
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    return-void

    .line 629
    :cond_0
    sub-int v17, p4, p2

    .line 630
    .local v17, "w":I
    sub-int v3, p5, p3

    .line 631
    .local v3, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v13

    .line 632
    .local v13, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v15

    .line 633
    .local v15, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v14

    .line 634
    .local v14, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v12

    .line 635
    .local v12, "paddingBottom":I
    sub-int v10, v17, v14

    .line 636
    .local v10, "paddedRight":I
    sub-int v8, v3, v12

    .line 637
    .local v8, "paddedBottom":I
    sub-int v11, v10, v13

    .line 638
    .local v11, "paddedWidth":I
    sub-int v9, v8, v15

    .line 639
    .local v9, "paddedHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v11, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v9, v0, :cond_2

    .line 640
    :cond_1
    return-void

    .line 643
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 644
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v6, v18, v12

    .line 649
    .local v6, "measuredPaddedHeight":I
    int-to-float v0, v9

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 650
    .local v16, "scaleH":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v7, v0

    .line 651
    .local v7, "monthHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    div-int/lit8 v2, v18, 0x7

    .line 652
    .local v2, "cellWidth":I
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 655
    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 659
    div-int/lit8 v18, v2, 0x2

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int v5, v18, v19

    .line 660
    .local v5, "maxSelectorWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v4, v18, v12

    .line 661
    .local v4, "maxSelectorHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    move/from16 v18, v0

    .line 662
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 661
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 623
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 605
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v4, v4, 0x6

    .line 606
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 605
    add-int/2addr v4, v5

    .line 606
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 605
    add-int/2addr v4, v5

    .line 607
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v5

    .line 605
    add-int/2addr v4, v5

    .line 607
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v5

    .line 605
    add-int v0, v4, v5

    .line 608
    .local v0, "preferredHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v4, v4, 0x7

    .line 609
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v5

    .line 608
    add-int/2addr v4, v5

    .line 609
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v5

    .line 608
    add-int v1, v4, v5

    .line 610
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    .line 611
    .local v3, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    .line 612
    .local v2, "resolvedHeight":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    .line 604
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 619
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    .line 616
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 322
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v4, v5

    .line 324
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 325
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 328
    :pswitch_0
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    .line 329
    .local v2, "touchedItem":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    if-eq v5, v2, :cond_1

    .line 330
    iput v2, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    .line 331
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 333
    :cond_1
    if-nez v0, :cond_0

    if-gez v2, :cond_0

    .line 335
    return v6

    .line 340
    .end local v2    # "touchedItem":I
    :pswitch_1
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v1

    .line 341
    .local v1, "clickedDay":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 345
    .end local v1    # "clickedDay":I
    :pswitch_2
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    .line 346
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 304
    const/16 v1, 0x18

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 305
    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 302
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 219
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 217
    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 285
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 286
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 287
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 284
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 297
    const/16 v1, 0x28

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 296
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 298
    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 295
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 223
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 224
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 225
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 222
    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 291
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 292
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 290
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    .prologue
    .line 508
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 515
    :goto_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 516
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 507
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0
.end method

.method setMonthParams(IIIIII)V
    .locals 7
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .prologue
    const/4 v6, 0x1

    .line 537
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 539
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 542
    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 544
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 545
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 546
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 547
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 549
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 556
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 557
    .local v2, "today":Ljava/util/Calendar;
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 558
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 559
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_3

    .line 560
    add-int/lit8 v0, v1, 0x1

    .line 561
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 559
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    .end local v0    # "day":I
    .end local v1    # "i":I
    .end local v2    # "today":Ljava/util/Calendar;
    :cond_2
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 566
    .restart local v1    # "i":I
    .restart local v2    # "today":Ljava/util/Calendar;
    :cond_3
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p5, v6, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 567
    iget v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 570
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    .line 573
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 536
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 212
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 214
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 211
    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 279
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 280
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 278
    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    .prologue
    .line 310
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 309
    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 494
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 497
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 498
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 493
    return-void
.end method
