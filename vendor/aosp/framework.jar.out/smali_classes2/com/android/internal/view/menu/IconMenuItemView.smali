.class public final Lcom/android/internal/view/menu/IconMenuItemView;
.super Landroid/widget/TextView;
.source "IconMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static sPrependShortcutLabel:Ljava/lang/String;


# instance fields
.field private mDisabledAlpha:F

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mPositionIconAvailable:Landroid/graphics/Rect;

.field private mPositionIconOutput:Landroid/graphics/Rect;

.field private mShortcutCaption:Ljava/lang/String;

.field private mShortcutCaptionMode:Z

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 63
    sget-object v1, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040515

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    .line 72
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    .line 77
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    .line 79
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method

.method private positionIcon()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v6, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 285
    .local v6, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/view/menu/IconMenuItemView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 286
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getWidth()I

    move-result v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLayoutDirection()I

    move-result v5

    .line 288
    .local v5, "layoutDirection":I
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 232
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 236
    .local v0, "isInAlphaState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    .end local v0    # "isInAlphaState":Z
    :cond_1
    return-void

    .line 235
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    .restart local v0    # "isInAlphaState":Z
    :cond_3
    const/16 v1, 0xff

    goto :goto_1
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
        retrieveReturn = true
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 261
    .local v0, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .end local v0    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(II)V

    .line 268
    .restart local v0    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    .line 270
    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setVisibility(I)V

    .line 115
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setEnabled(Z)V

    .line 116
    return-void

    .line 114
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setClickable(Z)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setFocusable(Z)V

    .line 101
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/IconMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 242
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 244
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->positionIcon()V

    .line 245
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method setCaptionMode(Z)V
    .locals 2
    .param p1, "shortcut"    # Z

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 161
    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    .line 163
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    .local v0, "text":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 174
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 295
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 298
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 178
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {p0, v2, p1, v2, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->requestLayout()V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    goto :goto_0
.end method

.method setIconMenuView(Lcom/android/internal/view/menu/IconMenuView;)V
    .locals 0
    .param p1, "iconMenuView"    # Lcom/android/internal/view/menu/IconMenuView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    .line 226
    return-void
.end method

.method public setItemData(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "data"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 120
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "itemInvoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 207
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 1
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    .line 310
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->markStaleChildren()V

    .line 222
    :cond_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method
