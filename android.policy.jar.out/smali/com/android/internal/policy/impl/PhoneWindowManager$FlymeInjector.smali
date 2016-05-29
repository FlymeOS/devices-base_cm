.class final Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;
    }
.end annotation


# static fields
.field private static mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6838
    return-void
.end method

.method static checkAddPermission(Landroid/view/WindowManager$LayoutParams;[ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "outAppOp"    # [I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 6575
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6576
    .local v0, "type":I
    const/16 v1, 0x7fb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7fa

    if-ne v0, v1, :cond_1

    .line 6578
    :cond_0
    const-string p2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 6579
    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, p1, v1

    .line 6582
    :cond_1
    return-object p2
.end method

.method static checkShowToOwnerOnly(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 6598
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getForceHideWallpaperExitAnimation(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 6680
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyme/internal/R$anim;->mz_lock_screen_wallpaper_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static getManifestPermission(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 6586
    const/4 v0, 0x0

    .line 6587
    .local v0, "permission":Ljava/lang/String;
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6588
    .local v1, "type":I
    const/16 v2, 0x7f2

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7e0

    if-ne v1, v2, :cond_2

    .line 6589
    :cond_0
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 6594
    :cond_1
    :goto_0
    return-object v0

    .line 6590
    :cond_2
    const/16 v2, 0x7fa

    if-ne v1, v2, :cond_1

    .line 6591
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    goto :goto_0
.end method

.method static getSlideAnimation(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/animation/AnimationSet;
    .locals 7
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v6, 0x0

    .line 6665
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/flyme/internal/R$anim;->mz_lock_screen_behind_enter:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 6666
    .local v2, "set":Landroid/view/animation/AnimationSet;
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    if-nez v3, :cond_0

    .line 6667
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e0f5c29    # 0.14f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    .line 6669
    :cond_0
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 6670
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6671
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6670
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6674
    :cond_1
    return-object v2
.end method

.method static getStatusBarAnimation(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 6
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 6638
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v0, v3

    .line 6639
    .local v0, "isKeyguard":Z
    :goto_0
    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_4

    .line 6641
    :cond_0
    if-eqz v0, :cond_3

    sget v1, Lcom/flyme/internal/R$anim;->mz_keyguard_exit:I

    .line 6660
    :cond_1
    :goto_1
    return v1

    .end local v0    # "isKeyguard":Z
    :cond_2
    move v0, v2

    .line 6638
    goto :goto_0

    .line 6641
    .restart local v0    # "isKeyguard":Z
    :cond_3
    sget v1, Lcom/flyme/internal/R$anim;->dock_top_exit:I

    goto :goto_1

    .line 6642
    :cond_4
    if-eq p2, v3, :cond_5

    const/4 v4, 0x3

    if-ne p2, v4, :cond_6

    .line 6643
    :cond_5
    if-nez v0, :cond_1

    sget v1, Lcom/flyme/internal/R$anim;->dock_top_enter:I

    goto :goto_1

    .line 6647
    :cond_6
    const/4 v4, 0x5

    if-ne p2, v4, :cond_7

    .line 6648
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6649
    const v1, 0x10a0011

    goto :goto_1

    .line 6651
    :cond_7
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e7

    if-ne v4, v5, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v4, :cond_8

    if-eq p2, v3, :cond_1

    :cond_8
    move v1, v2

    .line 6660
    goto :goto_1
.end method

.method static hideBootMessages(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 6569
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6570
    .local v0, "hideFlymeBootMessage":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6571
    const/4 v1, 0x1

    return v1
.end method

.method static initFlymeExtraFields(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6555
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 6556
    .local v1, "statusbarEventFilter":Landroid/content/IntentFilter;
    const-string v2, "meizu.intent.action.REQUEST_TRANSIENT_STATUSBAR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6557
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6558
    .local v0, "statusBarEventReceiver":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6560
    return-void
.end method

.method static selectStatusBarAnimation(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v0, 0x1

    .line 6628
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_1

    .line 6629
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 6634
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setHideLockScreen(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x0

    .line 6620
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 6621
    .local v0, "fl":I
    const/high16 v3, 0x80000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 6622
    .local v1, "showWhenLocked":Z
    :goto_0
    if-nez v1, :cond_0

    .line 6623
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 6625
    :cond_0
    return-void

    .end local v1    # "showWhenLocked":Z
    :cond_1
    move v1, v2

    .line 6621
    goto :goto_0
.end method

.method static setRectBottom(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 6616
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6617
    return-void
.end method

.method static showBootMessage(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 6563
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    .line 6564
    .local v0, "showFlymeBootMessage":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6565
    const/4 v1, 0x1

    return v1
.end method

.method static showFlymeGlobalActions(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 4
    .param p0, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 6684
    const-string v0, "globalactions"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 6685
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzGlobalActions;->getInstance(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/internal/policy/impl/MzGlobalActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MzGlobalActions;->showGlobalActionsDialog()V

    .line 6686
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6689
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6691
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static windowTypeToLayerLw(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6603
    const/16 v0, 0x7fb

    if-ne p0, v0, :cond_0

    .line 6604
    const/4 v0, 0x3

    .line 6612
    :goto_0
    return v0

    .line 6607
    :cond_0
    const/16 v0, 0x7fa

    if-ne p0, v0, :cond_1

    .line 6608
    const/16 v0, 0xe

    goto :goto_0

    .line 6612
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
