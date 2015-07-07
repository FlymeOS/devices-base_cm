.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$Node;,
        Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimePickerDelegate"


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderView:Landroid/view/View;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourView:Z

.field private mIsEnabled:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSeparatorView:Landroid/widget/TextView;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 20
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 107
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 68
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 92
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    .line 1234
    new-instance v17, Landroid/widget/TimePickerSpinnerDelegate$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 1244
    new-instance v17, Landroid/widget/TimePickerSpinnerDelegate$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$5;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 112
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 114
    .local v13, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 116
    .local v16, "res":Landroid/content/res/Resources;
    const v17, 0x104073b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mHourPickerDescription:Ljava/lang/String;

    .line 117
    const v17, 0x104073d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mSelectHours:Ljava/lang/String;

    .line 118
    const v17, 0x104073c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mMinutePickerDescription:Ljava/lang/String;

    .line 119
    const v17, 0x104073e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 121
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerClockDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "amPmStrings":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    .line 123
    const/16 v17, 0x1

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    .line 125
    const/16 v17, 0x9

    const v18, 0x10900e1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 127
    .local v14, "layoutResourceId":I
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 128
    .local v15, "mainView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TimePicker;->addView(Landroid/view/View;)V

    .line 130
    const v17, 0x10203b4

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    .line 131
    const v17, 0x10203b5

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 132
    const v17, 0x10203b6

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    .line 133
    const v17, 0x10203b7

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    .line 136
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 138
    .local v12, "headerTimeTextAppearance":I
    if-eqz v12, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mSeparatorView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 144
    :cond_0
    const/16 v17, 0xb

    const v18, 0x10600f0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 147
    .local v11, "headerSelectedTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v18

    const v19, 0x10100a1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v18

    const v19, 0x10100a1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 154
    .local v10, "headerAmPmTextAppearance":I
    if-eqz v10, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 158
    :cond_1
    const v17, 0x10203b3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    const v17, 0x10203b9

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadialTimePickerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    .line 166
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setupListeners()V

    .line 168
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAllowAutoAdvance:Z

    .line 171
    const v17, 0x1040746

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    .line 172
    const v17, 0x1040744

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mPlaceholderText:C

    .line 174
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    .line 175
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->generateLegalTimesTree()V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v7

    .line 179
    .local v7, "calendar":Ljava/util/Calendar;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 180
    .local v8, "currentHour":I
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 181
    .local v9, "currentMinute":I
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v8, v9, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate;->initialize(IIZI)V

    .line 182
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TimePickerSpinnerDelegate;IZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/RadialTimePickerView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TimePickerSpinnerDelegate;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/TimePickerSpinnerDelegate;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->finishKbMode()V

    return-void
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 834
    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 856
    :cond_1
    :goto_0
    return v1

    .line 839
    :cond_2
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 841
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->deleteLastTypedKey()I

    goto :goto_0

    .line 845
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->getValFromKeyCode(I)I

    move-result v0

    .line 846
    .local v0, "val":I
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 848
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 849
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    .line 850
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 851
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 853
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    :cond_5
    move v1, v2

    .line 856
    goto :goto_0
.end method

.method private computeMaxWidthOfNumbers(I)I
    .locals 9
    .param p1, "max"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v8, 0x0

    .line 236
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 237
    .local v3, "tempView":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const v6, 0x103041f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 238
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 240
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .local v2, "minutes":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 243
    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v3, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 246
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    .line 892
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 893
    .local v0, "deleted":I
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 894
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    .line 896
    :cond_0
    return v0
.end method

.method private finishKbMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 903
    iput-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    .line 904
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 905
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getEnteredTime([Z)[I

    move-result-object v0

    .line 906
    .local v0, "values":[I
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 907
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 908
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v1, :cond_0

    .line 909
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    .line 911
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 913
    .end local v0    # "values":[I
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    .line 914
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v4}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    .line 915
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 23

    .prologue
    .line 1068
    const/4 v6, 0x7

    .line 1069
    .local v6, "k0":I
    const/16 v7, 0x8

    .line 1070
    .local v7, "k1":I
    const/16 v8, 0x9

    .line 1071
    .local v8, "k2":I
    const/16 v9, 0xa

    .line 1072
    .local v9, "k3":I
    const/16 v10, 0xb

    .line 1073
    .local v10, "k4":I
    const/16 v11, 0xc

    .line 1074
    .local v11, "k5":I
    const/16 v12, 0xd

    .line 1075
    .local v12, "k6":I
    const/16 v13, 0xe

    .line 1076
    .local v13, "k7":I
    const/16 v14, 0xf

    .line 1077
    .local v14, "k8":I
    const/16 v15, 0x10

    .line 1080
    .local v15, "k9":I
    new-instance v20, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    .line 1081
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1083
    new-instance v16, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1084
    .local v16, "minuteFirstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    new-instance v17, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1086
    .local v17, "minuteSecondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1089
    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1090
    .local v4, "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1093
    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1094
    .local v18, "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1096
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1099
    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1101
    .local v19, "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1104
    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_5

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1105
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1107
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1110
    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x9

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1111
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1114
    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_6

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1115
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1117
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1120
    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_7

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1121
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1123
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1126
    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1127
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1129
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1192
    .end local v16    # "minuteFirstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    .end local v17    # "minuteSecondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    :goto_0
    return-void

    .line 1133
    .end local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    .end local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    .end local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    :cond_0
    new-instance v3, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1136
    .local v3, "ampm":Landroid/widget/TimePickerSpinnerDelegate$Node;
    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x8

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1137
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1139
    invoke-virtual {v4, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1142
    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_9

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1143
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1145
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1148
    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_a

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1149
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1151
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1155
    new-instance v5, Landroid/widget/TimePickerSpinnerDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_b

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1156
    .local v5, "fourthDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1158
    invoke-virtual {v5, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1161
    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_c

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1162
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1164
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1167
    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_d

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1168
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1171
    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_e

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1172
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1174
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1177
    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1178
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1180
    invoke-virtual {v4, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1183
    new-instance v18, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_10

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1184
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1187
    new-instance v19, Landroid/widget/TimePickerSpinnerDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_11

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate$Node;-><init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V

    .line 1188
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerSpinnerDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    .line 1190
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerSpinnerDelegate$Node;->addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V

    goto/16 :goto_0

    .line 1083
    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1084
    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1089
    :array_2
    .array-data 4
        0x7
        0x8
    .end array-data

    .line 1093
    :array_3
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1099
    :array_4
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1104
    :array_5
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1114
    :array_6
    .array-data 4
        0x7
        0x8
        0x9
        0xa
    .end array-data

    .line 1120
    :array_7
    .array-data 4
        0xb
        0xc
    .end array-data

    .line 1126
    :array_8
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1142
    :array_9
    .array-data 4
        0x7
        0x8
        0x9
    .end array-data

    .line 1148
    :array_a
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1155
    :array_b
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1161
    :array_c
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1167
    :array_d
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data

    .line 1171
    :array_e
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1177
    :array_f
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1183
    :array_10
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1187
    :array_11
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 11
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 1033
    iget v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    .line 1035
    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 1038
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1039
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1040
    .local v0, "amChar":C
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1041
    .local v4, "pmChar":C
    if-eq v0, v4, :cond_4

    .line 1042
    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 1044
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_3

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 1045
    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    .line 1046
    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    .line 1054
    .end local v0    # "amChar":C
    .end local v1    # "events":[Landroid/view/KeyEvent;
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_1
    :goto_1
    if-nez p1, :cond_5

    .line 1055
    iget v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmKeyCode:I

    .line 1060
    :cond_2
    :goto_2
    return v5

    .line 1048
    .restart local v0    # "amChar":C
    .restart local v1    # "events":[Landroid/view/KeyEvent;
    .restart local v2    # "i":I
    .restart local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v4    # "pmChar":C
    :cond_3
    const-string v6, "TimePickerDelegate"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1038
    .end local v1    # "events":[Landroid/view/KeyEvent;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1056
    .end local v0    # "amChar":C
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_5
    if-ne p1, v9, :cond_2

    .line 1057
    iget v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getCurrentItemShowing()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private getEnteredTime([Z)[I
    .locals 11
    .param p1, "enteredZeros"    # [Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 993
    const/4 v0, -0x1

    .line 994
    .local v0, "amOrPm":I
    const/4 v5, 0x1

    .line 995
    .local v5, "startIndex":I
    iget-boolean v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v7, :cond_1

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 996
    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 997
    .local v3, "keyCode":I
    invoke-direct {p0, v10}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_3

    .line 998
    const/4 v0, 0x0

    .line 1002
    :cond_0
    :goto_0
    const/4 v5, 0x2

    .line 1004
    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    .line 1005
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 1006
    .local v1, "hour":I
    move v2, v5

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_7

    .line 1007
    iget-object v7, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/TimePickerSpinnerDelegate;->getValFromKeyCode(I)I

    move-result v6

    .line 1008
    .local v6, "val":I
    if-ne v2, v5, :cond_4

    .line 1009
    move v4, v6

    .line 1006
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 999
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v6    # "val":I
    .restart local v3    # "keyCode":I
    :cond_3
    invoke-direct {p0, v9}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 1000
    const/4 v0, 0x1

    goto :goto_0

    .line 1010
    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    .restart local v6    # "val":I
    :cond_4
    add-int/lit8 v7, v5, 0x1

    if-ne v2, v7, :cond_5

    .line 1011
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v4, v7

    .line 1012
    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    .line 1013
    aput-boolean v9, p1, v9

    goto :goto_2

    .line 1015
    :cond_5
    add-int/lit8 v7, v5, 0x2

    if-ne v2, v7, :cond_6

    .line 1016
    move v1, v6

    goto :goto_2

    .line 1017
    :cond_6
    add-int/lit8 v7, v5, 0x3

    if-ne v2, v7, :cond_2

    .line 1018
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v1, v7

    .line 1019
    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    .line 1020
    aput-boolean v9, p1, v10

    goto :goto_2

    .line 1025
    .end local v6    # "val":I
    :cond_7
    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v1, v7, v10

    aput v4, v7, v9

    const/4 v8, 0x2

    aput v0, v7, v8

    return-object v7
.end method

.method private getTypedTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 956
    packed-switch p1, :pswitch_data_0

    .line 978
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 958
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 960
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 962
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 964
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 966
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 968
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 970
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 972
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 974
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 976
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private inKbMode()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    return v0
.end method

.method private initialize(IIZI)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .prologue
    .line 185
    iput p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    .line 186
    iput p2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    .line 187
    iput-boolean p3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    .line 189
    invoke-direct {p0, p4}, Landroid/widget/TimePickerSpinnerDelegate;->updateUI(I)V

    .line 190
    return-void
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 878
    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v3, :cond_1

    .line 881
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->getEnteredTime([Z)[I

    move-result-object v0

    .line 882
    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 886
    .end local v0    # "values":[I
    :goto_0
    return v1

    .restart local v0    # "values":[I
    :cond_0
    move v1, v2

    .line 882
    goto :goto_0

    .line 886
    .end local v0    # "values":[I
    :cond_1
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    .line 864
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mLegalTimesTree:Landroid/widget/TimePickerSpinnerDelegate$Node;

    .line 865
    .local v2, "node":Landroid/widget/TimePickerSpinnerDelegate$Node;
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 866
    .local v1, "keyCode":I
    invoke-virtual {v2, v1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->canReach(I)Landroid/widget/TimePickerSpinnerDelegate$Node;

    move-result-object v2

    .line 867
    if-nez v2, :cond_0

    .line 868
    const/4 v3, 0x0

    .line 871
    .end local v1    # "keyCode":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .prologue
    .line 714
    array-length v3, p1

    .line 715
    .local v3, "lengthAny":I
    if-lez v3, :cond_2

    .line 716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 717
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 718
    .local v0, "c":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 719
    aget-char v4, p1, v2

    if-ne v0, v4, :cond_0

    .line 725
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :goto_2
    return v1

    .line 718
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 716
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 725
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private static modulo12(IZ)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "startWithZero"    # Z

    .prologue
    .line 682
    rem-int/lit8 v0, p0, 0xc

    .line 683
    .local v0, "value":I
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 684
    const/16 v0, 0xc

    .line 686
    :cond_0
    return v0
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 507
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 508
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 512
    :cond_0
    return-void
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 772
    const/16 v4, 0x43

    if-ne p1, v4, :cond_4

    .line 773
    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    if-eqz v4, :cond_0

    .line 774
    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 775
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->deleteLastTypedKey()I

    move-result v0

    .line 777
    .local v0, "deleted":I
    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 778
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    .line 784
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 786
    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 812
    :cond_1
    :goto_1
    return v2

    .line 779
    .restart local v0    # "deleted":I
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 780
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_3
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_0

    .line 789
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x7

    if-eq p1, v4, :cond_5

    const/16 v4, 0x8

    if-eq p1, v4, :cond_5

    const/16 v4, 0x9

    if-eq p1, v4, :cond_5

    const/16 v4, 0xa

    if-eq p1, v4, :cond_5

    const/16 v4, 0xb

    if-eq p1, v4, :cond_5

    const/16 v4, 0xc

    if-eq p1, v4, :cond_5

    const/16 v4, 0xd

    if-eq p1, v4, :cond_5

    const/16 v4, 0xe

    if-eq p1, v4, :cond_5

    const/16 v4, 0xf

    if-eq p1, v4, :cond_5

    const/16 v4, 0x10

    if-eq p1, v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_5

    invoke-direct {p0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 796
    :cond_5
    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    if-nez v4, :cond_7

    .line 797
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    if-nez v3, :cond_6

    .line 799
    const-string v3, "TimePickerDelegate"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    :cond_6
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 803
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->tryStartingKbMode(I)V

    goto :goto_1

    .line 807
    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 808
    invoke-direct {p0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    goto :goto_1
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 741
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    .line 743
    if-nez p1, :cond_2

    .line 744
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 745
    .local v0, "hours":I
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v2, :cond_0

    .line 746
    rem-int/lit8 v0, v0, 0xc

    .line 748
    :cond_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 749
    if-eqz p3, :cond_1

    .line 750
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 760
    .end local v0    # "hours":I
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    if-nez p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 761
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 762
    return-void

    .line 753
    :cond_2
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .line 754
    .local v1, "minutes":I
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 755
    if-eqz p3, :cond_1

    .line 756
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1    # "minutes":I
    :cond_3
    move v2, v4

    .line 760
    goto :goto_1

    :cond_4
    move v3, v4

    .line 761
    goto :goto_2
.end method

.method private setInKbMode(Z)V
    .locals 0
    .param p1, "inKbMode"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    .line 476
    return-void
.end method

.method private setTypedTimes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "typeTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    .line 487
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 194
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 195
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 197
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p0}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 199
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 823
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    .line 825
    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    .line 826
    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateDisplay(Z)V

    .line 827
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    .line 829
    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    .line 597
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2
    .param p1, "amOrPm"    # I

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 601
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 609
    :goto_0
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 604
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 11
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    .line 926
    if-nez p1, :cond_3

    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 927
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 928
    .local v1, "hour":I
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v4

    .line 929
    .local v4, "minute":I
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    .line 930
    invoke-direct {p0, v4}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    .line 931
    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v8, :cond_0

    .line 932
    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    .line 934
    :cond_0
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    .line 935
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/TimePickerSpinnerDelegate;->onValidationChanged(Z)V

    .line 953
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_1
    :goto_1
    return-void

    .line 932
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 937
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Z

    fill-array-data v0, :array_0

    .line 938
    .local v0, "enteredZeros":[Z
    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->getEnteredTime([Z)[I

    move-result-object v7

    .line 939
    .local v7, "values":[I
    const/4 v8, 0x0

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_4

    const-string v2, "%02d"

    .line 940
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_5

    const-string v5, "%02d"

    .line 941
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    .line 943
    .local v3, "hourStr":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    .line 945
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 947
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 949
    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v8, :cond_1

    .line 950
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 939
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .line 940
    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_5
    const-string v5, "%2d"

    goto :goto_3

    .line 941
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 943
    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 937
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private updateHeaderAmPm()V
    .locals 9

    .prologue
    const v8, 0x10203b5

    const/16 v7, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 252
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_0

    .line 253
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v6, "hm"

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "bestDateTimePattern":Ljava/lang/String;
    const-string v5, "a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 260
    .local v0, "amPmOnLeft":Z
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 262
    if-nez v0, :cond_2

    move v0, v3

    .line 265
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 268
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_3

    .line 269
    invoke-direct {p0, v7}, Landroid/widget/TimePickerSpinnerDelegate;->computeMaxWidthOfNumbers(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 270
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 271
    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 278
    :goto_2
    iget v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    if-ge v5, v7, :cond_4

    :goto_3
    invoke-direct {p0, v4}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    .line 279
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$3;

    invoke-direct {v4, p0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move v0, v4

    .line 262
    goto :goto_1

    .line 273
    .restart local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v5, 0x3c

    invoke-direct {p0, v5}, Landroid/widget/TimePickerSpinnerDelegate;->computeMaxWidthOfNumbers(I)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 274
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 275
    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_4
    move v4, v3

    .line 278
    goto :goto_3
.end method

.method private updateHeaderHour(IZ)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    .line 642
    iget-object v9, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v8, :cond_4

    const-string v8, "Hm"

    :goto_0
    invoke-static {v9, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 645
    .local v6, "lengthPattern":I
    const/4 v4, 0x0

    .line 646
    .local v4, "hourWithTwoDigit":Z
    const/4 v3, 0x0

    .line 649
    .local v3, "hourFormat":C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 650
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 651
    .local v1, "c":C
    const/16 v8, 0x48

    if-eq v1, v8, :cond_0

    const/16 v8, 0x68

    if-eq v1, v8, :cond_0

    const/16 v8, 0x4b

    if-eq v1, v8, :cond_0

    const/16 v8, 0x6b

    if-ne v1, v8, :cond_5

    .line 652
    :cond_0
    move v3, v1

    .line 653
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v6, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v1, v8, :cond_1

    .line 654
    const/4 v4, 0x1

    .line 660
    .end local v1    # "c":C
    :cond_1
    if-eqz v4, :cond_6

    .line 661
    const-string v2, "%02d"

    .line 665
    .local v2, "format":Ljava/lang/String;
    :goto_2
    iget-boolean v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v8, :cond_7

    .line 667
    const/16 v8, 0x6b

    if-ne v3, v8, :cond_2

    if-nez p1, :cond_2

    .line 668
    const/16 p1, 0x18

    .line 674
    :cond_2
    :goto_3
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 675
    .local v7, "text":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    if-eqz p2, :cond_3

    .line 677
    iget-object v8, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8, v7}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 679
    :cond_3
    return-void

    .line 642
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "hourWithTwoDigit":Z
    .end local v5    # "i":I
    .end local v6    # "lengthPattern":I
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_4
    const-string v8, "hm"

    goto :goto_0

    .line 649
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "hourWithTwoDigit":Z
    .restart local v5    # "i":I
    .restart local v6    # "lengthPattern":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 663
    .end local v1    # "c":C
    :cond_6
    const-string v2, "%d"

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_2

    .line 672
    :cond_7
    const/16 v8, 0x4b

    if-ne v3, v8, :cond_8

    const/4 v8, 0x1

    :goto_4
    invoke-static {p1, v8}, Landroid/widget/TimePickerSpinnerDelegate;->modulo12(IZ)I

    move-result p1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_4
.end method

.method private updateHeaderMinute(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 729
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 730
    const/4 p1, 0x0

    .line 732
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 6

    .prologue
    .line 698
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v4, :cond_0

    const-string v4, "Hm"

    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    .line 703
    .local v2, "hourFormats":[C
    invoke-static {v0, v2}, Landroid/widget/TimePickerSpinnerDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    .line 704
    .local v1, "hIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 706
    const-string v3, ":"

    .line 710
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    return-void

    .line 698
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hIndex":I
    .end local v2    # "hourFormats":[C
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_0
    const-string v4, "hm"

    goto :goto_0

    .line 708
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hIndex":I
    .restart local v2    # "hourFormats":[C
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 702
    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 231
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    .line 232
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    .line 233
    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->updateRadialPicker(I)V

    .line 219
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderAmPm()V

    .line 221
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    .line 223
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderSeparator()V

    .line 225
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    .line 227
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 228
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 319
    .local v0, "currentHour":I
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    .line 320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 327
    :goto_0
    return-object v1

    .line 322
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 327
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 324
    :pswitch_0
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 410
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateUI(I)V

    .line 411
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 461
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 466
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 467
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 446
    const/4 v0, 0x1

    .line 447
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 448
    or-int/lit16 v0, v0, 0x80

    .line 452
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 453
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 454
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "selectedDate":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    return-void

    .line 450
    .end local v1    # "selectedDate":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 421
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    .line 422
    .local v0, "ss":Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->inKbMode()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setInKbMode(Z)V

    .line 423
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getTypesTimes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setTypedTimes(Ljava/util/ArrayList;)V

    .line 424
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerSpinnerDelegate;->initialize(IIZI)V

    .line 425
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 426
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInKbMode:Z

    if-eqz v1, :cond_0

    .line 427
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->tryStartingKbMode(I)V

    .line 428
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 430
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 415
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->inKbMode()Z

    move-result v5

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getTypedTimes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentItemShowing()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 616
    if-nez p1, :cond_2

    .line 617
    invoke-direct {p0, p2, v5}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    .line 618
    const-string v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "announcement":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 620
    invoke-direct {p0, v4, v4, v5}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentItemShowing(IZZ)V

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 639
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 623
    .restart local v0    # "announcement":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 628
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_3

    .line 629
    invoke-direct {p0, p2}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    .line 630
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 631
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 632
    invoke-direct {p0, p2}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 633
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 634
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_5

    .line 635
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 637
    :cond_5
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->finishKbMode()V

    goto :goto_1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 301
    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    .line 305
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    .line 306
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderAmPm()V

    .line 307
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 308
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    .line 309
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 310
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 435
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 436
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 337
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialMinute:I

    .line 341
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderMinute(I)V

    .line 342
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 343
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 344
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    .line 394
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 395
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 362
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v1, v2, :cond_0

    .line 373
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 366
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->generateLegalTimesTree()V

    .line 367
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 368
    .local v0, "hour":I
    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mInitialHourOfDay:I

    .line 369
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderHour(IZ)V

    .line 370
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHeaderAmPm()V

    .line 371
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->updateRadialPicker(I)V

    .line 372
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->invalidate()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 385
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 386
    return-void
.end method
