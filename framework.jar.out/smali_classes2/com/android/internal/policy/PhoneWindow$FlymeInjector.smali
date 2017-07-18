.class final Lcom/android/internal/policy/PhoneWindow$FlymeInjector;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flymeDispatchKeyEvent(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p0, "decorView"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 5182
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 5183
    .local v0, "isDown":Z
    :goto_0
    if-nez v0, :cond_1

    .line 5184
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_1

    .line 5185
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5186
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchStatusBarTap()Z

    .line 5187
    const/4 v1, 0x1

    return v1

    .line 5182
    .end local v0    # "isDown":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isDown":Z
    goto :goto_0

    .line 5191
    :cond_1
    return v3
.end method

.method static flymeDrawStatusBarBackground(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 5195
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5196
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->drawStatusBarBackground(Landroid/graphics/Canvas;)V

    .line 5194
    :cond_0
    return-void
.end method

.method static flymeGetDisplayMetricsHeight(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow$ColorViewState;Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 4
    .param p0, "decorView"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;
    .param p2, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;
    .param p3, "height"    # I

    .prologue
    .line 5215
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->flymeGetFieldStatusColorViewState()Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5216
    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFlymeStableInsetTop:I

    .line 5217
    :cond_0
    if-lez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p3

    add-int/lit8 p3, v0, -0x1

    .line 5220
    :cond_1
    :goto_0
    return p3

    .line 5217
    :cond_2
    const/4 p3, 0x0

    goto :goto_0
.end method

.method static flymeOnStatusBarColorChange(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 1
    .param p0, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "color"    # I

    .prologue
    .line 5201
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5202
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onStatusBarColorChange(I)I

    move-result v0

    return v0

    .line 5204
    :cond_0
    return p1
.end method

.method static flymeSuperDispatchKeyEvent(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "decorView"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5171
    .local v0, "action":I
    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5178
    :cond_0
    return v4

    .line 5172
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v1

    .line 5173
    .local v1, "listener":Landroid/view/ActionMode$BackPressedListener;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/view/ActionMode$BackPressedListener;->onBackPressed()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    .line 5174
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 5176
    :cond_2
    return v3

    :cond_3
    move v2, v3

    .line 5173
    goto :goto_0
.end method

.method static setFlymeStableInsetTop(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;)V
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 5209
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFlymeStableInsetTop:I

    .line 5207
    return-void
.end method
