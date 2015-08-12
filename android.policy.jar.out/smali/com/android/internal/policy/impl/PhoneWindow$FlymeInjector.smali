.class Lcom/android/internal/policy/impl/PhoneWindow$FlymeInjector;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mzDispatchKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p0, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4816
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4817
    .local v0, "action":I
    if-nez v0, :cond_0

    move v1, v2

    .line 4819
    .local v1, "isDown":Z
    :goto_0
    if-nez v1, :cond_1

    .line 4820
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x7a

    if-ne v4, v5, :cond_1

    .line 4821
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4822
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchStatusBarTap()Z

    .line 4827
    :goto_1
    return v2

    .end local v1    # "isDown":Z
    :cond_0
    move v1, v3

    .line 4817
    goto :goto_0

    .restart local v1    # "isDown":Z
    :cond_1
    move v2, v3

    .line 4827
    goto :goto_1
.end method

.method static mzDoStatusBarDrag(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/DragEvent;)Z
    .locals 9
    .param p0, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4783
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;

    move-result-object v7

    .line 4784
    .local v7, "listener":Landroid/view/ActionMode$OnActionItemDragListener;
    if-eqz v7, :cond_0

    .line 4786
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v2, v8

    .line 4800
    :cond_0
    return v2

    .line 4788
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->notifyStatusBarNfcShareStateChanged(Z)V

    goto :goto_0

    .line 4791
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->notifyStatusBarNfcShareStateChanged(Z)V

    goto :goto_0

    .line 4794
    :pswitch_3
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    const-string v6, "NFC_SHARE"

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 4795
    .local v0, "menuItem":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-interface {v7, p1, v0}, Landroid/view/ActionMode$OnActionItemDragListener;->onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 4786
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static mzObtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 7
    .param p0, "action"    # I
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 4777
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v6

    move v0, p0

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method static mzSetDefaultIcon(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 4838
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorContentParent()Lcom/android/internal/widget/DecorContentParent;

    move-result-object v0

    .line 4839
    .local v0, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4840
    check-cast v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setDefaultIcon()V

    .line 4844
    :goto_0
    return-void

    .line 4842
    .restart local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static mzSuperDispatchKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 4805
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4806
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v0

    .line 4807
    .local v0, "listener":Landroid/view/ActionMode$BackPressedListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ActionMode$BackPressedListener;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4812
    .end local v0    # "listener":Landroid/view/ActionMode$BackPressedListener;
    :cond_0
    :goto_0
    return v1

    .line 4810
    .restart local v0    # "listener":Landroid/view/ActionMode$BackPressedListener;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static setWindowAttributesToActionbar(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 4831
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorContentParent()Lcom/android/internal/widget/DecorContentParent;

    move-result-object v0

    .line 4832
    .local v0, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4833
    check-cast v0, Lcom/android/internal/widget/MzActionBarOverlayLayout;

    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4835
    :cond_0
    return-void
.end method
