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
.field private final BUTTON_TEXT_CHINESE_LENGHTH:I

.field private final BUTTON_TEXT_ENGLISH_LENGHTH:I

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
.method static synthetic -get0(Lcom/android/internal/app/AlertControllerExt;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/AlertControllerExt;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/AlertControllerExt;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/AlertControllerExt;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mCheckedItem:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/AlertControllerExt;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/AlertControllerExt;->resetHotspotBound(Landroid/view/View;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/android/internal/app/AlertControllerExt;->mCheckedItem:I

    .line 82
    iput-boolean v2, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    .line 90
    iput v1, p0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/app/AlertControllerExt;->mCustEditHasMargin:Z

    .line 114
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/app/AlertControllerExt;->BUTTON_TEXT_ENGLISH_LENGHTH:I

    .line 116
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/app/AlertControllerExt;->BUTTON_TEXT_CHINESE_LENGHTH:I

    .line 119
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 121
    iput-object p2, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogInterface:Landroid/content/DialogInterface;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;
    .param p4, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertControllerExt;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 129
    iput-object p4, p0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    sget v1, Lcom/flyme/internal/R$layout;->mz_alert_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setAlertDialogLayout(I)V

    .line 127
    :cond_0
    return-void
.end method

.method private adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 31
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 352
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 353
    .local v27, "windowLocation":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 355
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v10, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "input_method"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 361
    .local v11, "iMM":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v11, :cond_0

    .line 362
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v28

    .line 361
    if-eqz v28, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 364
    .local v21, "res":Landroid/content/res/Resources;
    if-eqz v21, :cond_0

    .line 365
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 368
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

    .line 371
    .local v16, "mCurrentOrientation":I
    const/16 v28, 0x2

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/4 v4, 0x0

    .line 375
    .local v4, "actionButtonMinHeight":I
    :goto_0
    const/16 v22, 0x0

    .line 376
    .local v22, "topShadowHeight":I
    const/4 v6, 0x0

    .line 377
    .local v6, "bottomShadowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    .line 378
    const-string/jumbo v29, "parentPanel"

    const/16 v30, 0x0

    .line 377
    move/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 379
    .local v18, "parentPanel":Landroid/widget/LinearLayout;
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    .line 382
    const-string/jumbo v29, "contentPanel"

    .line 381
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v29

    .line 380
    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 383
    .local v9, "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMinimumHeight(I)V

    .line 384
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 385
    .local v5, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 386
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 387
    .local v20, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 388
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 389
    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 391
    .end local v20    # "rect":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 392
    .local v26, "windowBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v26, :cond_2

    .line 393
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 394
    .local v17, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 395
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v22, v22, v28

    .line 396
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v6, v6, v28

    .line 400
    .end local v17    # "padding":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListView;->getDividerHeight()I

    .line 401
    const/4 v8, 0x0

    .line 402
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

    .line 403
    const/4 v12, 0x0

    .line 404
    .local v12, "itemHeight":I
    const/16 v19, 0x0

    .line 406
    .local v19, "position":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move-object/from16 v2, v30

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 407
    .local v13, "itemView":Landroid/view/View;
    if-eqz v13, :cond_4

    .line 408
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 409
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 411
    :cond_4
    add-int/lit8 v19, v19, 0x1

    .line 412
    if-gtz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/widget/ListAdapter;->getCount()I

    move-result v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 413
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

    .line 419
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

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v29

    .line 419
    sub-int v7, v28, v29

    .line 421
    .local v7, "bottomSpecHeight":I
    const/16 v28, 0x1

    aget v28, v27, v28

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 423
    .local v23, "topSpecHeight":I
    if-le v8, v7, :cond_a

    move/from16 v0, v23

    if-le v0, v7, :cond_a

    .line 424
    const/16 v28, 0x51

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 425
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    const/16 v29, 0x1

    aget v29, v27, v29

    sub-int v28, v28, v29

    sub-int v28, v28, v6

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 426
    move/from16 v0, v23

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 435
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 436
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v28, v0

    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v25, v28, v29

    .line 437
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

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mXCoordinate:Ljava/lang/Integer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v28, v0

    const/16 v29, 0x200

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->addFlags(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mXCoordinate:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 452
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v24

    .line 453
    .local v24, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v24, :cond_8

    .line 454
    new-instance v14, Lcom/android/internal/app/AlertControllerExt$2;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/app/AlertControllerExt$2;-><init>(Lcom/android/internal/app/AlertControllerExt;ILandroid/view/ViewTreeObserver;)V

    .line 466
    .local v14, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 350
    .end local v14    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_8
    return-void

    .line 372
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

    .line 373
    sget v29, Lcom/flyme/internal/R$dimen;->mz_action_button_min_height:I

    .line 372
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .restart local v4    # "actionButtonMinHeight":I
    goto/16 :goto_0

    .line 428
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

    .line 429
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

    .line 430
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto/16 :goto_1

    .line 442
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

    .line 443
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    if-gez v28, :cond_c

    .line 444
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 446
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

    .line 447
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 448
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

    .line 1148
    iget-object v5, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1149
    .local v0, "color":I
    const/16 v5, 0x4d

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1150
    .local v3, "disableColor":I
    new-array v4, v9, [[I

    .line 1151
    .local v4, "states":[[I
    new-array v5, v8, [I

    .line 1152
    const v6, 0x101009e

    aput v6, v5, v7

    .line 1151
    aput-object v5, v4, v7

    .line 1154
    new-array v5, v7, [I

    aput-object v5, v4, v8

    .line 1155
    new-array v2, v9, [I

    .line 1156
    aput v0, v2, v7

    .line 1157
    aput v3, v2, v8

    .line 1159
    .local v2, "colors":[I
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1160
    .local v1, "colorList":Landroid/content/res/ColorStateList;
    return-object v1
.end method

.method private hasEditTextCount(Landroid/view/View;)I
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1118
    const/4 v2, 0x0

    .line 1119
    .local v2, "editCount":I
    const/4 v4, 0x0

    .line 1120
    .local v4, "vg":Landroid/view/ViewGroup;
    instance-of v5, p1, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    instance-of v5, p1, Landroid/widget/NumberPicker$CustomEditText;

    if-eqz v5, :cond_2

    .line 1123
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 1124
    check-cast v4, Landroid/view/ViewGroup;

    .line 1126
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_1
    if-nez v4, :cond_3

    .line 1127
    const/4 v5, 0x0

    return v5

    .line 1121
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, 0x1

    return v5

    .line 1129
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1130
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1131
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1132
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertControllerExt;->hasEditTextCount(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    .line 1130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1134
    .end local v1    # "child":Landroid/view/View;
    :cond_4
    return v2
.end method

.method private injectId()V
    .locals 13

    .prologue
    .line 1170
    iget-boolean v9, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-nez v9, :cond_0

    .line 1171
    return-void

    .line 1172
    :cond_0
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->parentPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1173
    .local v4, "parentPanel":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1175
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "parentPanel"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1174
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 1177
    :cond_1
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->topPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1178
    .local v8, "topPanel":Landroid/view/View;
    if-eqz v8, :cond_2

    .line 1179
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "topPanel"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    .line 1181
    :cond_2
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->title_template:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1182
    .local v7, "title_template":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 1183
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "title_template"

    const-string/jumbo v11, "id"

    .line 1184
    const-string/jumbo v12, "android"

    .line 1183
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 1186
    :cond_3
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->alertTitle:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1187
    .local v0, "alertTitle":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1188
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "alertTitle"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 1190
    :cond_4
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->titleDivider:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1191
    .local v6, "titleDivider":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 1192
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "titleDivider"

    const-string/jumbo v11, "id"

    .line 1193
    const-string/jumbo v12, "android"

    .line 1192
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    .line 1195
    :cond_5
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->contentPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1196
    .local v2, "contentPanel":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 1197
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "contentPanel"

    const-string/jumbo v11, "id"

    .line 1198
    const-string/jumbo v12, "android"

    .line 1197
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setId(I)V

    .line 1200
    :cond_6
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->scrollView:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1201
    .local v5, "scrollView":Landroid/view/View;
    if-eqz v5, :cond_7

    .line 1202
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "scrollView"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    .line 1204
    :cond_7
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->customPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1205
    .local v3, "customPanel":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 1207
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "customPanel"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1206
    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    .line 1209
    :cond_8
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    sget v10, Lcom/flyme/internal/R$id;->buttonPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1210
    .local v1, "buttonPanel":Landroid/view/View;
    if-eqz v1, :cond_9

    .line 1212
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "buttonPanel"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1211
    invoke-virtual {v1, v9}, Landroid/view/View;->setId(I)V

    .line 1169
    :cond_9
    return-void
.end method

.method private isTextEditable(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    return v3

    .line 476
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    return v4

    .line 480
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 481
    return v3

    :cond_2
    move-object v1, p1

    .line 484
    check-cast v1, Landroid/view/ViewGroup;

    .line 485
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 486
    .local v0, "i":I
    :cond_3
    if-lez v0, :cond_4

    .line 487
    add-int/lit8 v0, v0, -0x1

    .line 488
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 489
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertControllerExt;->isTextEditable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    return v4

    .line 494
    :cond_4
    return v3
.end method

.method private limitCustomPanelHeight(I)V
    .locals 5
    .param p1, "dialogMaxHeight"    # I

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 304
    const-string/jumbo v3, "parentPanel"

    const/4 v4, 0x0

    .line 303
    invoke-static {v4, v3}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 305
    .local v0, "parentPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 306
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/internal/app/AlertControllerExt$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AlertControllerExt$1;-><init>(Lcom/android/internal/app/AlertControllerExt;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 301
    return-void
.end method

.method private resetHotspotBound(Landroid/view/View;IIII)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 808
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    sub-int v7, p4, p2

    .line 809
    .local v7, "width":I
    sub-int v4, p5, p3

    .line 810
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    .line 811
    .local v5, "offsetX":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v6, v8, v9

    .line 812
    .local v6, "offsetY":I
    if-eqz v0, :cond_0

    .line 813
    add-int v8, v7, v5

    div-int/lit8 v1, v8, 0x2

    .line 814
    .local v1, "centerX":I
    add-int v8, v4, v6

    div-int/lit8 v2, v8, 0x2

    .line 815
    .local v2, "centerY":I
    iget-object v8, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_button_diameter:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 816
    .local v3, "dp":I
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v1, v8

    div-int/lit8 v9, v3, 0x2

    sub-int v9, v2, v9

    .line 817
    div-int/lit8 v10, v3, 0x2

    add-int/2addr v10, v1

    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v2

    .line 816
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 805
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v3    # "dp":I
    :cond_0
    return-void
.end method

.method private setupButtons()V
    .locals 13

    .prologue
    const/16 v12, 0x11

    const/16 v11, 0x9

    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 822
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 823
    const-string/jumbo v9, "buttonPanel"

    .line 822
    invoke-static {v8, v9}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 824
    .local v3, "buttonPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    .line 826
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 827
    .local v5, "currentLanguage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 828
    .local v0, "buttonMinPadding":I
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 829
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_btn_min_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 832
    :cond_0
    const v7, 0x1020019

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 833
    .local v4, "buttonPositive":Landroid/widget/Button;
    const v7, 0x102001a

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 834
    .local v1, "buttonNegative":Landroid/widget/Button;
    const v7, 0x102001b

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 836
    .local v2, "buttonNeutral":Landroid/widget/Button;
    new-instance v7, Lcom/android/internal/app/AlertControllerExt$3;

    invoke-direct {v7, p0}, Lcom/android/internal/app/AlertControllerExt$3;-><init>(Lcom/android/internal/app/AlertControllerExt;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 843
    new-instance v7, Lcom/android/internal/app/AlertControllerExt$4;

    invoke-direct {v7, p0}, Lcom/android/internal/app/AlertControllerExt$4;-><init>(Lcom/android/internal/app/AlertControllerExt;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 850
    new-instance v7, Lcom/android/internal/app/AlertControllerExt$5;

    invoke-direct {v7, p0}, Lcom/android/internal/app/AlertControllerExt$5;-><init>(Lcom/android/internal/app/AlertControllerExt;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 857
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 858
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 859
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 860
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 861
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 862
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 864
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 863
    invoke-virtual {v4, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 821
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "buttonMinPadding":I
    .end local v1    # "buttonNegative":Landroid/widget/Button;
    .end local v2    # "buttonNeutral":Landroid/widget/Button;
    .end local v4    # "buttonPositive":Landroid/widget/Button;
    .end local v5    # "currentLanguage":Ljava/lang/String;
    :cond_2
    move v7, v8

    .line 824
    goto/16 :goto_0

    .line 865
    .restart local v0    # "buttonMinPadding":I
    .restart local v1    # "buttonNegative":Landroid/widget/Button;
    .restart local v2    # "buttonNeutral":Landroid/widget/Button;
    .restart local v4    # "buttonPositive":Landroid/widget/Button;
    .restart local v5    # "currentLanguage":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 866
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    .line 867
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 868
    .restart local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 869
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 870
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 872
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 871
    invoke-virtual {v1, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_1

    .line 873
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    .line 874
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_a

    .line 875
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v11, :cond_5

    const-string/jumbo v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 876
    :cond_5
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v10, :cond_6

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 875
    if-nez v7, :cond_8

    .line 877
    :cond_6
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v11, :cond_7

    const-string/jumbo v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 875
    if-nez v7, :cond_8

    .line 878
    :cond_7
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v10, :cond_9

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 875
    if-eqz v7, :cond_9

    .line 879
    :cond_8
    invoke-virtual {v4, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 880
    invoke-virtual {v1, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 882
    :cond_9
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 883
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 882
    invoke-virtual {v4, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 884
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 885
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 884
    invoke-virtual {v1, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 887
    :cond_a
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    .line 888
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    .line 889
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_threebutton_pos_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 890
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_threebutton_pos_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 889
    invoke-virtual {v4, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 891
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_threebutton_neg_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 892
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_threebutton_neg_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 891
    invoke-virtual {v1, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 893
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_threebutton_neg_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 894
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_threebutton_neg_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 893
    invoke-virtual {v2, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 895
    :cond_b
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_11

    .line 896
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_11

    .line 897
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v11, :cond_c

    const-string/jumbo v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 898
    :cond_c
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v10, :cond_d

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 897
    if-nez v7, :cond_f

    .line 899
    :cond_d
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v11, :cond_e

    const-string/jumbo v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 897
    if-nez v7, :cond_f

    .line 900
    :cond_e
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v10, :cond_10

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 897
    if-eqz v7, :cond_10

    .line 901
    :cond_f
    invoke-virtual {v1, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 902
    invoke-virtual {v2, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 904
    :cond_10
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 905
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 904
    invoke-virtual {v2, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 906
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 907
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 906
    invoke-virtual {v1, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 909
    :cond_11
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 910
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 911
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v11, :cond_12

    const-string/jumbo v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 912
    :cond_12
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v10, :cond_13

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 911
    if-nez v7, :cond_15

    .line 913
    :cond_13
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v11, :cond_14

    const-string/jumbo v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 911
    if-nez v7, :cond_15

    .line 914
    :cond_14
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v10, :cond_16

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 911
    if-eqz v7, :cond_16

    .line 915
    :cond_15
    invoke-virtual {v4, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 916
    invoke-virtual {v2, v0, v8, v0, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 918
    :cond_16
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 919
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_neg_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 918
    invoke-virtual {v2, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 920
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 921
    iget-object v9, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_twobutton_pos_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 920
    invoke-virtual {v4, v7, v8, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1
.end method

.method private setupContent()V
    .locals 22

    .prologue
    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v17, v0

    .line 928
    const-string/jumbo v18, "contentPanel"

    const/16 v19, 0x0

    .line 927
    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v17, v0

    const v18, 0x102000b

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 932
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 949
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Landroid/R$styleable;->Theme:[I

    const/16 v19, 0x0

    .line 951
    const v20, 0x101005b

    const/16 v21, 0x0

    .line 950
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 953
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v17, Lcom/flyme/internal/R$style;->TextAppearance_Flyme_Light_DialogWindowTitle:I

    .line 952
    const/16 v18, 0x4

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 954
    .local v15, "textAppearanceRes":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 958
    .local v11, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 960
    sget v18, Lcom/flyme/internal/R$dimen;->mz_alertDialog_content_margin_top:I

    .line 958
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 965
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "textAppearanceRes":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 970
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 974
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    .line 976
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 979
    .local v12, "mLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v17, 0x50

    move/from16 v0, v17

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 980
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 981
    sget v17, Lcom/flyme/internal/R$style;->Animation_Flyme_Dialog_ShowAtBottom:I

    move/from16 v0, v17

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 983
    .end local v12    # "mLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 985
    .restart local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 989
    .local v16, "titleTemplateLP":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 992
    sget v18, Lcom/flyme/internal/R$dimen;->mz_alertDialog_haslist_title_margin_bottom:I

    .line 989
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 995
    .end local v16    # "titleTemplateLP":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    check-cast v6, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 998
    .local v6, "content":Lcom/meizu/widget/LimitedHeightLinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    if-lez v17, :cond_8

    .line 999
    const/4 v9, 0x0

    .line 1000
    .local v9, "itemHeight":I
    const/4 v14, 0x0

    .line 1002
    .local v14, "position":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v14, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1003
    .local v10, "itemView":Landroid/view/View;
    if-eqz v10, :cond_5

    .line 1004
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1005
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1007
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 1008
    if-gtz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-lt v14, v0, :cond_4

    .line 1010
    :cond_6
    if-lez v9, :cond_7

    .line 1011
    invoke-virtual {v6}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getMaxHeight()I

    move-result v17

    div-int v8, v17, v9

    .line 1012
    .local v8, "countOneScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCheckedItem:I

    move/from16 v18, v0

    div-int v18, v18, v8

    mul-int v18, v18, v8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setSelection(I)V

    .line 1016
    .end local v8    # "countOneScreen":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    mul-int v17, v17, v9

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    mul-int v18, v18, v19

    .line 1018
    add-int v7, v17, v18

    .line 1020
    .local v7, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/app/AlertControllerExt$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/internal/app/AlertControllerExt$7;-><init>(Lcom/android/internal/app/AlertControllerExt;I)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 926
    .end local v6    # "content":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v7    # "contentHeight":I
    .end local v9    # "itemHeight":I
    .end local v10    # "itemView":Landroid/view/View;
    .end local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "position":I
    :cond_8
    return-void

    .line 929
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 936
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/app/AlertControllerExt$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertControllerExt$6;-><init>(Lcom/android/internal/app/AlertControllerExt;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 974
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method private setupCustom()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 786
    iget-object v4, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 787
    const-string/jumbo v6, "customPanel"

    .line 786
    invoke-static {v5, v6}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 788
    .local v1, "customPanel":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    .line 789
    iget-object v4, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 790
    const-string/jumbo v6, "custom"

    .line 789
    invoke-static {v5, v6}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 791
    .local v0, "custom":Landroid/widget/FrameLayout;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertControllerExt;->hasEditTextCount(Landroid/view/View;)I

    move-result v3

    .line 792
    .local v3, "hasEditTextCount":I
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 793
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    if-lez v3, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/app/AlertControllerExt;->mCustEditHasMargin:Z

    if-eqz v4, :cond_0

    .line 795
    iget-object v4, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 796
    sget v5, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_edittext_padding_left:I

    .line 795
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 797
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 798
    iget-object v6, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 799
    sget v7, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_edittext_padding_right:I

    .line 798
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 800
    iget-object v7, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 801
    sget v8, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_edittext_padding_bottom:I

    .line 800
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 794
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 785
    :cond_0
    return-void

    .end local v0    # "custom":Landroid/widget/FrameLayout;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "hasEditTextCount":I
    :cond_1
    move v4, v5

    .line 788
    goto :goto_0
.end method

.method private setupTitle()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 1044
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 1045
    const-string/jumbo v5, "topPanel"

    .line 1044
    invoke-static {v4, v5}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    .line 1046
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 1047
    const-string/jumbo v5, "title_template"

    .line 1046
    invoke-static {v4, v5}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    .line 1048
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    .line 1052
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mIconView:Landroid/widget/ImageView;

    .line 1053
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 1054
    const-string/jumbo v5, "contentPanel"

    .line 1053
    invoke-static {v4, v5}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    .line 1055
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 1056
    const-string/jumbo v5, "buttonPanel"

    .line 1055
    invoke-static {v4, v5}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1057
    .local v0, "buttonPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    .line 1059
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    .line 1062
    const-string/jumbo v3, "titleDividerTop"

    .line 1061
    invoke-static {v4, v3}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDividerTop:Landroid/view/View;

    .line 1063
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    .line 1064
    const-string/jumbo v3, "titleDivider"

    .line 1063
    invoke-static {v4, v3}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDivider:Landroid/view/View;

    .line 1065
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDividerTop:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1066
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDividerTop:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDivider:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1069
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleDivider:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    .line 1072
    .local v1, "hasTextTitle":Z
    :goto_2
    if-eqz v1, :cond_3

    .line 1073
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 1074
    const-string/jumbo v3, "alertTitle"

    .line 1073
    invoke-static {v4, v3}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    .line 1075
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 1076
    iget v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleStyle:I

    sparse-switch v2, :sswitch_data_0

    .line 1090
    :goto_3
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/app/AlertControllerExt$8;

    invoke-direct {v3, p0}, Lcom/android/internal/app/AlertControllerExt$8;-><init>(Lcom/android/internal/app/AlertControllerExt;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1043
    :cond_3
    return-void

    .end local v0    # "buttonPanel":Landroid/widget/LinearLayout;
    .end local v1    # "hasTextTitle":Z
    :cond_4
    move v2, v4

    .line 1048
    goto/16 :goto_0

    .restart local v0    # "buttonPanel":Landroid/widget/LinearLayout;
    :cond_5
    move v3, v4

    .line 1057
    goto :goto_1

    .line 1071
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "hasTextTitle":Z
    goto :goto_2

    .line 1078
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    .line 1079
    const v4, 0x10301b3

    .line 1078
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1080
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 1085
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleStyle:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 1076
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
    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 148
    .local v6, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x11

    if-eqz v20, :cond_1

    .line 149
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 152
    const-string/jumbo v21, "status_bar_height"

    .line 151
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v21

    .line 150
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    rsub-int/lit8 v20, v20, 0x0

    move/from16 v0, v20

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    .line 156
    const-string/jumbo v21, "parentPanel"

    .line 155
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v21

    .line 154
    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 157
    .local v12, "parentPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v16

    .line 158
    .local v16, "parentPanelPaddingLeft":I
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v17

    .line 159
    .local v17, "parentPanelPaddingRight":I
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v18

    .line 160
    .local v18, "parentPanelPaddingTop":I
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v15

    .line 170
    .local v15, "parentPanelPaddingButtom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setDimAmount(F)V

    .line 175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 183
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMaxHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_f

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mMaxHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    add-int v13, v20, v18

    .local v13, "parentPanelMaxHeight":I
    :goto_1
    move-object/from16 v20, v12

    .line 191
    check-cast v20, Lcom/meizu/widget/LimitedHeightLinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    move-object/from16 v20, v0

    .line 195
    const-string/jumbo v21, "extractArea"

    .line 194
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v21

    .line 193
    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 196
    .local v8, "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 198
    add-int v20, v15, v18

    .line 197
    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->limitCustomPanelHeight(I)V

    .line 204
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 206
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_with_button_min_height:I

    .line 204
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v20, v20, v15

    add-int v3, v20, v18

    .line 208
    .local v3, "MIN_HEIGHT_WITH_BUTTON":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 210
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_no_button_min_height:I

    .line 208
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v20, v20, v15

    add-int v2, v20, v18

    .line 213
    .local v2, "MIN_HEIGHT_ONLY_PANEL":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 214
    :cond_4
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 217
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 223
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 224
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 228
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 232
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 238
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 240
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alertDialog_content_margin_top:I

    .line 238
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 241
    .local v7, "bottomMargin":I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 245
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 257
    .end local v7    # "bottomMargin":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 259
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_with_button_min_width:I

    .line 257
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 260
    .local v4, "MIN_WIDTH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 262
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_no_button_min_width:I

    .line 260
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 263
    .local v5, "MIN_WIDTH_NO_BUTTON":I
    add-int v14, v16, v17

    .line 264
    .local v14, "parentPanelMinWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_17

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    move/from16 v20, v0

    add-int v14, v14, v20

    .line 274
    :goto_8
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    .local v11, "pLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 277
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 283
    :cond_c
    :goto_9
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mHasListView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mButtonVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 141
    :cond_d
    :goto_a
    return-void

    .line 176
    .end local v2    # "MIN_HEIGHT_ONLY_PANEL":I
    .end local v3    # "MIN_HEIGHT_WITH_BUTTON":I
    .end local v4    # "MIN_WIDTH":I
    .end local v5    # "MIN_WIDTH_NO_BUTTON":I
    .end local v8    # "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v11    # "pLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "parentPanelMaxHeight":I
    .end local v14    # "parentPanelMinWidth":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 186
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 187
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_max_height:I

    .line 186
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v20, v20, v15

    add-int v13, v20, v18

    .restart local v13    # "parentPanelMaxHeight":I
    goto/16 :goto_1

    .line 200
    .restart local v8    # "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    :cond_10
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 217
    .restart local v2    # "MIN_HEIGHT_ONLY_PANEL":I
    .restart local v3    # "MIN_HEIGHT_WITH_BUTTON":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopPanel:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x10

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 224
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 225
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_4

    .line 228
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mTopVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 229
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_5

    .line 233
    :cond_14
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_6

    .line 242
    .restart local v7    # "bottomMargin":I
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->titleTemplate:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_7

    .line 245
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertControllerExt;->mCustomVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 249
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alertDialog_message_margin_bottom_no_btn:I

    .line 246
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContentPanel:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 251
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_7

    .line 271
    .end local v7    # "bottomMargin":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "MIN_WIDTH":I
    .restart local v5    # "MIN_WIDTH_NO_BUTTON":I
    .restart local v14    # "parentPanelMinWidth":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 272
    sget v21, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_width:I

    .line 271
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    goto/16 :goto_8

    .line 279
    .restart local v11    # "pLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 280
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_9

    .line 288
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 290
    .local v19, "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 292
    .local v10, "p":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/app/AlertControllerExt;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_a
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public onAlertContentChanged()V
    .locals 0

    .prologue
    .line 1166
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->injectId()V

    .line 1165
    return-void
.end method

.method public onShowingCheck()V
    .locals 4

    .prologue
    .line 626
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 627
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertControllerExt;->isTextEditable(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 629
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 630
    .local v1, "softInputMode":I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    .line 631
    and-int/lit8 v1, v1, -0x6

    .line 632
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 621
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "softInputMode":I
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mAdapter:Landroid/widget/ListAdapter;

    .line 656
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mAnchorView:Landroid/view/View;

    .line 573
    return-void
.end method

.method public setAnchorViewXCoordinate(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "xcoordinate"    # Ljava/lang/Integer;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mXCoordinate:Ljava/lang/Integer;

    .line 613
    return-void
.end method

.method public setAutoShowSoftInput(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    .line 502
    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 3
    .param p1, "whichButton"    # I
    .param p2, "textColorId"    # I

    .prologue
    .line 1138
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    instance-of v2, v2, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/AlertDialog;

    .line 1140
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1141
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1142
    invoke-direct {p0, p2}, Lcom/android/internal/app/AlertControllerExt;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1137
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public setCustEditViewHasMargin(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/android/internal/app/AlertControllerExt;->mCustEditHasMargin:Z

    .line 617
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mDialog:Landroid/app/Dialog;

    .line 762
    return-void
.end method

.method public setIsThemeDeviceDefaultLight(Z)V
    .locals 2
    .param p1, "isThemeDeviceDefaultLight"    # Z

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-eqz v0, :cond_0

    .line 1218
    return-void

    .line 1219
    :cond_0
    if-eqz p1, :cond_1

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    .line 1222
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAlert:Lcom/android/internal/app/AlertController;

    sget v1, Lcom/flyme/internal/R$layout;->mz_alert_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setAlertDialogLayout(I)V

    .line 1216
    :cond_1
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;

    .line 652
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 567
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mMaxHeight:I

    .line 566
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    .line 648
    return-void
.end method

.method public setMsgAlignType(I)V
    .locals 0
    .param p1, "msgAlignType"    # I

    .prologue
    .line 594
    sparse-switch p1, :sswitch_data_0

    .line 593
    :goto_0
    return-void

    .line 600
    :sswitch_0
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mMsgALignType:I

    goto :goto_0

    .line 594
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
    .line 581
    iput-boolean p1, p0, Lcom/android/internal/app/AlertControllerExt;->mDialogShowAtBottom:Z

    .line 580
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    .line 662
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :cond_0
    return-void
.end method

.method public setTitleStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 510
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mTitleStyle:I

    .line 509
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    .line 644
    return-void
.end method

.method public setWidth(I)V
    .locals 13
    .param p1, "width"    # I

    .prologue
    const/4 v12, 0x0

    .line 517
    iput p1, p0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    .line 519
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_0

    .line 520
    return-void

    .line 523
    :cond_0
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 524
    const-string/jumbo v11, "mask"

    .line 523
    invoke-static {v12, v11}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 525
    .local v5, "idView":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 526
    const-string/jumbo v11, "parentPanel"

    .line 525
    invoke-static {v12, v11}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 527
    .local v7, "parentPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 528
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 529
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    .line 530
    .local v8, "parentPanelPaddingLeft":I
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v9

    .line 531
    .local v9, "parentPanelPaddingRight":I
    add-int v4, v8, v9

    .line 532
    .local v4, "extraWidth":I
    if-eqz v6, :cond_1

    .line 533
    iget v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    if-lez v10, :cond_2

    .line 534
    iget v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWidth:I

    add-int/2addr v10, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 516
    .end local v4    # "extraWidth":I
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "parentPanelPaddingLeft":I
    .end local v9    # "parentPanelPaddingRight":I
    :cond_1
    :goto_0
    return-void

    .line 536
    .restart local v4    # "extraWidth":I
    .restart local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v8    # "parentPanelPaddingLeft":I
    .restart local v9    # "parentPanelPaddingRight":I
    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 538
    const-string/jumbo v11, "buttonPanel"

    .line 537
    invoke-static {v12, v11}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v11

    .line 536
    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 539
    .local v2, "buttonPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    const/4 v3, 0x1

    .line 541
    .local v3, "buttonVisible":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 542
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 545
    sget v11, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_with_button_min_width:I

    .line 542
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 546
    .local v0, "MIN_WIDTH":I
    add-int v10, v0, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 539
    .end local v0    # "MIN_WIDTH":I
    .end local v3    # "buttonVisible":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "buttonVisible":Z
    goto :goto_1

    .line 548
    :cond_4
    iget-object v10, p0, Lcom/android/internal/app/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 551
    sget v11, Lcom/flyme/internal/R$dimen;->mz_alert_dialog_no_button_min_width:I

    .line 548
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 552
    .local v1, "MIN_WIDTH_NO_BUTTON":I
    add-int v10, v1, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public setupView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0x102002e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    .line 770
    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIsDeviceDefaultTheme:Z

    if-nez v0, :cond_0

    .line 771
    iput-object v2, p0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mIdView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 774
    return-void

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/app/AlertControllerExt;->mAutoShowSoftInput:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertControllerExt;->isTextEditable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 779
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupTitle()V

    .line 780
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupContent()V

    .line 781
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupCustom()V

    .line 782
    invoke-direct {p0}, Lcom/android/internal/app/AlertControllerExt;->setupButtons()V

    .line 766
    return-void
.end method
