.class public Lcom/android/internal/app/AlertControllerExt;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;
    }
.end annotation


# static fields
.field public static final TITLE_CENTER_HIGHLIGHT:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlert:Lcom/android/internal/app/AlertController;

.field private mAnchorView:Landroid/view/View;

.field private mAutoShowSoftInput:Z

.field private mButtonVisible:Z

.field private mCheckedItem:I

.field private mContentPanel:Landroid/widget/LinearLayout;

.field private mContentVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mCustEditHasMargin:Z

.field private mCustomVisible:Z

.field private mDialog:Landroid/app/Dialog;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mDialogShowAtBottom:Z

.field private mHasListView:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mIdView:Landroid/view/View;

.field private mIsDeviceDefaultTheme:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxHeight:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMsgALignType:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleDivider:Landroid/view/View;

.field private mTitleDividerTop:Landroid/view/View;

.field private mTitleStyle:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTopPanel:Landroid/widget/LinearLayout;

.field private mTopVisible:Z

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private final mWindow:Landroid/view/Window;

.field private mXCoordinate:Ljava/lang/Integer;

.field private titleTemplate:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/android/internal/app/AlertControllerExt;->mCheckedItem:I

    .line 79
    iput-boolean v2, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    .line 87
    iput v1, p0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/app/AlertControllerExt;->mCustEditHasMargin:Z

    .line 112
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    .line 113
    iput-object p3, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 114
    iput-object p2, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogInterface:Landroid/content/DialogInterface;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;
    .param p4, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertControllerExt;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 122
    iput-object p4, p0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    .line 124
    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    sget v1, Lcom/flyme/internal/R$layout;->mz_alert_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setAlertDialogLayout(I)V

    .line 127
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertControllerExt;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/AlertControllerExt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 31
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 341
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 342
    .local v27, "windowLocation":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 344
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v10, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "input_method"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    .local v11, "iMM":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 353
    .local v21, "res":Landroid/content/res/Resources;
    if-eqz v21, :cond_0

    .line 354
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 357
    .end local v21    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 360
    .local v16, "mCurrentOrientation":I
    const/16 v28, 0x2

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/4 v4, 0x0

    .line 364
    .local v4, "actionButtonMinHeight":I
    :goto_0
    const/16 v22, 0x0

    .line 365
    .local v22, "topShadowHeight":I
    const/4 v6, 0x0

    .line 366
    .local v6, "bottomShadowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "parentPanel"

    invoke-static/range {v29 .. v30}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 368
    .local v18, "parentPanel":Landroid/widget/LinearLayout;
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "contentPanel"

    invoke-static/range {v29 .. v30}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 372
    .local v9, "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMinimumHeight(I)V

    .line 373
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 374
    .local v5, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 375
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 376
    .local v20, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 377
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 378
    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 380
    .end local v20    # "rect":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 381
    .local v26, "windowBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v26, :cond_2

    .line 382
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 383
    .local v17, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 384
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v22, v22, v28

    .line 385
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v6, v6, v28

    .line 389
    .end local v17    # "padding":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListView;->getDividerHeight()I

    .line 390
    const/4 v8, 0x0

    .line 391
    .local v8, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/widget/ListAdapter;->getCount()I

    move-result v28

    if-lez v28, :cond_6

    .line 392
    const/4 v12, 0x0

    .line 393
    .local v12, "itemHeight":I
    const/16 v19, 0x0

    .line 395
    .local v19, "position":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 396
    .local v13, "itemView":Landroid/view/View;
    if-eqz v13, :cond_4

    .line 397
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 398
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 400
    :cond_4
    add-int/lit8 v19, v19, 0x1

    .line 401
    if-gtz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/widget/ListAdapter;->getCount()I

    move-result v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 402
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v28

    add-int v28, v28, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    mul-int v28, v28, v29

    add-int v28, v28, v22

    add-int v8, v28, v6

    .line 408
    .end local v12    # "itemHeight":I
    .end local v13    # "itemView":Landroid/view/View;
    .end local v19    # "position":I
    :cond_6
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v28, v4

    const/16 v29, 0x1

    aget v29, v27, v29

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v29

    sub-int v7, v28, v29

    .line 410
    .local v7, "bottomSpecHeight":I
    const/16 v28, 0x1

    aget v28, v27, v28

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 412
    .local v23, "topSpecHeight":I
    if-le v8, v7, :cond_a

    move/from16 v0, v23

    if-le v0, v7, :cond_a

    .line 413
    const/16 v28, 0x51

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 414
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    const/16 v29, 0x1

    aget v29, v27, v29

    sub-int v28, v28, v29

    sub-int v28, v28, v6

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 415
    move/from16 v0, v23

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 424
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 425
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v28, v0

    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v25, v28, v29

    .line 426
    .local v25, "width":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, -0x2

    const v29, 0x800003

    or-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mXCoordinate:Ljava/lang/Integer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    const/16 v29, 0x200

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->addFlags(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mXCoordinate:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 441
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v24

    .line 442
    .local v24, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v24, :cond_8

    .line 443
    new-instance v14, Lcom/android/internal/app/AlertControllerExt$2;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/app/AlertControllerExt$2;-><init>(Lcom/android/internal/app/AlertControllerExt;ILandroid/view/ViewTreeObserver;)V

    .line 455
    .local v14, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 458
    .end local v14    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_8
    return-void

    .line 360
    .end local v4    # "actionButtonMinHeight":I
    .end local v5    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottomShadowHeight":I
    .end local v7    # "bottomSpecHeight":I
    .end local v8    # "contentHeight":I
    .end local v9    # "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "parentPanel":Landroid/widget/LinearLayout;
    .end local v22    # "topShadowHeight":I
    .end local v23    # "topSpecHeight":I
    .end local v24    # "vto":Landroid/view/ViewTreeObserver;
    .end local v25    # "width":I
    .end local v26    # "windowBackground":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/flyme/internal/R$dimen;->mz_action_button_min_height:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    .line 417
    .restart local v4    # "actionButtonMinHeight":I
    .restart local v5    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "bottomShadowHeight":I
    .restart local v7    # "bottomSpecHeight":I
    .restart local v8    # "contentHeight":I
    .restart local v9    # "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .restart local v18    # "parentPanel":Landroid/widget/LinearLayout;
    .restart local v22    # "topShadowHeight":I
    .restart local v23    # "topSpecHeight":I
    .restart local v26    # "windowBackground":Landroid/graphics/drawable/Drawable;
    :cond_a
    const/16 v28, 0x31

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 418
    const/16 v28, 0x1

    aget v28, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v29

    add-int v28, v28, v29

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v22

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 419
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto/16 :goto_1

    .line 431
    .restart local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v25    # "width":I
    :cond_b
    const/16 v28, 0x0

    aget v28, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getWidth()I

    move-result v29

    sub-int v29, v29, v25

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 432
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    if-gez v28, :cond_c

    .line 433
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 435
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    if-lez v28, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    add-int v28, v28, v25

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    .line 436
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 437
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v28, v0

    const v29, -0x800004

    and-int v28, v28, v29

    const v29, 0x800005

    or-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2
.end method

.method private createColorList(I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "colorId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1014
    iget-object v5, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1015
    .local v0, "color":I
    const/16 v5, 0x4d

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1016
    .local v3, "disableColor":I
    new-array v4, v9, [[I

    .line 1017
    .local v4, "states":[[I
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    aput-object v5, v4, v7

    .line 1020
    new-array v5, v7, [I

    aput-object v5, v4, v8

    .line 1021
    new-array v2, v9, [I

    aput v0, v2, v7

    aput v3, v2, v8

    .line 1025
    .local v2, "colors":[I
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1026
    .local v1, "colorList":Landroid/content/res/ColorStateList;
    return-object v1
.end method

.method private hasCustomEditText(Landroid/view/View;)I
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 983
    const/4 v2, 0x0

    .line 984
    .local v2, "editCount":I
    const/4 v4, 0x0

    .line 985
    .local v4, "vg":Landroid/view/ViewGroup;
    instance-of v5, p1, Landroid/widget/NumberPicker$CustomEditText;

    if-eqz v5, :cond_0

    .line 986
    const/4 v5, 0x1

    .line 999
    :goto_0
    return v5

    .line 988
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 989
    check-cast v4, Landroid/view/ViewGroup;

    .line 991
    :cond_1
    if-nez v4, :cond_2

    .line 992
    const/4 v5, 0x0

    goto :goto_0

    .line 994
    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 995
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 996
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 997
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertControllerExt;->hasCustomEditText(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    .line 995
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "child":Landroid/view/View;
    :cond_3
    move v5, v2

    .line 999
    goto :goto_0
.end method

.method private hasEditTextCount(Landroid/view/View;)I
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 963
    const/4 v2, 0x0

    .line 964
    .local v2, "editCount":I
    const/4 v4, 0x0

    .line 965
    .local v4, "vg":Landroid/view/ViewGroup;
    instance-of v5, p1, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    instance-of v5, p1, Landroid/widget/NumberPicker$CustomEditText;

    if-nez v5, :cond_0

    .line 966
    const/4 v5, 0x1

    .line 979
    :goto_0
    return v5

    .line 968
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 969
    check-cast v4, Landroid/view/ViewGroup;

    .line 971
    :cond_1
    if-nez v4, :cond_2

    .line 972
    const/4 v5, 0x0

    goto :goto_0

    .line 974
    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 975
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 976
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 977
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertControllerExt;->hasEditTextCount(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    .line 975
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "child":Landroid/view/View;
    :cond_3
    move v5, v2

    .line 979
    goto :goto_0
.end method

.method private injectId()V
    .locals 13

    .prologue
    .line 1036
    iget-boolean v9, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-nez v9, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->parentPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1039
    .local v4, "parentPanel":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1040
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "parentPanel"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 1043
    :cond_2
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->topPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1044
    .local v8, "topPanel":Landroid/view/View;
    if-eqz v8, :cond_3

    .line 1045
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "topPanel"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    .line 1047
    :cond_3
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->title_template:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1048
    .local v7, "title_template":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1049
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "title_template"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 1052
    :cond_4
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->alertTitle:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1053
    .local v0, "alertTitle":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 1054
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "alertTitle"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 1056
    :cond_5
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->titleDivider:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1057
    .local v6, "titleDivider":Landroid/view/View;
    if-eqz v6, :cond_6

    .line 1058
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "titleDivider"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    .line 1061
    :cond_6
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->contentPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1062
    .local v2, "contentPanel":Landroid/view/View;
    if-eqz v2, :cond_7

    .line 1063
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "contentPanel"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setId(I)V

    .line 1066
    :cond_7
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->scrollView:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1067
    .local v5, "scrollView":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 1068
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "scrollView"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    .line 1070
    :cond_8
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->customPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1071
    .local v3, "customPanel":Landroid/view/View;
    if-eqz v3, :cond_9

    .line 1072
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "customPanel"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    .line 1075
    :cond_9
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->buttonPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1076
    .local v1, "buttonPanel":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1077
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "buttonPanel"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setId(I)V

    goto/16 :goto_0
.end method

.method private isTextEditable(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v2

    .line 465
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 466
    goto :goto_0

    .line 469
    :cond_2
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 473
    check-cast v1, Landroid/view/ViewGroup;

    .line 474
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 475
    .local v0, "i":I
    :cond_3
    if-lez v0, :cond_0

    .line 476
    add-int/lit8 v0, v0, -0x1

    .line 477
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 478
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertControllerExt;->isTextEditable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 479
    goto :goto_0
.end method

.method private limitCustomPanelHeight(I)V
    .locals 5
    .param p1, "dialogMaxHeight"    # I

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/4 v3, 0x0

    const-string v4, "parentPanel"

    invoke-static {v3, v4}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 294
    .local v0, "parentPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 295
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/internal/app/AlertControllerExt$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AlertControllerExt$1;-><init>(Lcom/android/internal/app/AlertControllerExt;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 337
    return-void
.end method

.method private setupButtons()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 795
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v3, "buttonPanel"

    invoke-static {v1, v3}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 797
    .local v0, "buttonPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    .line 798
    return-void
.end method

.method private setupContent()V
    .locals 18

    .prologue
    .line 801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/4 v14, 0x0

    const-string v15, "contentPanel"

    invoke-static {v14, v15}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    .line 803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    .line 804
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v14, 0x102000b

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    if-eqz v13, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_a

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 823
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    if-nez v13, :cond_0

    .line 824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    sget-object v15, Landroid/R$styleable;->Theme:[I

    const v16, 0x101005b

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 826
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x4

    sget v14, Lcom/flyme/internal/R$style;->TextAppearance_Flyme_Light_DialogWindowTitle:I

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 828
    .local v11, "textAppearanceRes":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 829
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 830
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 832
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/flyme/internal/R$dimen;->mz_alertDialog_content_margin_top:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 835
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 839
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "textAppearanceRes":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    if-nez v13, :cond_1

    .line 840
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 842
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_edittext_padding_bottom:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 847
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    .line 849
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    if-eqz v13, :cond_8

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v13, v13, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    iget-boolean v13, v13, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    if-eqz v13, :cond_2

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 852
    .local v8, "mLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v13, 0x50

    iput v13, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 853
    const/4 v13, -0x1

    iput v13, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 854
    sget v13, Lcom/flyme/internal/R$style;->Animation_Flyme_Dialog_ShowAtBottom:I

    iput v13, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 856
    .end local v8    # "mLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 858
    .restart local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    if-eqz v13, :cond_3

    .line 860
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 862
    .local v12, "titleTemplateLP":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/flyme/internal/R$dimen;->mz_alertDialog_haslist_title_margin_bottom:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 868
    .end local v12    # "titleTemplateLP":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    check-cast v2, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 871
    .local v2, "content":Lcom/meizu/widget/LimitedHeightLinearLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 872
    const/4 v5, 0x0

    .line 873
    .local v5, "itemHeight":I
    const/4 v10, 0x0

    .line 875
    .local v10, "position":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    invoke-interface {v13, v10, v14, v15}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 876
    .local v6, "itemView":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 877
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/View;->measure(II)V

    .line 878
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 880
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 881
    if-gtz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    if-lt v10, v13, :cond_4

    .line 883
    :cond_6
    if-lez v5, :cond_7

    .line 884
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getMaxHeight()I

    move-result v13

    div-int v4, v13, v5

    .line 885
    .local v4, "countOneScreen":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertControllerExt;->mCheckedItem:I

    div-int/2addr v14, v4

    mul-int/2addr v14, v4

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setSelection(I)V

    .line 889
    .end local v4    # "countOneScreen":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    mul-int/2addr v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v14, v15

    add-int v3, v13, v14

    .line 893
    .local v3, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    new-instance v14, Lcom/android/internal/app/AlertControllerExt$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/internal/app/AlertControllerExt$4;-><init>(Lcom/android/internal/app/AlertControllerExt;I)V

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 914
    .end local v2    # "content":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v3    # "contentHeight":I
    .end local v5    # "itemHeight":I
    .end local v6    # "itemView":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "position":I
    :cond_8
    return-void

    .line 803
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 810
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    new-instance v14, Lcom/android/internal/app/AlertControllerExt$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/app/AlertControllerExt$3;-><init>(Lcom/android/internal/app/AlertControllerExt;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 847
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private setupCustom()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 775
    iget-object v4, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v6, "customPanel"

    invoke-static {v5, v6}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 777
    .local v1, "customPanel":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    .line 778
    iget-object v4, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v6, "custom"

    invoke-static {v5, v6}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 780
    .local v0, "custom":Landroid/widget/FrameLayout;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertControllerExt;->hasEditTextCount(Landroid/view/View;)I

    move-result v3

    .line 781
    .local v3, "hasEditTextCount":I
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 782
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    if-lez v3, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/app/AlertControllerExt;->mCustEditHasMargin:Z

    if-eqz v4, :cond_0

    .line 783
    iget-object v4, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_edittext_padding_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_edittext_padding_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_edittext_padding_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 792
    :cond_0
    return-void

    .end local v0    # "custom":Landroid/widget/FrameLayout;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "hasEditTextCount":I
    :cond_1
    move v4, v5

    .line 777
    goto :goto_0
.end method

.method private setupTitle()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 917
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v4, "topPanel"

    invoke-static {v3, v4}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    .line 919
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v4, "title_template"

    invoke-static {v3, v4}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    .line 921
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    .line 925
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mIconView:Landroid/widget/ImageView;

    .line 927
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    const-string v4, "titleDividerTop"

    invoke-static {v3, v4}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDividerTop:Landroid/view/View;

    .line 931
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    const-string v4, "titleDivider"

    invoke-static {v3, v4}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDivider:Landroid/view/View;

    .line 933
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDividerTop:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 934
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDividerTop:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 936
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 937
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDivider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 939
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    .line 940
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 941
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v2, "alertTitle"

    invoke-static {v3, v2}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    .line 943
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 944
    iget v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleStyle:I

    sparse-switch v1, :sswitch_data_0

    .line 960
    :cond_3
    :goto_2
    return-void

    .end local v0    # "hasTextTitle":Z
    :cond_4
    move v1, v3

    .line 921
    goto :goto_0

    :cond_5
    move v0, v3

    .line 939
    goto :goto_1

    .line 946
    .restart local v0    # "hasTextTitle":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    const v3, 0x10301b3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 948
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 953
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 944
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public applyMeizuStyle()V
    .locals 23

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 141
    .local v6, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x11

    if-eqz v20, :cond_2

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v20, v0

    if-nez v20, :cond_2

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x1

    const-string v22, "status_bar_height"

    invoke-static/range {v21 .. v22}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    rsub-int/lit8 v20, v20, 0x0

    move/from16 v0, v20

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 147
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "parentPanel"

    invoke-static/range {v21 .. v22}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 150
    .local v12, "parentPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v16

    .line 151
    .local v16, "parentPanelPaddingLeft":I
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v17

    .line 152
    .local v17, "parentPanelPaddingRight":I
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v18

    .line 153
    .local v18, "parentPanelPaddingTop":I
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v15

    .line 163
    .local v15, "parentPanelPaddingButtom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setDimAmount(F)V

    .line 168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 176
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMaxHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_d

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMaxHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    add-int v13, v20, v18

    .local v13, "parentPanelMaxHeight":I
    :goto_1
    move-object/from16 v20, v12

    .line 184
    check-cast v20, Lcom/meizu/widget/LimitedHeightLinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "extractArea"

    invoke-static/range {v21 .. v22}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 189
    .local v8, "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 190
    add-int v20, v15, v18

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->limitCustomPanelHeight(I)V

    .line 197
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_with_button_min_height:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v20, v20, v15

    add-int v3, v20, v18

    .line 201
    .local v3, "MIN_HEIGHT_WITH_BUTTON":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_no_button_min_height:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v20, v20, v15

    add-int v2, v20, v18

    .line 206
    .local v2, "MIN_HEIGHT_ONLY_PANEL":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 207
    :cond_5
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 210
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x10

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 218
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 221
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 222
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 225
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 226
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 231
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alertDialog_content_margin_top:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 234
    .local v7, "bottomMargin":I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    :goto_3
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 248
    .end local v7    # "bottomMargin":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_with_button_min_width:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 251
    .local v4, "MIN_WIDTH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_no_button_min_width:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 254
    .local v5, "MIN_WIDTH_NO_BUTTON":I
    add-int v14, v16, v17

    .line 255
    .local v14, "parentPanelMinWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_10

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    move/from16 v20, v0

    add-int v14, v14, v20

    .line 265
    :goto_4
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .local v11, "pLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 268
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 272
    :goto_5
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 279
    .local v19, "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 281
    .local v10, "p":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/app/AlertControllerExt;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 179
    .end local v2    # "MIN_HEIGHT_ONLY_PANEL":I
    .end local v3    # "MIN_HEIGHT_WITH_BUTTON":I
    .end local v4    # "MIN_WIDTH":I
    .end local v5    # "MIN_WIDTH_NO_BUTTON":I
    .end local v8    # "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v10    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "pLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "parentPanelMaxHeight":I
    .end local v14    # "parentPanelMinWidth":I
    .end local v19    # "window":Landroid/view/Window;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_max_height:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v20, v20, v15

    add-int v13, v20, v18

    .restart local v13    # "parentPanelMaxHeight":I
    goto/16 :goto_1

    .line 193
    .restart local v8    # "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    :cond_e
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 237
    .restart local v2    # "MIN_HEIGHT_ONLY_PANEL":I
    .restart local v3    # "MIN_HEIGHT_WITH_BUTTON":I
    .restart local v7    # "bottomMargin":I
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alertDialog_message_margin_bottom_no_btn:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 262
    .end local v7    # "bottomMargin":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "MIN_WIDTH":I
    .restart local v5    # "MIN_WIDTH_NO_BUTTON":I
    .restart local v14    # "parentPanelMinWidth":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_width:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    goto/16 :goto_4

    .line 270
    .restart local v11    # "pLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_11
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_5
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public onAlertContentChanged()V
    .locals 0

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->injectId()V

    .line 1033
    return-void
.end method

.method public onShowingCheck()V
    .locals 4

    .prologue
    .line 615
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertControllerExt;->isTextEditable(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 618
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 619
    .local v1, "softInputMode":I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    .line 620
    and-int/lit8 v1, v1, -0x6

    .line 621
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 628
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "softInputMode":I
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    .line 647
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    .line 564
    return-void
.end method

.method public setAnchorViewXCoordinate(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "xcoordinate"    # Ljava/lang/Integer;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mXCoordinate:Ljava/lang/Integer;

    .line 604
    return-void
.end method

.method public setAutoShowSoftInput(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    .line 493
    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 3
    .param p1, "whichButton"    # I
    .param p2, "textColorId"    # I

    .prologue
    .line 1004
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    instance-of v2, v2, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/AlertDialog;

    .line 1006
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1007
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1008
    invoke-direct {p0, p2}, Lcom/android/internal/app/AlertControllerExt;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1011
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public setCustEditViewHasMargin(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/android/internal/app/AlertControllerExt;->mCustEditHasMargin:Z

    .line 608
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    .line 753
    return-void
.end method

.method public setIsThemeDeviceDefaultLight(Z)V
    .locals 2
    .param p1, "isThemeDeviceDefaultLight"    # Z

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-eqz v0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    if-eqz p1, :cond_0

    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    .line 1088
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    sget v1, Lcom/flyme/internal/R$layout;->mz_alert_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setAlertDialogLayout(I)V

    goto :goto_0
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    .line 643
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 556
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mMaxHeight:I

    .line 557
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    .line 639
    return-void
.end method

.method public setMsgAlignType(I)V
    .locals 0
    .param p1, "msgAlignType"    # I

    .prologue
    .line 583
    sparse-switch p1, :sswitch_data_0

    .line 595
    :goto_0
    return-void

    .line 589
    :sswitch_0
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    goto :goto_0

    .line 583
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x11 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setShowAtAnchorView(Z)V
    .locals 0
    .param p1, "showAtAnchorViewNormal"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    .line 571
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    .line 651
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_0
    return-void
.end method

.method public setTitleStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleStyle:I

    .line 500
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    .line 635
    return-void
.end method

.method public setWidth(I)V
    .locals 12
    .param p1, "width"    # I

    .prologue
    const/4 v3, 0x0

    .line 506
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    .line 508
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v11, "mask"

    invoke-static {v3, v11}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 514
    .local v5, "idView":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v11, "parentPanel"

    invoke-static {v3, v11}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 516
    .local v7, "parentPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    .line 517
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 518
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    .line 519
    .local v8, "parentPanelPaddingLeft":I
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v9

    .line 520
    .local v9, "parentPanelPaddingRight":I
    add-int v4, v8, v9

    .line 521
    .local v4, "extraWidth":I
    if-eqz v6, :cond_0

    .line 522
    iget v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    if-lez v10, :cond_2

    .line 523
    iget v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    add-int/2addr v10, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 525
    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const-string v11, "buttonPanel"

    invoke-static {v3, v11}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 528
    .local v2, "buttonPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    const/4 v3, 0x1

    .line 530
    .local v3, "buttonVisible":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 531
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_with_button_min_width:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 535
    .local v0, "MIN_WIDTH":I
    add-int v10, v0, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 537
    .end local v0    # "MIN_WIDTH":I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_no_button_min_width:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 541
    .local v1, "MIN_WIDTH_NO_BUTTON":I
    add-int v10, v1, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public setupView()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0x102002e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    .line 759
    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 773
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertControllerExt;->isTextEditable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertControllerExt;->hasCustomEditText(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 769
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupTitle()V

    .line 770
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupContent()V

    .line 771
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupCustom()V

    .line 772
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupButtons()V

    goto :goto_0
.end method
