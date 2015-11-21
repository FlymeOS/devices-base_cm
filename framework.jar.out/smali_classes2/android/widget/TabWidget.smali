.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$1;,
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    iput v3, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 60
    iput-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 66
    iput v3, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 84
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0}, Landroid/widget/TabWidget;->initTabWidget()V

    .line 94
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TabWidget;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 120
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 122
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    .line 126
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    .line 128
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 129
    const v1, 0x10806e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 132
    :cond_0
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 133
    const v1, 0x10806e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 150
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setFocusable(Z)V

    .line 151
    invoke-virtual {p0, p0}, Landroid/widget/TabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    return-void

    .line 138
    :cond_2
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 139
    const v1, 0x10806e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 142
    :cond_3
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 143
    const v1, 0x10806e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 483
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 486
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 487
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 492
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 494
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 500
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 315
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 321
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 322
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 326
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 329
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-eqz v5, :cond_0

    .line 338
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 340
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 341
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 343
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 344
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 346
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v5, :cond_2

    .line 347
    iget-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 348
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 349
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 350
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v2

    .line 351
    .local v2, "myHeight":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 353
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    iput-boolean v10, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 358
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 410
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 415
    .end local v0    # "tabView":Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 458
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 461
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 464
    if-eq v0, p1, :cond_0

    .line 465
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 467
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 104
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 114
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 109
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 110
    iget p2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    goto :goto_0

    .line 111
    :cond_2
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 112
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 158
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 161
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 165
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 167
    return-void
.end method

.method measureHorizontal(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-nez v9, :cond_0

    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 213
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 178
    .local v8, "unspecifiedWidth":I
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 179
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 182
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    .line 183
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    .line 185
    .local v3, "count":I
    const/4 v1, 0x0

    .line 186
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 187
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 186
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 192
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    .line 193
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v9, v9

    if-eq v9, v3, :cond_4

    .line 194
    :cond_3
    new-array v9, v3, [I

    iput-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 196
    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 197
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 196
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 199
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 200
    .local v2, "childWidth":I
    div-int v4, v5, v1

    .line 201
    .local v4, "delta":I
    sub-int v9, v2, v4

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 202
    .local v7, "newWidth":I
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v7, v9, v6

    .line 204
    sub-int v9, v2, v7

    sub-int/2addr v5, v9

    .line 205
    add-int/lit8 v1, v1, -0x1

    .line 206
    iget v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    goto :goto_4

    .line 212
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 517
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 518
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    if-eqz p2, :cond_0

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 525
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 526
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 527
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 528
    iget-object v2, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 529
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 535
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 421
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 423
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 424
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 440
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 100
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 504
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 506
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 390
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 394
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 396
    :cond_2
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 397
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 398
    iput-boolean v2, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 400
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 248
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 471
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 473
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 474
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 475
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 269
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 257
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 258
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 259
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 260
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 290
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 278
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 279
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 280
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 281
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 302
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 303
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .prologue
    .line 512
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 513
    return-void
.end method
