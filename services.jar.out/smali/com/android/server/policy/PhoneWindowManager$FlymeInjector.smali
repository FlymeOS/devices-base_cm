.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;,
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;
    }
.end annotation


# static fields
.field private static mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAddPermission(Landroid/view/WindowManager$LayoutParams;[ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "outAppOp"    # [I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 7189
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7190
    .local v0, "type":I
    const/16 v1, 0x7fb

    if-eq v0, v1, :cond_0

    .line 7191
    const/16 v1, 0x7fa

    if-ne v0, v1, :cond_1

    .line 7192
    :cond_0
    const-string/jumbo p2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 7193
    const/16 v1, 0x18

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 7196
    :cond_1
    return-object p2
.end method

.method static checkShowToOwnerOnly(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 7212
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static getForceHideWallpaperExitAnimation(Lcom/android/server/policy/PhoneWindowManager;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7294
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyme/internal/R$anim;->mz_lock_screen_wallpaper_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static getManifestPermission(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 7200
    const/4 v0, 0x0

    .line 7201
    .local v0, "permission":Ljava/lang/String;
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7202
    .local v1, "type":I
    const/16 v2, 0x7fc

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7e0

    if-ne v1, v2, :cond_2

    .line 7203
    :cond_0
    const-string/jumbo v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 7208
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 7204
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x7fa

    if-ne v1, v2, :cond_1

    .line 7205
    const-string/jumbo v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .local v0, "permission":Ljava/lang/String;
    goto :goto_0
.end method

.method static getSlideAnimation(Lcom/android/server/policy/PhoneWindowManager;)Landroid/view/animation/AnimationSet;
    .locals 7
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const/4 v6, 0x0

    .line 7279
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/flyme/internal/R$anim;->mz_lock_screen_behind_enter:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 7280
    .local v2, "set":Landroid/view/animation/AnimationSet;
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    if-nez v3, :cond_0

    .line 7281
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e0f5c29    # 0.14f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v3, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    .line 7283
    :cond_0
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 7284
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 7285
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->mLockScreenBehindEnterInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7284
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7288
    :cond_1
    return-object v2
.end method

.method static getStatusBarAnimation(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 6
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 7252
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 7253
    .local v0, "isKeyguard":Z
    :goto_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 7255
    :cond_0
    if-eqz v0, :cond_2

    sget v1, Lcom/flyme/internal/R$anim;->mz_keyguard_exit:I

    :goto_1
    return v1

    .line 7252
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    .line 7255
    :cond_2
    sget v1, Lcom/flyme/internal/R$anim;->dock_top_exit:I

    goto :goto_1

    .line 7256
    :cond_3
    if-eq p2, v5, :cond_4

    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 7257
    :cond_4
    if-eqz v0, :cond_5

    :goto_2
    return v1

    :cond_5
    sget v1, Lcom/flyme/internal/R$anim;->dock_top_enter:I

    goto :goto_2

    .line 7261
    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_7

    .line 7262
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7263
    const v1, 0x10a0011

    return v1

    .line 7265
    :cond_7
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e7

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v2, :cond_8

    .line 7266
    if-ne p2, v5, :cond_8

    .line 7271
    return v1

    .line 7274
    :cond_8
    return v4
.end method

.method static handleLongPressOnHeadSetIfNeeded(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7310
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "headset_middle_key_wakeup"

    .line 7311
    const/4 v4, -0x3

    .line 7310
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 7312
    .local v1, "startVoiceAssistant":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7313
    .local v0, "keyCode":I
    if-ne v1, v6, :cond_0

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymePw:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/policy/MzPhoneWindowManager;->handleLongPressOnHeadSetIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7316
    :cond_0
    return v5

    .line 7314
    :cond_1
    return v6
.end method

.method static hideBootMessages(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7183
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 7184
    .local v0, "hideFlymeBootMessage":Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeHideBootMessage;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7185
    const/4 v1, 0x1

    return v1
.end method

.method static initFlymeExtraFields(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 7168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 7169
    .local v1, "statusbarEventFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "meizu.intent.action.REQUEST_TRANSIENT_STATUSBAR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7170
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 7171
    .local v0, "statusBarEventReceiver":Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarEventReceiver;
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7173
    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MzPhoneWindowManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymePw:Lcom/android/server/policy/MzPhoneWindowManager;

    .line 7166
    return-void
.end method

.method static interceptFlymeKeyBeforeQueueing(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)I
    .locals 6
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I

    .prologue
    .line 7322
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "headset_middle_key_wakeup"

    const/4 v4, 0x0

    .line 7323
    const/4 v5, -0x3

    .line 7322
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 7324
    .local v1, "startVoiceAssistant":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7325
    .local v0, "keyCode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7328
    :cond_0
    :goto_0
    return p2

    .line 7326
    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method static selectStatusBarAnimation(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v1, 0x1

    .line 7242
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_2

    .line 7243
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 7245
    :cond_0
    return v1

    .line 7244
    :cond_1
    if-eq p2, v1, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 7248
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static setFlymeStatusBarTheme(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 12
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 7333
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7334
    .local v7, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    invoke-static {v7, v9}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v9, v9

    and-int/2addr v8, v9

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v9, v9

    and-int v5, v8, v9

    .line 7335
    .local v5, "tmpVisibility":I
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v8, :cond_0

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v8, v9, :cond_0

    .line 7336
    const/4 v8, 0x7

    invoke-static {v7, v8}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v8

    not-int v8, v8

    and-int/2addr v5, v8

    .line 7339
    :cond_0
    and-int/lit16 v8, v5, 0x2000

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    .line 7340
    .local v2, "lightStatusBar":Z
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/policy/PhoneWindowManager;->flymeInvokeMethodUpdateLightStatusBarLw(I)I

    move-result v5

    .line 7342
    if-nez v2, :cond_5

    and-int/lit16 v8, v5, 0x2000

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    .line 7344
    .local v0, "change":Z
    :goto_2
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {p0, v7, v8, v5}, Lcom/android/server/policy/PhoneWindowManager;->flymeInvokeMethodUpdateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v6

    .line 7345
    .local v6, "visibility":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v1, v6, v8

    .line 7346
    .local v1, "diff":I
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    .line 7348
    .local v3, "needsMenu":Z
    and-int/lit16 v8, v6, 0x2000

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    .line 7349
    :goto_3
    if-eqz v0, :cond_7

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    .line 7350
    .local v4, "statusBarColor":I
    :goto_4
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    if-ne v4, v8, :cond_1

    if-eqz v1, :cond_8

    .line 7351
    :cond_1
    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/server/policy/PhoneWindowManager;->shouldWindowAffectDarkStatusBarIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 7352
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    .line 7353
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastLightStatusBar:Z

    .line 7354
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastLightStatusBar:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    if-eqz v8, :cond_9

    .line 7355
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastStatusBarColor:I

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarColorTheme;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7332
    :cond_2
    :goto_6
    return-void

    .line 7333
    .end local v0    # "change":Z
    .end local v1    # "diff":I
    .end local v2    # "lightStatusBar":Z
    .end local v3    # "needsMenu":Z
    .end local v4    # "statusBarColor":I
    .end local v5    # "tmpVisibility":I
    .end local v6    # "visibility":I
    .end local v7    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v7    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 7339
    .restart local v5    # "tmpVisibility":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "lightStatusBar":Z
    goto :goto_1

    .line 7342
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "change":Z
    goto :goto_2

    .line 7348
    .restart local v1    # "diff":I
    .restart local v3    # "needsMenu":Z
    .restart local v6    # "visibility":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 7349
    :cond_7
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .restart local v4    # "statusBarColor":I
    goto :goto_4

    .line 7350
    :cond_8
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v8, v3, :cond_1

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v9

    if-eq v8, v9, :cond_2

    goto :goto_5

    .line 7357
    :cond_9
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeLastLightStatusBar:Z

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;-><init>(Lcom/android/server/policy/PhoneWindowManager;ZZ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method static setHideLockScreen(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 7234
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 7235
    .local v0, "fl":I
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 7236
    .local v1, "showWhenLocked":Z
    :goto_0
    if-nez v1, :cond_0

    .line 7237
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 7233
    :cond_0
    return-void

    .line 7235
    .end local v1    # "showWhenLocked":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "showWhenLocked":Z
    goto :goto_0
.end method

.method static setRectBottom(Lcom/android/server/policy/PhoneWindowManager;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 7230
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7229
    return-void
.end method

.method static showBootMessage(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 7177
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    .line 7178
    .local v0, "showFlymeBootMessage":Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7179
    const/4 v1, 0x1

    return v1
.end method

.method static showBootMessage(Lcom/android/server/policy/PhoneWindowManager;II)Z
    .locals 7
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "curr"    # I
    .param p2, "total"    # I

    .prologue
    int-to-double v0, p1

    int-to-double v2, p2

    div-double v4, v0, v2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    double-to-int v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/flyme/internal/R$string;->dexopt_apps_apk_percent:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "flymeTrain"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "processTrain"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->showBootMessage(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3
.end method

.method static showFlymeGlobalActions(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 4
    .param p0, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7298
    const-string/jumbo v0, "globalactions"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 7299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->getInstance(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/MzGlobalActions;->showGlobalActionsDialog()V

    .line 7300
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7303
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 7305
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static windowTypeToLayerLw(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 7217
    const/16 v0, 0x7fb

    if-ne p0, v0, :cond_0

    .line 7218
    const/4 v0, 0x3

    return v0

    .line 7221
    :cond_0
    const/16 v0, 0x7fa

    if-ne p0, v0, :cond_1

    .line 7222
    const/16 v0, 0xe

    return v0

    .line 7226
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
