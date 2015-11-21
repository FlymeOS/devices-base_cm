.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x1090085

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 1996
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 557
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 566
    const v0, 0x1160017

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 580
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 596
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 296
    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 301
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 306
    const/4 v15, 0x3

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 326
    const/high16 v15, -0x80000000

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 427
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 478
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 599
    sget-object v15, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 601
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    const v16, 0x1090085

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 604
    .local v11, "layoutResId":I
    const v15, 0x1090085

    if-eq v11, v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 606
    const/16 v15, 0xa

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 609
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 611
    const/4 v15, 0x2

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 613
    const/4 v15, 0x1

    const/high16 v16, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v9, v15

    .line 616
    .local v9, "defSelectionDividerHeight":I
    const/4 v15, 0x3

    invoke-virtual {v4, v15, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 619
    const/4 v15, 0x1

    const/high16 v16, 0x42400000    # 48.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v8, v15

    .line 622
    .local v8, "defSelectionDividerDistance":I
    const/4 v15, 0x4

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 625
    const/4 v15, 0x5

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 628
    const/4 v15, 0x6

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 630
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 632
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "minHeight > maxHeight"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 604
    .end local v8    # "defSelectionDividerDistance":I
    .end local v9    # "defSelectionDividerHeight":I
    :cond_0
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 635
    .restart local v8    # "defSelectionDividerDistance":I
    .restart local v9    # "defSelectionDividerHeight":I
    :cond_1
    const/4 v15, 0x7

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 638
    const/16 v15, 0x8

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 640
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 642
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "minWidth > maxWidth"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 645
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 647
    const/16 v15, 0x9

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 650
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 652
    new-instance v15, Landroid/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 659
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 663
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 665
    new-instance v12, Landroid/widget/NumberPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 677
    .local v12, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v13, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 691
    .local v13, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v15, :cond_6

    .line 692
    const v15, 0x102034c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 700
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v15, :cond_7

    .line 701
    const v15, 0x102034e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 702
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 709
    :goto_4
    const v15, 0x102034d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 710
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v16, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v18 .. v19}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v18, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 728
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 729
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 730
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 731
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v15

    div-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 733
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 736
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 737
    .local v14, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 738
    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 739
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 742
    .local v6, "colors":Landroid/content/res/ColorStateList;
    sget-object v15, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 743
    .local v5, "color":I
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 744
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 747
    new-instance v15, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v15 .. v18}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 748
    new-instance v15, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v16

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x40200000    # 2.5f

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v15 .. v17}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 750
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v15

    if-nez v15, :cond_3

    .line 754
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 756
    :cond_3
    return-void

    .line 645
    .end local v5    # "color":I
    .end local v6    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v13    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v14    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 659
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 696
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v13    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 705
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Landroid/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1780(Landroid/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1679
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1680
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1681
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1682
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1684
    :cond_0
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1685
    if-eqz p1, :cond_1

    .line 1686
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1690
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1698
    :goto_1
    return-void

    .line 1688
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1692
    :cond_2
    if-eqz p1, :cond_3

    .line 1693
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1695
    :cond_3
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1799
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1800
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1799
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1802
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1803
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1804
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1806
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1807
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1808
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1815
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1816
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1817
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1831
    :goto_0
    return-void

    .line 1820
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1821
    :cond_1
    const-string v2, ""

    .line 1830
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1823
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1824
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1825
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1826
    goto :goto_1

    .line 1827
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2090
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2091
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2092
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2093
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2094
    if-lez v4, :cond_2

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2096
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2097
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2098
    const/4 v1, 0x1

    .line 2100
    :cond_1
    return v1

    .line 2094
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1755
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1757
    if-lez p1, :cond_0

    .line 1758
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1763
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1764
    return-void

    .line 1760
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1834
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2684
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1949
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1951
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1975
    :goto_0
    return v1

    .line 1956
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1958
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1959
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1960
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1956
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1969
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1952
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 1975
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1970
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1770
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1771
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1775
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1772
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1773
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1264
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1265
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1267
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1268
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1271
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1784
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1783
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1786
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1787
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1788
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1790
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1791
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1792
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1718
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1719
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1720
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1701
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1702
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1703
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1704
    .local v4, "totalTextHeight":I
    iget v5, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v6, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1705
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1706
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1707
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1710
    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1711
    .local v0, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1713
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1714
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1715
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1631
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1632
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1633
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1634
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1635
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1636
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1637
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1639
    :cond_0
    aput v2, v3, v1

    .line 1640
    aget v4, v3, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1642
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1589
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1600
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1592
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1593
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1594
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1602
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1598
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1600
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1594
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 814
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 815
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 816
    .local v0, "amountToScroll":I
    iget v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 817
    .local v1, "futureScrollOffset":I
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 818
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 819
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 820
    if-lez v2, :cond_1

    .line 821
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 826
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 827
    invoke-virtual {p0, v4, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 830
    :goto_1
    return v3

    .line 823
    :cond_1
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 830
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1878
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 1881
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1742
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1745
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1746
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1726
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1727
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1730
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1736
    :cond_1
    :goto_0
    return-void

    .line 1732
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1733
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 1912
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1913
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1917
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1918
    return-void

    .line 1915
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1889
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1890
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1894
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1895
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1896
    return-void

    .line 1892
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 1983
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1984
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 1988
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$602(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1989
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1990
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1991
    return-void

    .line 1986
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1936
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1939
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1940
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1942
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1943
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1927
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1905
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1618
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1619
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1620
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1622
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1651
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1669
    :goto_0
    return-void

    .line 1655
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1656
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1661
    :goto_1
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1662
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1663
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1664
    if-eqz p2, :cond_1

    .line 1665
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1667
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1668
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1658
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1659
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1250
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1251
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1252
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1253
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1255
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1256
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1258
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1277
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    const/4 v4, 0x0

    .line 1281
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1282
    const/4 v3, 0x0

    .line 1283
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1284
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1285
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1286
    move v3, v1

    .line 1283
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1289
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1290
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1291
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1292
    add-int/lit8 v5, v5, 0x1

    .line 1293
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1295
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1305
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1306
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1307
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1308
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1312
    :goto_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1297
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1298
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1299
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1300
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1301
    float-to-int v4, v6

    .line 1298
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1310
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1863
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1865
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1866
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1867
    const/4 v1, 0x1

    .line 1870
    :goto_1
    return v1

    .line 1863
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1870
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1838
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1839
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1841
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1847
    :goto_0
    return-void

    .line 1844
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1845
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1070
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1071
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1073
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1077
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1078
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1079
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1080
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1082
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1083
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1084
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1085
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1087
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1142
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1021
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1022
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1065
    :goto_0
    return v4

    .line 1024
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1027
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1028
    const/4 v2, 0x3

    .line 1034
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1035
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1037
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1065
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1029
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1030
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1032
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1039
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1041
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1042
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1046
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1048
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1051
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1053
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1054
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1059
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1061
    iput v5, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 972
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 973
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1004
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 976
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 980
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 983
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 985
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 987
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 988
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 989
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 990
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 985
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 991
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 997
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 998
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 973
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 961
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 967
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 964
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1010
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1016
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1013
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1010
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1572
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1573
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1578
    :goto_0
    return-object v0

    .line 1575
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1576
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1578
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1493
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1488
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1372
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1325
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1498
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1499
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1500
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1504
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v12, :cond_1

    .line 1505
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1508
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    if-eqz v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v7

    .line 1509
    .local v7, "showSelectorWheel":Z
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1510
    .local v10, "x":F
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1513
    .local v11, "y":F
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v12, :cond_3

    .line 1515
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v12, :cond_2

    .line 1516
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1517
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1520
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v12, :cond_3

    .line 1521
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1522
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mBottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1529
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1530
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v12, v6

    if-ge v3, v12, :cond_8

    .line 1531
    aget v5, v6, v3

    .line 1532
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1538
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v7, :cond_4

    const/4 v12, 0x1

    if-ne v3, v12, :cond_5

    :cond_4
    const/4 v12, 0x1

    if-ne v3, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_6

    .line 1540
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1542
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1530
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1508
    .end local v3    # "i":I
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    .end local v6    # "selectorIndices":[I
    .end local v7    # "showSelectorWheel":Z
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1546
    .restart local v3    # "i":I
    .restart local v6    # "selectorIndices":[I
    .restart local v7    # "showSelectorWheel":Z
    .restart local v10    # "x":F
    .restart local v11    # "y":F
    :cond_8
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 1548
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1549
    .local v9, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v9, v12

    .line 1550
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v12, v13, v9, v14, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1554
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1555
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v8, v1, v12

    .line 1556
    .local v8, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v12, v13, v8, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1563
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1564
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1565
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1566
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1567
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1568
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 835
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 883
    :goto_0
    return v1

    .line 838
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 839
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 883
    goto :goto_0

    .line 841
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 842
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 845
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 846
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 848
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 849
    iget v3, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 850
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 860
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 861
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 862
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 863
    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 864
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 853
    :cond_3
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 854
    iget v3, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 855
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 865
    :cond_4
    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 866
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 867
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 868
    :cond_5
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 869
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 870
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 872
    :cond_6
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 873
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 874
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 877
    :cond_7
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 878
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 760
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 761
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 765
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 768
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 769
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 770
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 771
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 772
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 773
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 774
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 776
    if-eqz p1, :cond_0

    .line 778
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 779
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 780
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 782
    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 789
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 790
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 803
    :goto_0
    return-void

    .line 794
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 795
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 796
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 798
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 800
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 802
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 889
    :cond_0
    const/4 v10, 0x0

    .line 955
    :goto_0
    return v10

    .line 891
    :cond_1
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 892
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 894
    :cond_2
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 896
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 955
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 898
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-nez v10, :cond_3

    .line 901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 902
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 903
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 904
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 905
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 906
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 913
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 909
    :cond_5
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 910
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 911
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_2

    .line 916
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 917
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 918
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 919
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 920
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 921
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 922
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 923
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->fling(I)V

    .line 924
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 951
    :goto_3
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 952
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 926
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 927
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 928
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 929
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 930
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_8

    .line 931
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 932
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    .line 949
    :cond_7
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 934
    :cond_8
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 936
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_9

    .line 937
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 938
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 940
    :cond_9
    if-gez v8, :cond_7

    .line 941
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 942
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 947
    .end local v8    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1227
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1228
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1232
    :goto_0
    return v0

    .line 1229
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1230
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1232
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1237
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_1

    .line 1238
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    .line 1243
    :cond_0
    :goto_0
    return v0

    .line 1239
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1241
    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1105
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1106
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1108
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1113
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1116
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1117
    :cond_3
    :goto_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1118
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1119
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1120
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1121
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1122
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1125
    :cond_4
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1126
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1127
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1128
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1129
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1130
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1484
    :goto_0
    return-void

    .line 1473
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1474
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1476
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1481
    :goto_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1482
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1483
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1479
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1093
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1094
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1095
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1097
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1098
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1100
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1101
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1188
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1189
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1190
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1433
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1449
    :goto_0
    return-void

    .line 1436
    :cond_0
    if-gez p1, :cond_1

    .line 1437
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1439
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1440
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1441
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1443
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1444
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1445
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1446
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1447
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1448
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1443
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1395
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1411
    :goto_0
    return-void

    .line 1398
    :cond_0
    if-gez p1, :cond_1

    .line 1399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1402
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1403
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1405
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1406
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1407
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1408
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1409
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1410
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1405
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1363
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1364
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1170
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1171
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1161
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1162
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1223
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1346
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1347
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1348
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1350
    :cond_1
    return-void

    .line 1346
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
