.class public Lcom/android/internal/view/menu/MzActionMenuItemView;
.super Landroid/widget/TextView;
.source "MzActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/MzActionMenuView$ActionMenuChildView;
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;,
        Lcom/android/internal/view/menu/MzActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

.field private mAllowTextWithIcon:Z

.field private mCompoundDrawablePadding:I

.field private mDelegate:Lcom/meizu/widget/GlowDelegate;

.field private mEnableOnDragEntered:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    iput v4, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mCompoundDrawablePadding:I

    .line 72
    iput-boolean v4, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mEnableOnDragEntered:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    .local v2, "res":Landroid/content/res/Resources;
    iput-boolean v4, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mAllowTextWithIcon:Z

    .line 92
    sget-object v3, Landroid/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMinWidth:I

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 99
    .local v1, "density":F
    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMaxIconSize:I

    .line 101
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 104
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mSavedPaddingLeft:I

    .line 108
    sget v3, Lcom/flyme/internal/R$dimen;->mz_action_item_text_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mCompoundDrawablePadding:I

    .line 110
    new-instance v3, Lcom/meizu/widget/GlowDelegate;

    invoke-direct {v3, p1, p0}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    .line 111
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MzActionMenuItemView;)Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MzActionMenuItemView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MzActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MzActionMenuItemView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MzActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MzActionMenuItemView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method private dispatchEvent(Landroid/view/DragEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    iget-object v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$OnActionItemDragListener;->onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    .line 454
    return-void
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 199
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 214
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 198
    goto :goto_0

    .line 214
    .restart local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 465
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 467
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowScale()F

    move-result v0

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 138
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setId(I)V

    .line 142
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setVisibility(I)V

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setEnabled(Z)V

    .line 150
    return-void

    .line 142
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 471
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 472
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->jumpToCurrentState()V

    .line 473
    return-void
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 166
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mAllowTextWithIcon:Z

    .line 121
    invoke-direct {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->updateTextButtonVisibility()V

    .line 122
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 419
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    if-eqz v1, :cond_0

    .line 420
    const/4 v0, 0x1

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mEnableOnDragEntered:Z

    .line 425
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mEnableOnDragEntered:Z

    if-eqz v1, :cond_0

    .line 426
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setPressed(Z)V

    .line 427
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->dispatchEvent(Landroid/view/DragEvent;)V

    .line 428
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mEnableOnDragEntered:Z

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setPressed(Z)V

    .line 434
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->dispatchEvent(Landroid/view/DragEvent;)V

    .line 435
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mEnableOnDragEntered:Z

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setPressed(Z)V

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MzActionMenuItemView;->dispatchEvent(Landroid/view/DragEvent;)V

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v9

    .line 295
    :cond_1
    iget-object v11, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 298
    iget-object v11, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v11

    if-eqz v11, :cond_2

    move v9, v10

    .line 299
    goto :goto_0

    .line 304
    :cond_2
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 305
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 306
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getLocationOnScreen([I)V

    .line 307
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 310
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getWidth()I

    move-result v8

    .line 311
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getHeight()I

    move-result v3

    .line 312
    .local v3, "height":I
    aget v11, v6, v10

    div-int/lit8 v12, v3, 0x2

    add-int v4, v11, v12

    .line 313
    .local v4, "midy":I
    aget v11, v6, v9

    div-int/lit8 v12, v8, 0x2

    add-int v5, v11, v12

    .line 314
    .local v5, "referenceX":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    if-nez v11, :cond_3

    .line 315
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 316
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 318
    .end local v7    # "screenWidth":I
    :cond_3
    iget-object v11, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 319
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 321
    const v9, 0x800035

    invoke-virtual {v0, v9, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 326
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 327
    goto :goto_0

    .line 324
    :cond_4
    const/16 v11, 0x51

    invoke-virtual {v0, v11, v9, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v3

    .line 333
    .local v3, "textVisible":Z
    if-eqz v3, :cond_0

    iget v7, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    .line 334
    iget v7, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 341
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 342
    .local v6, "widthSize":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 343
    .local v1, "oldMeasuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_2

    iget v7, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 346
    .local v2, "targetWidth":I
    :goto_0
    if-eq v5, v12, :cond_1

    iget v7, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    .line 348
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 359
    :cond_1
    if-nez v3, :cond_3

    iget-object v7, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 363
    .local v4, "w":I
    iget-object v7, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 364
    .local v0, "dw":I
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 373
    .end local v0    # "dw":I
    .end local v4    # "w":I
    :goto_1
    return-void

    .line 343
    .end local v2    # "targetWidth":I
    :cond_2
    iget v2, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMinWidth:I

    goto :goto_0

    .line 369
    .restart local v2    # "targetWidth":I
    :cond_3
    invoke-super {p0, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ActionMode$OnActionItemDragListener;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    .line 461
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 182
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 186
    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 481
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mExpandedFormat:Z

    .line 191
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 195
    :cond_0
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 489
    return-void
.end method

.method public setGlowScale(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 497
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 218
    iput-object p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 221
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 222
    .local v0, "height":I
    iget v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 223
    iget v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 224
    .local v1, "scale":F
    iget v2, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMaxIconSize:I

    .line 225
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 227
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 228
    iget v3, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 229
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mMaxIconSize:I

    .line 230
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 232
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0, p1, v5, v5, v5}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-direct {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->updateTextButtonVisibility()V

    .line 237
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 170
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mSavedPaddingLeft:I

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    return-void
.end method

.method public setPopupCallback(Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;

    .line 174
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setPressed(Z)V

    .line 501
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 502
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 245
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 250
    iget-object v0, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    invoke-direct {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView;->updateTextButtonVisibility()V

    .line 252
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method
