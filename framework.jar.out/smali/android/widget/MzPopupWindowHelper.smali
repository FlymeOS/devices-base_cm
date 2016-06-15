.class public Landroid/widget/MzPopupWindowHelper;
.super Ljava/lang/Object;
.source "MzPopupWindowHelper.java"


# static fields
.field public static final INPUT_METHOD_IGNORE_DISPLAY_FRAME:I = 0x4

.field public static final LAYOUT_MODE_AUTO:I = 0x1

.field public static final LAYOUT_MODE_CENTER:I = 0x2

.field public static final LAYOUT_MODE_CENTER_IN_SCREEN:I = 0x3

.field public static final LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_LEFT:I = 0x6

.field public static final LAYOUT_MODE_RIGHT:I = 0x4

.field public static final LAYOUT_MODE_RIGHT_IN_SCREEN:I = 0x5


# instance fields
.field protected mAdjustWindowPosition:Z

.field private mContext:Landroid/content/Context;

.field private mInputMethodMode:I

.field private mLayoutMode:I

.field private mMzClipToScreen:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    .line 33
    iput-boolean v0, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    .line 35
    iput-boolean v0, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    .line 375
    iput v0, p0, Landroid/widget/MzPopupWindowHelper;->mInputMethodMode:I

    .line 38
    iput-object p1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 39
    iput-object p2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .prologue
    const/4 v5, 0x3

    .line 149
    iget-boolean v1, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object p1

    .line 152
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 157
    :cond_2
    if-eqz p3, :cond_3

    .line 158
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 171
    :goto_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-eq v1, v5, :cond_4

    .line 173
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 164
    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 178
    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-eq v1, v5, :cond_0

    .line 180
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0
.end method

.method public adjustWindowPositionForMz(Z)V
    .locals 0
    .param p1, "adjust"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    .line 47
    return-void
.end method

.method public clipToScreenWithDeviceDefaultTheme(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;ZI[IZ)Z
    .locals 8
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "onTop"    # Z
    .param p4, "yoff"    # I
    .param p5, "screenLocation"    # [I
    .param p6, "clipToScreen"    # Z

    .prologue
    const/4 v5, 0x1

    .line 247
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p6, :cond_1

    .line 248
    :cond_0
    const/4 v5, 0x0

    .line 280
    :goto_0
    return v5

    .line 251
    :cond_1
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 253
    .local v0, "displayFrameWidth":I
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 254
    .local v1, "paddingRight":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 255
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 256
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 259
    :cond_2
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    sub-int v4, v6, v7

    .line 260
    .local v4, "right":I
    if-le v4, v0, :cond_3

    .line 261
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v4, v0

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 264
    :cond_3
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    add-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_4

    .line 265
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 266
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 269
    :cond_4
    if-eqz p3, :cond_6

    .line 270
    aget v6, p5, v5

    add-int/2addr v6, p4

    iget-object v7, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getPopupHeight()I

    move-result v7

    sub-int v2, v6, v7

    .line 271
    .local v2, "popupTop":I
    if-gez v2, :cond_5

    .line 272
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v6, v2

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 278
    .end local v2    # "popupTop":I
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/MzPopupWindowHelper;->adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    .line 275
    :cond_6
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method public clipToScreenWithoutBackGround(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;ZI[I)Z
    .locals 8
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "onTop"    # Z
    .param p4, "yoff"    # I
    .param p5, "screenLocation"    # [I

    .prologue
    const/4 v5, 0x1

    .line 200
    iget-boolean v6, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v6

    if-nez v6, :cond_1

    .line 201
    :cond_0
    const/4 v5, 0x0

    .line 238
    :goto_0
    return v5

    .line 204
    :cond_1
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 206
    .local v0, "displayFrameWidth":I
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    .local v1, "paddingRight":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 211
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 212
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 215
    :cond_2
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, v6, v7

    .line 217
    .local v4, "right":I
    if-le v4, v0, :cond_3

    .line 218
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v4, v0

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 221
    :cond_3
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_4

    .line 222
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 223
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 226
    :cond_4
    if-eqz p3, :cond_6

    .line 227
    aget v6, p5, v5

    add-int/2addr v6, p4

    iget-object v7, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getPopupHeight()I

    move-result v7

    sub-int v2, v6, v7

    .line 229
    .local v2, "popupTop":I
    if-gez v2, :cond_5

    .line 230
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v6, v2

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 236
    .end local v2    # "popupTop":I
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/MzPopupWindowHelper;->adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    .line 233
    :cond_6
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method public meansurePopupPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Z[I)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "displayFrame"    # Landroid/graphics/Rect;
    .param p6, "onTop"    # Z
    .param p7, "drawingLocation"    # [I

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 64
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroid/widget/MzPopupWindowHelper;->setLayoutMode(I)V

    .line 66
    :cond_0
    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-nez v4, :cond_1

    .line 141
    :goto_0
    return-object p2

    .line 69
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 71
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 74
    :cond_2
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$dimen;->mz_preference_list_popup_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 77
    .local v1, "padding":I
    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget v4, p5, Landroid/graphics/Rect;->right:I

    iget v5, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 89
    .local v3, "screenCenterX":I
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 91
    .local v0, "anchorCenterX":I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 94
    add-int/lit8 v4, v0, -0x1

    if-gt v4, v3, :cond_5

    add-int/lit8 v4, v0, 0x1

    if-gt v3, v4, :cond_5

    .line 96
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 80
    .end local v0    # "anchorCenterX":I
    .end local v3    # "screenCenterX":I
    :pswitch_1
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 83
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_2
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_3
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 91
    .restart local v0    # "anchorCenterX":I
    .restart local v3    # "screenCenterX":I
    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 97
    :cond_5
    add-int/lit8 v4, v0, -0x1

    if-le v4, v3, :cond_6

    .line 99
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, 0x800005

    or-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    iget v4, p5, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    aget v5, p7, v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 105
    :cond_6
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 110
    .end local v0    # "anchorCenterX":I
    .end local v3    # "screenCenterX":I
    :pswitch_2
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 111
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 116
    :pswitch_3
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 117
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, 0x800005

    or-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 118
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    neg-int v4, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 121
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_7

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_3
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_7
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 126
    :pswitch_4
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 129
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_8

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_4
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_8
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 133
    :pswitch_5
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 135
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_9

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_5
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_9
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_5

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v3

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 331
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 333
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 334
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 335
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 338
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v4, :cond_3

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_3

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_0

    .line 343
    :cond_3
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 344
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v3

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 355
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 357
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 358
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 359
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 362
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, p2, v4

    if-ge v1, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p3, v4

    if-lt v2, v4, :cond_0

    .line 367
    :cond_3
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 368
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setInputMethodMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 377
    iput p1, p0, Landroid/widget/MzPopupWindowHelper;->mInputMethodMode:I

    .line 378
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 379
    const/4 p1, 0x2

    .line 381
    :cond_0
    return p1
.end method

.method public setLayoutMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 54
    iput p1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    .line 55
    return-void
.end method

.method public setMzClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    .line 192
    return-void
.end method
