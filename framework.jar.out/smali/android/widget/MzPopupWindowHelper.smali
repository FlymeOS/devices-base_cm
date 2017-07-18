.class public Landroid/widget/MzPopupWindowHelper;
.super Ljava/lang/Object;
.source "MzPopupWindowHelper.java"


# static fields
.field public static final INPUT_METHOD_IGNORE_DISPLAY_FRAME:I = 0x4

.field public static final LAYOUT_MODE_AUTO:I = 0x1

.field public static final LAYOUT_MODE_CENTER:I = 0x2

.field public static final LAYOUT_MODE_CENTER_IN_SCREEN:I = 0x3

.field public static final LAYOUT_MODE_DEFAULT:I = 0x0

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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    .line 31
    iput-boolean v0, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    .line 33
    iput-boolean v0, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    .line 365
    iput v0, p0, Landroid/widget/MzPopupWindowHelper;->mInputMethodMode:I

    .line 36
    iput-object p1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 37
    iput-object p2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    .line 35
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

    .line 139
    iget-boolean v1, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    if-nez v1, :cond_0

    .line 140
    return-object p1

    .line 142
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 147
    :cond_1
    if-eqz p3, :cond_3

    .line 148
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 149
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 152
    sget v4, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_bottom:I

    .line 149
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 148
    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 161
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_4

    .line 162
    iget v1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-eq v1, v5, :cond_4

    .line 163
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 166
    sget v3, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    .line 163
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 167
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 163
    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 176
    :cond_2
    :goto_1
    return-object p1

    .line 154
    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 155
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 158
    sget v4, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_bottom:I

    .line 155
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 168
    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_2

    .line 169
    iget v1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-eq v1, v5, :cond_2

    .line 170
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 173
    sget v3, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    .line 170
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1
.end method

.method public adjustWindowPositionForMz(Z)V
    .locals 0
    .param p1, "adjust"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/widget/MzPopupWindowHelper;->mAdjustWindowPosition:Z

    .line 43
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p6, :cond_4

    .line 241
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v6

    .line 243
    .local v0, "displayFrameWidth":I
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 244
    .local v1, "paddingRight":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 245
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 246
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 249
    :cond_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    sub-int v4, v5, v6

    .line 250
    .local v4, "right":I
    if-le v4, v0, :cond_1

    .line 251
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v6, v4, v0

    sub-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    :cond_1
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_2

    .line 255
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    sub-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 256
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 259
    :cond_2
    if-eqz p3, :cond_5

    .line 260
    aget v5, p5, v7

    add-int/2addr v5, p4

    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getPopupHeight()I

    move-result v6

    sub-int v2, v5, v6

    .line 261
    .local v2, "popupTop":I
    if-gez v2, :cond_3

    .line 262
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v2

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 268
    .end local v2    # "popupTop":I
    :cond_3
    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/MzPopupWindowHelper;->adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;

    .line 270
    return v7

    .line 238
    .end local v0    # "displayFrameWidth":I
    .end local v1    # "paddingRight":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "right":I
    :cond_4
    return v6

    .line 265
    .restart local v0    # "displayFrameWidth":I
    .restart local v1    # "paddingRight":I
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "right":I
    :cond_5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method public clipToScreenWithoutBackGround(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;ZI[I)Z
    .locals 8
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "onTop"    # Z
    .param p4, "yoff"    # I
    .param p5, "screenLocation"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    iget-boolean v5, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 191
    :cond_0
    return v6

    .line 190
    :cond_1
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v6

    .line 196
    .local v0, "displayFrameWidth":I
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 199
    sget v6, Lcom/flyme/internal/R$dimen;->mz_popup_menu_window_padding_right:I

    .line 196
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 200
    .local v1, "paddingRight":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 202
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 205
    :cond_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, v5, v6

    .line 207
    .local v4, "right":I
    if-le v4, v0, :cond_3

    .line 208
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v6, v4, v0

    sub-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 211
    :cond_3
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_4

    .line 212
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 213
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 216
    :cond_4
    if-eqz p3, :cond_6

    .line 217
    aget v5, p5, v7

    add-int/2addr v5, p4

    .line 218
    iget-object v6, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getPopupHeight()I

    move-result v6

    .line 217
    sub-int v2, v5, v6

    .line 219
    .local v2, "popupTop":I
    if-gez v2, :cond_5

    .line 220
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v2

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 226
    .end local v2    # "popupTop":I
    :cond_5
    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/MzPopupWindowHelper;->adjustPopupWindowPositionfForMz(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Z)Landroid/view/WindowManager$LayoutParams;

    .line 228
    return v7

    .line 223
    :cond_6
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
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
    .line 61
    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    if-nez v4, :cond_0

    .line 62
    return-object p2

    .line 64
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 66
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 69
    :cond_1
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 70
    sget v5, Lcom/flyme/internal/R$dimen;->mz_preference_list_popup_padding_right:I

    .line 69
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 72
    .local v1, "padding":I
    iget v4, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 131
    :goto_0
    return-object p2

    .line 75
    :pswitch_0
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 76
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 75
    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_2
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 83
    :pswitch_1
    iget v4, p5, Landroid/graphics/Rect;->right:I

    iget v5, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 84
    .local v3, "screenCenterX":I
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 86
    .local v0, "anchorCenterX":I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_2
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    add-int/lit8 v4, v0, -0x1

    if-gt v4, v3, :cond_4

    .line 90
    add-int/lit8 v4, v0, 0x1

    if-gt v3, v4, :cond_4

    .line 91
    iget-object v4, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 86
    :cond_3
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 92
    :cond_4
    add-int/lit8 v4, v0, -0x1

    if-le v4, v3, :cond_5

    .line 94
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, 0x800005

    or-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 96
    iget v4, p5, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    aget v5, p7, v5

    sub-int/2addr v4, v5

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 96
    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    .line 97
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 96
    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 100
    :cond_5
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 105
    .end local v0    # "anchorCenterX":I
    .end local v3    # "screenCenterX":I
    :pswitch_2
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 106
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0

    .line 111
    :pswitch_3
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, -0x800004

    and-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v5, 0x800005

    or-int/2addr v4, v5

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 113
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    neg-int v4, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 116
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_6

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_3
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_6
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 121
    :pswitch_4
    const/4 v4, 0x0

    aget v4, p7, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 122
    iget-object v5, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    .line 121
    sub-int/2addr v4, v5

    .line 122
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 121
    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 124
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p6, :cond_7

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    :goto_4
    add-int/2addr v4, p4

    sub-int v4, v5, v4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_7
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 317
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 321
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 323
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 329
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v3, :cond_1

    .line 330
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_3

    .line 333
    :cond_1
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 334
    const/4 v3, 0x1

    return v3

    .line 318
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    return v5

    .line 331
    .restart local v0    # "rect":Landroid/graphics/Rect;
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    .line 332
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 331
    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 337
    :cond_4
    return v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 341
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 345
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 347
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 348
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 353
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v3, :cond_1

    .line 354
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p2, v3

    if-lt v1, v3, :cond_3

    .line 357
    :cond_1
    iget-object v3, p0, Landroid/widget/MzPopupWindowHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 358
    const/4 v3, 0x1

    return v3

    .line 342
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    return v4

    .line 355
    .restart local v0    # "rect":Landroid/graphics/Rect;
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    .line 356
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 355
    sub-int v3, p3, v3

    if-ge v2, v3, :cond_1

    .line 361
    :cond_4
    return v4
.end method

.method public setInputMethodMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 367
    iput p1, p0, Landroid/widget/MzPopupWindowHelper;->mInputMethodMode:I

    .line 368
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 369
    const/4 p1, 0x2

    .line 371
    :cond_0
    return p1
.end method

.method public setLayoutMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 52
    iput p1, p0, Landroid/widget/MzPopupWindowHelper;->mLayoutMode:I

    .line 51
    return-void
.end method

.method public setMzClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Landroid/widget/MzPopupWindowHelper;->mMzClipToScreen:Z

    .line 180
    return-void
.end method
