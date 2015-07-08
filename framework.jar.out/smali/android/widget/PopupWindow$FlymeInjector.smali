.class Landroid/widget/PopupWindow$FlymeInjector;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeDisplayFrameBottom(Landroid/widget/PopupWindow;Landroid/view/View;ZLandroid/graphics/Rect;)I
    .locals 3
    .param p0, "pw"    # Landroid/widget/PopupWindow;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "ignoreBottomDecorations"    # Z
    .param p3, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 1976
    iget-object v0, p0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/MzPopupWindowHelper;->computeDisplayFrameBottom(Landroid/view/View;Ljava/lang/Boolean;I)I

    move-result v0

    return v0
.end method

.method static initExtFlymeFields(Landroid/widget/PopupWindow;)V
    .locals 2
    .param p0, "pw"    # Landroid/widget/PopupWindow;

    .prologue
    .line 1960
    new-instance v0, Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/MzPopupWindowHelper;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    .line 1961
    return-void
.end method

.method static isAnchorHasParent(Landroid/widget/PopupWindow;)Z
    .locals 2
    .param p0, "pw"    # Landroid/widget/PopupWindow;

    .prologue
    .line 1955
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->mzGetFieldAnchor()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->mzGetFieldAnchor()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 1956
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1955
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1956
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static mzTrue()Z
    .locals 1

    .prologue
    .line 1972
    const/4 v0, 0x1

    return v0
.end method

.method static setInputMethodMode(Landroid/widget/PopupWindow;I)I
    .locals 1
    .param p0, "pw"    # Landroid/widget/PopupWindow;
    .param p1, "mode"    # I

    .prologue
    .line 1964
    iget-object v0, p0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {v0, p1}, Landroid/widget/MzPopupWindowHelper;->setInputMethodMode(I)I

    move-result v0

    return v0
.end method

.method static unChangeNavigationBar(Landroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "pw"    # Landroid/widget/PopupWindow;
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1968
    iget-object v0, p0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {v0, p1}, Landroid/widget/MzPopupWindowHelper;->unChangeNavigationBar(Landroid/view/WindowManager$LayoutParams;)V

    .line 1969
    return-void
.end method
