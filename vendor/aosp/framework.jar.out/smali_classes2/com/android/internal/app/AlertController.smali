.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 96
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 117
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 121
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 179
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 181
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 182
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 184
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090026

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 190
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 193
    const/16 v1, 0xc

    const v2, 0x10900c2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 196
    const/16 v1, 0xd

    const v2, 0x1090013

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 199
    const/16 v1, 0xe

    const v2, 0x1090012

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 202
    const/16 v1, 0xf

    const v2, 0x1090011

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/internal/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    :goto_0
    return v2

    .line 214
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 215
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 218
    check-cast v1, Landroid/view/ViewGroup;

    .line 219
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 220
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 221
    add-int/lit8 v0, v0, -0x1

    .line 222
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 223
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 228
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 724
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 725
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 726
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 727
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10202c5

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 729
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 732
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10202c6

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 733
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 734
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 736
    :cond_1
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 658
    if-eqz p1, :cond_0

    .line 659
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 661
    :cond_0
    if-eqz p2, :cond_1

    .line 662
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 659
    goto :goto_0

    :cond_3
    move v1, v2

    .line 662
    goto :goto_1
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 242
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 248
    :goto_0
    return v0

    .line 244
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 245
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 248
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 740
    const/4 v10, 0x0

    .line 741
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 742
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 743
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 744
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 745
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 746
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 747
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 748
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 752
    .local v5, "bottomMedium":I
    const/16 v22, 0x12

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 754
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    .line 755
    const v10, 0x108055f

    .line 756
    const v19, 0x108056d

    .line 757
    const v7, 0x108055c

    .line 758
    const v4, 0x1080559

    .line 759
    const v9, 0x108055e

    .line 760
    const v18, 0x108056c

    .line 761
    const v6, 0x108055b

    .line 762
    const v3, 0x1080558

    .line 763
    const v5, 0x108055a

    .line 766
    :cond_0
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 767
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 768
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 769
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 779
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 780
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 781
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 782
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 784
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 785
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 786
    aput-object p2, v21, v16

    .line 787
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 788
    add-int/lit8 v16, v16, 0x1

    .line 796
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 798
    add-int/lit8 v16, v16, 0x1

    .line 800
    if-eqz p7, :cond_3

    .line 801
    aput-object p4, v21, v16

    .line 802
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 803
    add-int/lit8 v16, v16, 0x1

    .line 806
    :cond_3
    if-eqz p8, :cond_4

    .line 807
    aput-object p5, v21, v16

    .line 808
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 811
    :cond_4
    const/16 v17, 0x0

    .line 812
    .local v17, "setView":Z
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 813
    aget-object v20, v21, v16

    .line 814
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 812
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 797
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 818
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 819
    if-nez v17, :cond_9

    .line 820
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 824
    :goto_4
    const/16 v17, 0x1

    .line 827
    :cond_7
    move-object/from16 v12, v20

    .line 828
    aget-boolean v11, v13, v16

    goto :goto_2

    :cond_8
    move/from16 v22, v19

    .line 820
    goto :goto_3

    .line 822
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 831
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 832
    if-eqz v17, :cond_10

    .line 833
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 834
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 835
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 839
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 849
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 850
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 852
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 853
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 854
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 855
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 858
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 839
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 842
    :cond_10
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 843
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 845
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 667
    const/4 v2, 0x1

    .line 668
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 669
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 670
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 671
    .local v3, "whichButtons":I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020019

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 672
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 682
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 683
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 686
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 694
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001b

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 695
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 698
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 706
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    if-ne v3, v2, :cond_4

    .line 712
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 720
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 677
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 679
    or-int/2addr v3, v2

    goto :goto_0

    .line 688
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    or-int/2addr v3, v0

    goto :goto_1

    .line 700
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 703
    or-int/2addr v3, v1

    goto :goto_2

    .line 713
    :cond_4
    if-ne v3, v0, :cond_5

    .line 714
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 715
    :cond_5
    if-ne v3, v1, :cond_0

    .line 716
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 720
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    .line 577
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x10202c8

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 578
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 581
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 582
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 587
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x10202cc

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 605
    .local v2, "indicatorUp":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x10202ce

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, "indicatorDown":Landroid/view/View;
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 607
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    .line 609
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    new-instance v5, Lcom/android/internal/app/AlertController$3;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/internal/app/AlertController$3;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 617
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    new-instance v5, Lcom/android/internal/app/AlertController$4;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/internal/app/AlertController$4;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 589
    .end local v1    # "indicatorDown":Landroid/view/View;
    .end local v2    # "indicatorUp":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 592
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 593
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 594
    .local v3, "scrollParent":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 595
    .local v0, "childIndex":I
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 596
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 599
    .end local v0    # "childIndex":I
    .end local v3    # "scrollParent":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 624
    .restart local v1    # "indicatorDown":Landroid/view/View;
    .restart local v2    # "indicatorUp":Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_6

    .line 626
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/internal/app/AlertController$5;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/internal/app/AlertController$5;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 639
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/internal/app/AlertController$6;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/internal/app/AlertController$6;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 647
    :cond_6
    if-eqz v2, :cond_7

    .line 648
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 650
    :cond_7
    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 433
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x10202bf

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 435
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 436
    new-instance v2, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 448
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 451
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x10202c1

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 527
    const/4 v1, 0x1

    .line 529
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 531
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 534
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 538
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 573
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 540
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 542
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 543
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 545
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x10202c2

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 546
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 552
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 554
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 558
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 562
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 566
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 567
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 570
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 22

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x10202c7

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 455
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v12

    .line 458
    .local v12, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x10202c0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 459
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    sget-object v19, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v20, 0x101005d

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 461
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v10

    .line 463
    .local v10, "hasTitle":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x10202c4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 464
    .local v9, "buttonPanel":Landroid/view/View;
    if-nez v12, :cond_1

    .line 465
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x10202cd

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 467
    .local v17, "spacer":Landroid/view/View;
    if-eqz v17, :cond_0

    .line 468
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 473
    .end local v17    # "spacer":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x10202c9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 475
    .local v8, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 484
    .local v14, "customView":Landroid/view/View;
    :goto_0
    if-eqz v14, :cond_a

    const/4 v11, 0x1

    .line 485
    .local v11, "hasCustomView":Z
    :goto_1
    if-eqz v11, :cond_2

    invoke-static {v14}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 486
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v18, 0x20000

    const/high16 v19, 0x20000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 490
    :cond_3
    if-eqz v11, :cond_b

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x102002b

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 492
    .local v13, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_4

    .line 495
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v13, v4, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 499
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    .line 500
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 508
    .end local v13    # "custom":Landroid/widget/FrameLayout;
    :cond_5
    :goto_2
    if-eqz v10, :cond_7

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_c

    .line 511
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x10202c3

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 516
    .local v15, "divider":Landroid/view/View;
    :goto_3
    if-eqz v15, :cond_7

    .line 517
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .end local v15    # "divider":Landroid/view/View;
    :cond_7
    move-object/from16 v4, p0

    .line 521
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 523
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 524
    return-void

    .line 477
    .end local v11    # "hasCustomView":Z
    .end local v14    # "customView":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_9

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 479
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v4, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 480
    .restart local v14    # "customView":Landroid/view/View;
    goto/16 :goto_0

    .line 481
    .end local v14    # "customView":Landroid/view/View;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "customView":Landroid/view/View;
    goto/16 :goto_0

    .line 484
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 503
    .restart local v11    # "hasCustomView":Z
    :cond_b
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 513
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v18, 0x10202ca

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .restart local v15    # "divider":Landroid/view/View;
    goto :goto_3
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 172
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 173
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1160010

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 175
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 410
    packed-switch p1, :pswitch_data_0

    .line 418
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 412
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 396
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 397
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 398
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 234
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 235
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 236
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 237
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    .line 238
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 326
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 330
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 334
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 350
    :goto_0
    return-void

    .line 338
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 339
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 343
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 344
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 309
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 263
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 360
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 362
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 363
    if-eqz p1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 380
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 381
    if-eqz p1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 403
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 267
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 253
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 277
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 279
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 285
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 286
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 287
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 288
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 298
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 299
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 300
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 301
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 302
    return-void
.end method
