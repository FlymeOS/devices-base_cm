.class public Landroid/widget/MzActionMenuView;
.super Landroid/widget/LinearLayout;
.source "MzActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MzActionMenuView$1;,
        Landroid/widget/MzActionMenuView$LayoutParams;,
        Landroid/widget/MzActionMenuView$ActionMenuChildView;,
        Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/MzActionMenuView$MenuBuilderCallback;,
        Landroid/widget/MzActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mCellWidth:I

.field private mExtraPadding:I

.field private mExtraPaddingFor4:I

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMenuShowGravity:I

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/MzActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mShouldDectePaddingAjustment:Z

.field mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MzActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    .line 77
    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    .line 79
    iput v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    .line 81
    iput-boolean v2, p0, Landroid/widget/MzActionMenuView;->mShouldDectePaddingAjustment:Z

    .line 89
    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuView;->setBaselineAligned(Z)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    .line 92
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MzActionMenuView;->mGeneratedItemPadding:I

    .line 93
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 94
    iput v2, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    .line 98
    invoke-direct {p0}, Landroid/widget/MzActionMenuView;->updatePaddingsForItem()V

    .line 99
    invoke-direct {p0}, Landroid/widget/MzActionMenuView;->updateSmartBarConfiguration()V

    .line 101
    return-void
.end method

.method static synthetic access$200(Landroid/widget/MzActionMenuView;)Landroid/widget/MzActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuView;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/MzActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuView;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method private getTextMenuMaxWidth(I)I
    .locals 4
    .param p1, "cellsWidthSize"    # I

    .prologue
    .line 1273
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v0

    .line 1274
    .local v0, "count":I
    iget v1, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    .line 1275
    .local v1, "maxWidth":I
    if-lez v0, :cond_0

    .line 1276
    packed-switch v0, :pswitch_data_0

    .line 1291
    :cond_0
    :goto_0
    return v1

    .line 1278
    :pswitch_0
    move v1, p1

    .line 1279
    goto :goto_0

    .line 1281
    :pswitch_1
    iget v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    iget v3, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1282
    goto :goto_0

    .line 1285
    :pswitch_2
    iget v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    iget v3, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    mul-int/2addr v3, v0

    sub-int v3, p1, v3

    add-int v1, v2, v3

    .line 1286
    goto :goto_0

    .line 1276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getVisibleChildAt(IZ)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I
    .param p2, "allVisiable"    # Z

    .prologue
    .line 960
    if-eqz p2, :cond_0

    .line 961
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 979
    :goto_0
    return-object v3

    .line 963
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v0

    .line 964
    .local v0, "childCount":I
    const/4 v2, -0x1

    .line 965
    .local v2, "visibleIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 966
    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 967
    add-int/lit8 v2, v2, 0x1

    .line 970
    :cond_1
    if-ne v2, p1, :cond_3

    .line 971
    move v2, v1

    .line 976
    :cond_2
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    .line 977
    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 965
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 979
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isActionView(Landroid/view/View;)Z
    .locals 4
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1245
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 1246
    .local v0, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return v1

    .line 1249
    :cond_1
    instance-of v2, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/MzActionMenuItem;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SelectionButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutMenuItems(III)V
    .locals 24
    .param p1, "visibleItemCount"    # I
    .param p2, "widthRemaining"    # I
    .param p3, "midVertical"    # I

    .prologue
    .line 985
    const/4 v5, 0x0

    .line 986
    .local v5, "child":Landroid/view/View;
    const/16 v18, 0x0

    .line 987
    .local v18, "startLeft":I
    const/4 v10, 0x0

    .line 988
    .local v10, "endRight":I
    const/4 v7, 0x0

    .line 989
    .local v7, "childLeft":I
    const/4 v8, 0x0

    .line 990
    .local v8, "childRight":I
    const/4 v12, 0x0

    .line 991
    .local v12, "height":I
    const/16 v20, 0x0

    .line 992
    .local v20, "width":I
    const/16 v19, 0x0

    .line 993
    .local v19, "t":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v6

    .line 994
    .local v6, "childCount":I
    const/4 v11, 0x0

    .line 996
    .local v11, "expand":I
    move/from16 v0, p1

    if-ne v0, v6, :cond_1

    const/4 v14, 0x1

    .line 998
    .local v14, "isAllVisible":Z
    :goto_0
    sget-object v21, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_11

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 999
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1000
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int v4, v21, p1

    .line 1001
    .local v4, "cellWidth":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 1002
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1003
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1004
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1005
    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    .line 1006
    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v7, v21, v22

    .line 1007
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1008
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1009
    move/from16 v18, v10

    .line 1001
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 996
    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    .end local v14    # "isAllVisible":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 1011
    .restart local v14    # "isAllVisible":Z
    :cond_2
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 1013
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1014
    const/4 v9, 0x1

    .line 1015
    .local v9, "enableBackButton":Z
    instance-of v0, v5, Lcom/meizu/widget/KeyBackButton;

    move/from16 v21, v0

    if-nez v21, :cond_3

    const/4 v9, 0x0

    .line 1016
    :cond_3
    if-nez v9, :cond_5

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int/lit8 v17, v21, 0x2

    .line 1018
    .local v17, "perMaxWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1019
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1020
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    .line 1022
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1025
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1026
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1027
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1028
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1029
    add-int v21, p2, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    .line 1030
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1229
    .end local v9    # "enableBackButton":Z
    .end local v17    # "perMaxWidth":I
    :cond_4
    :goto_2
    return-void

    .line 1032
    .restart local v9    # "enableBackButton":Z
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1033
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1034
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1035
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1038
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1039
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1040
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1041
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1042
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1044
    .end local v9    # "enableBackButton":Z
    :cond_6
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 1046
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1047
    const/4 v9, 0x1

    .line 1048
    .restart local v9    # "enableBackButton":Z
    instance-of v0, v5, Lcom/meizu/widget/KeyBackButton;

    move/from16 v21, v0

    if-nez v21, :cond_7

    const/4 v9, 0x0

    .line 1049
    :cond_7
    if-nez v9, :cond_a

    .line 1050
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1051
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1052
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1053
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int/lit8 v17, v21, 0x3

    .line 1054
    .restart local v17    # "perMaxWidth":I
    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 1055
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    add-int v21, v21, v17

    sub-int v7, v21, v20

    .line 1059
    :goto_3
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1062
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1063
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1064
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1065
    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    .line 1066
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1067
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1070
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1071
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1072
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1073
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1074
    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v22, v17, 0x2

    add-int v7, v21, v22

    .line 1079
    :goto_4
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1057
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    goto :goto_3

    .line 1077
    :cond_9
    mul-int/lit8 v21, v17, 0x2

    add-int v21, v21, p2

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    goto :goto_4

    .line 1081
    .end local v17    # "perMaxWidth":I
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1082
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1083
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1084
    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1086
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1092
    :goto_5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1093
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1094
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1095
    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    .line 1096
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1097
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1100
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1101
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1102
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1103
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1104
    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1105
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    add-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1088
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    .line 1108
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1111
    .end local v9    # "enableBackButton":Z
    :cond_d
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1112
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    .line 1113
    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_6
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 1114
    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    if-ge v13, v0, :cond_f

    .line 1115
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1116
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1117
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1118
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    move/from16 v22, v0

    add-int v22, v22, v4

    mul-int v22, v22, v13

    add-int v7, v21, v22

    .line 1119
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1120
    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1121
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1122
    sub-int v21, v7, v11

    add-int v22, v7, v20

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1113
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1124
    :cond_e
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1127
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1128
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1129
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    add-int/lit8 v22, p1, -0x1

    sub-int v22, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    move/from16 v23, v0

    add-int v23, v23, v4

    mul-int v22, v22, v23

    sub-int v8, v21, v22

    .line 1132
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1133
    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1134
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1135
    sub-int v21, v8, v20

    add-int v21, v21, v11

    add-int v22, v8, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1137
    :cond_10
    sub-int v21, v8, v20

    add-int v22, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v8, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_7

    .line 1143
    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v21, v0

    if-lez v21, :cond_12

    .line 1144
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1145
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1146
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1147
    const/4 v15, 0x0

    .line 1148
    .local v15, "l":I
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1149
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 1166
    :goto_8
    :pswitch_0
    add-int v21, v15, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1151
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    .line 1152
    goto :goto_8

    .line 1155
    :pswitch_2
    div-int/lit8 v16, p2, 0x2

    .line 1156
    .local v16, "midHorizontal":I
    div-int/lit8 v21, v20, 0x2

    sub-int v15, v16, v21

    .line 1157
    goto :goto_8

    .line 1160
    .end local v16    # "midHorizontal":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v15, v21, v20

    .line 1161
    goto :goto_8

    .line 1167
    .end local v15    # "l":I
    :cond_12
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 1168
    :cond_13
    div-int v4, p2, p1

    .line 1169
    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_9
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 1170
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1171
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1172
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1173
    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    .line 1174
    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    .line 1175
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1176
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1177
    move/from16 v18, v10

    .line 1169
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 1179
    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    :cond_14
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 1181
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1182
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1183
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1184
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1185
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1188
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1189
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1190
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1191
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1192
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1193
    :cond_15
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 1195
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1196
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1197
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1198
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1199
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1202
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1203
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1204
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1205
    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    .line 1206
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1207
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1210
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1211
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1212
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1213
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1215
    :cond_16
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1216
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int v4, v21, p1

    .line 1217
    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_a
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 1218
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1219
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1220
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1221
    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    .line 1222
    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    move/from16 v22, v0

    add-int v7, v21, v22

    .line 1223
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1224
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1225
    move/from16 v18, v10

    .line 1217
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 476
    .local v8, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 478
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 479
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 481
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;

    if-eqz v11, :cond_4

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move-object v7, v11

    .line 483
    .local v7, "itemView":Lcom/android/internal/view/menu/MzActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    .line 485
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 486
    .local v0, "cellsUsed":I
    if-lez p2, :cond_6

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_6

    .line 487
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 489
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 491
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 492
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 493
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 494
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 502
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    :goto_2
    iget-boolean v11, v8, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_7

    if-eqz v6, :cond_7

    const/4 v5, 0x1

    .line 503
    .local v5, "expandable":Z
    :goto_3
    iput-boolean v5, v8, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    .line 506
    if-eqz v5, :cond_3

    mul-int v11, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 507
    const/4 v11, 0x0

    iput-boolean v11, v8, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    .line 510
    :cond_3
    iput v0, v8, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    .line 511
    mul-int v10, v0, p1

    .line 512
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 514
    return v0

    .line 481
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/MzActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 483
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/MzActionMenuItemView;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 498
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_6
    if-eqz v6, :cond_2

    const/4 v11, 0x1

    if-ne p2, v11, :cond_2

    .line 499
    move v0, p2

    goto :goto_2

    .line 502
    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private onMeasureExactFormat(II)V
    .locals 48
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 197
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 198
    .local v23, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v43

    .line 199
    .local v43, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 201
    .local v25, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v45

    add-int v42, v44, v45

    .line 202
    .local v42, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingTop()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingBottom()I

    move-result v45

    add-int v24, v44, v45

    .line 204
    .local v24, "heightPadding":I
    const/16 v44, -0x2

    move/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/MzActionMenuView;->getChildMeasureSpec(III)I

    move-result v28

    .line 207
    .local v28, "itemHeightSpec":I
    sub-int v43, v43, v42

    .line 211
    const/16 v21, 0x0

    .line 212
    .local v21, "hasCustomAction":Z
    invoke-static/range {v28 .. v28}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    sub-int v15, v44, v24

    .line 213
    .local v15, "childHeightSize":I
    invoke-static/range {v28 .. v28}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 214
    .local v14, "childHeightMode":I
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 215
    .local v16, "childHeightSpec":I
    const/16 v17, 0x0

    .line 216
    .local v17, "childWidthSpec":I
    move/from16 v10, v43

    .line 217
    .local v10, "cellsWidthSize":I
    sget-object v44, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-nez v44, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    if-le v10, v0, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v44

    if-eqz v44, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    sub-int v10, v10, v44

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    div-int v4, v10, v44

    .line 228
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    rem-int v6, v10, v44

    .line 230
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_1

    .line 232
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/MzActionMenuView;->setMeasuredDimension(II)V

    .line 457
    :goto_0
    return-void

    .line 236
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    div-int v45, v6, v4

    add-int v5, v44, v45

    .line 238
    .local v5, "cellSize":I
    move v8, v4

    .line 239
    .local v8, "cellsRemaining":I
    const/16 v31, 0x0

    .line 240
    .local v31, "maxChildHeight":I
    const/16 v30, 0x0

    .line 241
    .local v30, "maxCellsUsed":I
    const/16 v19, 0x0

    .line 242
    .local v19, "expandableItemCount":I
    const/16 v40, 0x0

    .line 243
    .local v40, "visibleItemCount":I
    const/16 v22, 0x0

    .line 246
    .local v22, "hasOverflow":Z
    const-wide/16 v38, 0x0

    .line 248
    .local v38, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v13

    .line 249
    .local v13, "childCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v13, :cond_a

    .line 250
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 251
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_2

    .line 249
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 253
    :cond_2
    instance-of v0, v12, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v27, v0

    .line 254
    .local v27, "isGeneratedItem":Z
    add-int/lit8 v40, v40, 0x1

    .line 265
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 266
    .local v29, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    .line 267
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    .line 268
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    .line 269
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    .line 270
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    .line 271
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    .line 272
    if-eqz v27, :cond_6

    move-object/from16 v44, v12

    check-cast v44, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v44

    if-eqz v44, :cond_6

    const/16 v44, 0x1

    :goto_3
    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 275
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_7

    const/4 v7, 0x1

    .line 277
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v12, v5, v7, v0, v1}, Landroid/widget/MzActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 280
    .local v9, "cellsUsed":I
    move/from16 v0, v30

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 281
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-eqz v44, :cond_3

    add-int/lit8 v19, v19, 0x1

    .line 282
    :cond_3
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_4

    const/16 v22, 0x1

    .line 284
    :cond_4
    sub-int/2addr v8, v9

    .line 285
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v44

    move/from16 v0, v31

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 286
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v9, v0, :cond_5

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v38, v38, v44

    .line 291
    :cond_5
    if-eqz v27, :cond_8

    move-object/from16 v44, v12

    check-cast v44, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v44

    if-eqz v44, :cond_8

    move-object/from16 v44, v12

    .line 292
    check-cast v44, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/MzActionMenuView;->getTextMenuMaxWidth(I)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setMaxWidth(I)V

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/MzActionMenuView;->getTextMenuMaxWidth(I)I

    move-result v44

    const/high16 v45, -0x80000000

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 294
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/MzActionMenuView;->measureChild(Landroid/view/View;II)V

    goto/16 :goto_2

    .line 272
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v44, 0x0

    goto/16 :goto_3

    :cond_7
    move v7, v8

    .line 275
    goto :goto_4

    .line 295
    .restart local v7    # "cellsAvailable":I
    .restart local v9    # "cellsUsed":I
    :cond_8
    invoke-static {v12}, Landroid/widget/MzActionMenuView;->isActionView(Landroid/view/View;)Z

    move-result v44

    if-eqz v44, :cond_9

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 297
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    .line 299
    :cond_9
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 306
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    .end local v12    # "child":Landroid/view/View;
    .end local v27    # "isGeneratedItem":Z
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_a
    if-eqz v22, :cond_c

    const/16 v44, 0x2

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_c

    const/4 v11, 0x1

    .line 311
    .local v11, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v36, 0x0

    .line 316
    .local v36, "needsExpansion":Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v44, v0

    if-nez v44, :cond_10

    if-lez v19, :cond_10

    if-lez v8, :cond_10

    .line 318
    const v32, 0x7fffffff

    .line 319
    .local v32, "minCells":I
    const-wide/16 v34, 0x0

    .line 320
    .local v34, "minCellsAt":J
    const/16 v33, 0x0

    .line 321
    .local v33, "minCellsItemCount":I
    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    if-ge v0, v13, :cond_f

    .line 322
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 323
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 326
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-nez v44, :cond_d

    .line 321
    :cond_b
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 306
    .end local v11    # "centerSingleExpandedItem":Z
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v32    # "minCells":I
    .end local v33    # "minCellsItemCount":I
    .end local v34    # "minCellsAt":J
    .end local v36    # "needsExpansion":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 329
    .restart local v11    # "centerSingleExpandedItem":Z
    .restart local v12    # "child":Landroid/view/View;
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .restart local v32    # "minCells":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v34    # "minCellsAt":J
    .restart local v36    # "needsExpansion":Z
    :cond_d
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 330
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    .line 331
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 332
    const/16 v33, 0x1

    goto :goto_8

    .line 333
    :cond_e
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 334
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v34, v34, v44

    .line 335
    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    .line 340
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_f
    or-long v38, v38, v34

    .line 342
    move/from16 v0, v33

    if-le v0, v8, :cond_15

    .line 371
    .end local v32    # "minCells":I
    .end local v33    # "minCellsItemCount":I
    .end local v34    # "minCellsAt":J
    :cond_10
    if-nez v22, :cond_1a

    const/16 v44, 0x1

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_1a

    const/16 v37, 0x1

    .line 378
    .local v37, "singleItem":Z
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v44, v0

    if-nez v44, :cond_22

    if-lez v8, :cond_22

    const-wide/16 v44, 0x0

    cmp-long v44, v38, v44

    if-eqz v44, :cond_22

    if-eqz v21, :cond_22

    add-int/lit8 v44, v40, -0x1

    move/from16 v0, v44

    if-lt v8, v0, :cond_11

    if-nez v37, :cond_11

    const/16 v44, 0x1

    move/from16 v0, v30

    move/from16 v1, v44

    if-le v0, v1, :cond_22

    .line 382
    :cond_11
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->bitCount(J)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v18, v0

    .line 384
    .local v18, "expandCount":F
    if-nez v37, :cond_13

    .line 386
    const-wide/16 v44, 0x1

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_12

    .line 387
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 388
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_12

    const/high16 v44, 0x3f000000    # 0.5f

    sub-float v18, v18, v44

    .line 390
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_12
    const/16 v44, 0x1

    add-int/lit8 v45, v13, -0x1

    shl-int v44, v44, v45

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_13

    .line 391
    add-int/lit8 v44, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 392
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_13

    const/high16 v44, 0x3f000000    # 0.5f

    sub-float v18, v18, v44

    .line 396
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_13
    const/16 v44, 0x0

    cmpl-float v44, v18, v44

    if-lez v44, :cond_1b

    mul-int v44, v8, v5

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v44, v44, v18

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v20, v0

    .line 399
    .local v20, "extraPixels":I
    :goto_a
    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    if-ge v0, v13, :cond_21

    .line 400
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_1c

    .line 399
    :cond_14
    :goto_c
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 345
    .end local v18    # "expandCount":F
    .end local v20    # "extraPixels":I
    .end local v37    # "singleItem":Z
    .restart local v32    # "minCells":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v34    # "minCellsAt":J
    :cond_15
    add-int/lit8 v32, v32, 0x1

    .line 347
    const/16 v26, 0x0

    :goto_d
    move/from16 v0, v26

    if-ge v0, v13, :cond_19

    .line 348
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 349
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 350
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v34

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_17

    .line 352
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v38, v38, v44

    .line 347
    :cond_16
    :goto_e
    add-int/lit8 v26, v26, 0x1

    goto :goto_d

    .line 356
    :cond_17
    if-eqz v11, :cond_18

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-eqz v44, :cond_18

    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v8, v0, :cond_18

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mGeneratedItemPadding:I

    move/from16 v44, v0

    add-int v44, v44, v5

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mGeneratedItemPadding:I

    move/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 360
    :cond_18
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    .line 361
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    .line 362
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 365
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_19
    const/16 v36, 0x1

    .line 366
    goto/16 :goto_6

    .line 371
    .end local v32    # "minCells":I
    .end local v33    # "minCellsItemCount":I
    .end local v34    # "minCellsAt":J
    :cond_1a
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 396
    .restart local v18    # "expandCount":F
    .restart local v37    # "singleItem":Z
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 402
    .restart local v20    # "extraPixels":I
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 403
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 404
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    instance-of v0, v12, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v44, v0

    if-eqz v44, :cond_1e

    .line 406
    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    .line 407
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    .line 408
    if-nez v26, :cond_1d

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_1d

    .line 411
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    div-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    .line 413
    :cond_1d
    const/16 v36, 0x1

    goto/16 :goto_c

    .line 414
    :cond_1e
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1f

    .line 415
    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    .line 416
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    .line 417
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    div-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    .line 418
    const/16 v36, 0x1

    goto/16 :goto_c

    .line 423
    :cond_1f
    if-eqz v26, :cond_20

    .line 424
    div-int/lit8 v44, v20, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    .line 426
    :cond_20
    add-int/lit8 v44, v13, -0x1

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_14

    .line 427
    div-int/lit8 v44, v20, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 432
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_21
    const/4 v8, 0x0

    .line 436
    .end local v18    # "expandCount":F
    .end local v20    # "extraPixels":I
    :cond_22
    if-eqz v36, :cond_25

    .line 437
    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    if-ge v0, v13, :cond_25

    .line 438
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 439
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 441
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    move/from16 v44, v0

    if-nez v44, :cond_24

    .line 437
    :cond_23
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 443
    :cond_24
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-eqz v44, :cond_23

    .line 446
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    mul-int v44, v44, v5

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v45, v0

    add-int v41, v44, v45

    .line 447
    .local v41, "width":I
    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v41

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 452
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v41    # "width":I
    :cond_25
    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v44

    if-eq v0, v1, :cond_26

    .line 453
    move/from16 v25, v31

    .line 456
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/MzActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method private updatePaddingsForItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1258
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1259
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    .line 1260
    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_padding_for_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    .line 1262
    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    .line 1263
    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_cell_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    .line 1264
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1265
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1266
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_action_bar_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v4, v4, v2, v4}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    .line 1270
    :goto_0
    return-void

    .line 1268
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateSmartBarConfiguration()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 1238
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    .line 1239
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPaddingFor4()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    .line 1240
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonPadding()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    .line 1241
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    .line 1242
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 722
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/MzActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->dismissPopupMenus()Z

    .line 828
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 695
    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(II)V

    .line 697
    .local v0, "params":Landroid/widget/MzActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->gravity:I

    .line 698
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 703
    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 708
    if-eqz p1, :cond_2

    .line 709
    instance-of v1, p1, Landroid/widget/MzActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/MzActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(Landroid/widget/MzActionMenuView$LayoutParams;)V

    .line 712
    .local v0, "result":Landroid/widget/MzActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 713
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->gravity:I

    .line 717
    .end local v0    # "result":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 709
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 717
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    .line 728
    .local v0, "result":Landroid/widget/MzActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 729
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 756
    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 757
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 758
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 759
    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/MzActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/MzActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/MzActionMenuView;Landroid/widget/MzActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 760
    new-instance v1, Landroid/widget/MzActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/MzActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    .line 761
    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MzActionMenuPresenter;->setReserveOverflow(Z)V

    .line 762
    iget-object v2, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/MzActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 764
    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 765
    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/MzActionMenuPresenter;->setMenuView(Landroid/widget/MzActionMenuView;)V

    .line 768
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .line 762
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/MzActionMenuView;Landroid/widget/MzActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 835
    if-nez p1, :cond_1

    .line 836
    const/4 v2, 0x0

    .line 847
    :cond_0
    :goto_0
    return v2

    .line 838
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 839
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 840
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 841
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 842
    check-cast v1, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/MzActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 844
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 845
    check-cast v0, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/MzActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 744
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 745
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 734
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Landroid/widget/MzActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, v2}, Landroid/widget/MzActionMenuPresenter;->updateMenuView(Z)V

    .line 144
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    .line 146
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    .line 151
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_action_bar_padding_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 679
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 680
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->dismissPopupMenus()V

    .line 681
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 34
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 520
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v6

    .line 525
    .local v6, "childCount":I
    add-int v32, p3, p5

    div-int/lit8 v16, v32, 0x2

    .line 526
    .local v16, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getDividerWidth()I

    move-result v7

    .line 527
    .local v7, "dividerWidth":I
    const/16 v19, 0x0

    .line 528
    .local v19, "overflowWidth":I
    const/16 v18, 0x0

    .line 529
    .local v18, "nonOverflowWidth":I
    const/16 v17, 0x0

    .line 530
    .local v17, "nonOverflowCount":I
    sub-int v32, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v33

    sub-int v31, v32, v33

    .line 531
    .local v31, "widthRemaining":I
    const/4 v9, 0x0

    .line 532
    .local v9, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->isLayoutRtl()Z

    move-result v12

    .line 535
    .local v12, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    .line 536
    const/4 v8, 0x0

    .line 537
    .local v8, "hasCustomAction":Z
    const/16 v29, 0x0

    .line 540
    .local v29, "visibleItemCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v6, :cond_8

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 542
    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 540
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 548
    :cond_3
    add-int/lit8 v29, v29, 0x1

    .line 550
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 551
    .local v20, "p":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 552
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 553
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 554
    add-int v19, v19, v7

    .line 557
    :cond_4
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 560
    .local v10, "height":I
    if-eqz v12, :cond_5

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v13, v32, v33

    .line 564
    .local v13, "l":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    add-int v13, v13, v32

    .line 566
    add-int v21, v13, v19

    .line 574
    .local v21, "r":I
    :goto_3
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .line 575
    .local v27, "t":I
    add-int v5, v27, v10

    .line 576
    .local v5, "b":I
    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 578
    sub-int v31, v31, v19

    .line 579
    const/4 v9, 0x1

    .line 580
    goto :goto_2

    .line 568
    .end local v5    # "b":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    .end local v27    # "t":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    sub-int v21, v32, v33

    .line 570
    .restart local v21    # "r":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    sub-int v21, v21, v32

    .line 572
    sub-int v13, v21, v19

    .restart local v13    # "l":I
    goto :goto_3

    .line 581
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    :cond_6
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v22, v32, v33

    .line 582
    .local v22, "size":I
    add-int v18, v18, v22

    .line 583
    sub-int v31, v31, v22

    .line 584
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 585
    add-int v18, v18, v7

    .line 587
    :cond_7
    add-int/lit8 v17, v17, 0x1

    .line 591
    invoke-static/range {v28 .. v28}, Landroid/widget/MzActionMenuView;->isActionView(Landroid/view/View;)Z

    move-result v32

    if-nez v32, :cond_2

    .line 592
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 601
    .end local v20    # "p":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v22    # "size":I
    .end local v28    # "v":Landroid/view/View;
    :cond_8
    const/16 v32, 0x1

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/meizu/widget/KeyBackButton;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 602
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 603
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 604
    .restart local v10    # "height":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .line 605
    .restart local v27    # "t":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    add-int p2, p2, v32

    .line 606
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v32, v32, p2

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    add-int v33, v33, v27

    move-object/from16 v0, v28

    move/from16 v1, p2

    move/from16 v2, v27

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 611
    .end local v10    # "height":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    :cond_9
    if-nez v8, :cond_a

    if-lez v29, :cond_a

    const/16 v32, 0x5

    move/from16 v0, v29

    move/from16 v1, v32

    if-gt v0, v1, :cond_a

    .line 613
    sub-int v32, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v33

    sub-int v31, v32, v33

    .line 614
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MzActionMenuView;->layoutMenuItems(III)V

    goto/16 :goto_0

    .line 619
    :cond_a
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_b

    if-nez v9, :cond_b

    .line 621
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 622
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 623
    .local v30, "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 624
    .restart local v10    # "height":I
    sub-int v32, p4, p2

    div-int/lit8 v15, v32, 0x2

    .line 625
    .local v15, "midHorizontal":I
    div-int/lit8 v32, v30, 0x2

    sub-int v13, v15, v32

    .line 626
    .restart local v13    # "l":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .line 627
    .restart local v27    # "t":I
    add-int v32, v13, v30

    add-int v33, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 631
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v15    # "midHorizontal":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v30    # "width":I
    :cond_b
    if-eqz v9, :cond_d

    const/16 v32, 0x0

    :goto_4
    sub-int v23, v17, v32

    .line 632
    .local v23, "spacerCount":I
    const/16 v33, 0x0

    if-lez v23, :cond_e

    div-int v32, v31, v23

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 634
    .local v24, "spacerSize":I
    if-eqz v12, :cond_10

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v26, v32, v33

    .line 638
    .local v26, "startRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 640
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_0

    .line 641
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 642
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 643
    .local v14, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    iget-boolean v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 640
    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 631
    .end local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v26    # "startRight":I
    .end local v28    # "v":Landroid/view/View;
    :cond_d
    const/16 v32, 0x1

    goto :goto_4

    .line 632
    .restart local v23    # "spacerCount":I
    :cond_e
    const/16 v32, 0x0

    goto :goto_5

    .line 647
    .restart local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .restart local v24    # "spacerSize":I
    .restart local v26    # "startRight":I
    .restart local v28    # "v":Landroid/view/View;
    :cond_f
    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 648
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 649
    .restart local v30    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 650
    .restart local v10    # "height":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .line 651
    .restart local v27    # "t":I
    sub-int v32, v26, v30

    add-int v33, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 652
    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v24

    sub-int v26, v26, v32

    goto :goto_7

    .line 655
    .end local v10    # "height":I
    .end local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v30    # "width":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v25

    .line 658
    .local v25, "startLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    add-int v25, v25, v32

    .line 660
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v6, :cond_0

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 662
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 663
    .restart local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_11

    iget-boolean v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 660
    :cond_11
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 667
    :cond_12
    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v25, v25, v32

    .line 668
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 669
    .restart local v30    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 670
    .restart local v10    # "height":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .line 671
    .restart local v27    # "t":I
    add-int v32, v25, v30

    add-int v33, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 672
    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v24

    add-int v25, v25, v32

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 166
    iget-boolean v4, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    .line 167
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    .line 169
    iget-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 170
    iput v8, p0, Landroid/widget/MzActionMenuView;->mFormatItemsWidth:I

    .line 175
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 176
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/widget/MzActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 177
    iput v5, p0, Landroid/widget/MzActionMenuView;->mFormatItemsWidth:I

    .line 178
    iget-object v6, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 181
    :cond_1
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v1

    .line 182
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/widget/MzActionMenuView;->onMeasureExactFormat(II)V

    .line 193
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 167
    goto :goto_0

    .line 186
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 187
    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/MzActionMenuView$LayoutParams;

    .line 189
    .local v3, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 1232
    invoke-direct {p0}, Landroid/widget/MzActionMenuView;->updateSmartBarConfiguration()V

    .line 1233
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->requestLayout()V

    .line 1234
    return-void
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 856
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/MzActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 857
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 776
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 777
    iput-object p2, p0, Landroid/widget/MzActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 778
    return-void
.end method

.method public setMenuShowGravity(I)V
    .locals 0
    .param p1, "showGravity"    # I

    .prologue
    .line 956
    iput p1, p0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    .line 957
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/MzActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    .line 161
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 690
    iput-boolean p1, p0, Landroid/widget/MzActionMenuView;->mReserveOverflow:Z

    .line 691
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 111
    iget v0, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 112
    iput p1, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    .line 113
    if-nez p1, :cond_1

    .line 114
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/MzActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    .line 135
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    .line 136
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/MzActionMenuPresenter;->setMenuView(Landroid/widget/MzActionMenuView;)V

    .line 137
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
