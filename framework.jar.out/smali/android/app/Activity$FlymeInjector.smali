.class final Landroid/app/Activity$FlymeInjector;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;
    }
.end annotation


# static fields
.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"

.field private static mStatusBarHeight:I

.field private static mTopShift:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6876
    return-void
.end method

.method private static apply(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "updateColor"    # Z
    .param p2, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    const/high16 v8, 0x4000000

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6480
    iget-object v6, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 6481
    iget-object v6, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    move v1, v4

    .line 6482
    .local v1, "fullcreen":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v6, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6569
    .end local v1    # "fullcreen":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v5

    .line 6481
    goto :goto_0

    .line 6486
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mz_status_bar_tint"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 6487
    .local v3, "statusBarTintEnabled":Z
    :goto_2
    invoke-static {p2}, Landroid/app/Activity$FlymeInjector;->isShowStatusBarColor(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    .line 6488
    .local v2, "showStatusBarColor":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_7

    move v6, v4

    :goto_3
    iput-boolean v6, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    .line 6489
    iget-boolean v6, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-nez v6, :cond_3

    .line 6490
    invoke-static {p2}, Landroid/app/Activity$FlymeInjector;->isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    .line 6491
    iget-boolean v6, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    if-nez v6, :cond_3

    .line 6492
    iget-object v6, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getStatusBarColor()I

    move-result v6

    iput v6, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    .line 6495
    :cond_3
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    if-ne v6, v3, :cond_4

    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeShowStatusBarColor:Z

    if-eq v2, v6, :cond_10

    .line 6496
    :cond_4
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    if-eqz v6, :cond_9

    .line 6497
    iput-boolean v2, p0, Landroid/app/Activity;->mFlymeShowStatusBarColor:Z

    .line 6498
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    if-eq v6, v3, :cond_0

    .line 6499
    iput-boolean v3, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    .line 6500
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    if-eqz v6, :cond_8

    .line 6501
    iget-object v4, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity;->mIsFlymeInternalApp:Z

    if-nez v4, :cond_0

    .line 6502
    :cond_5
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;)V

    goto :goto_1

    .end local v2    # "showStatusBarColor":Z
    .end local v3    # "statusBarTintEnabled":Z
    :cond_6
    move v3, v5

    .line 6486
    goto :goto_2

    .restart local v2    # "showStatusBarColor":Z
    .restart local v3    # "statusBarTintEnabled":Z
    :cond_7
    move v6, v5

    .line 6488
    goto :goto_3

    .line 6505
    :cond_8
    iget-boolean v6, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroid/app/Activity;->mIsFlymeInternalApp:Z

    if-nez v6, :cond_0

    .line 6509
    iput-boolean v4, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6510
    iget-object v4, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    iget v6, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6511
    iget v4, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-static {v4}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v4

    invoke-static {p0, v4}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 6512
    iput-boolean v5, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    goto :goto_1

    .line 6517
    :cond_9
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeShowStatusBarColor:Z

    if-eq v6, v2, :cond_a

    .line 6518
    iput-boolean v2, p0, Landroid/app/Activity;->mFlymeShowStatusBarColor:Z

    .line 6519
    iput-boolean v3, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    .line 6520
    if-eqz v3, :cond_a

    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeKeepAppStatusBar:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeShowStatusBarColor:Z

    if-eqz v6, :cond_a

    .line 6521
    invoke-static {p0, v4, p2, p3}, Landroid/app/Activity$FlymeInjector;->setDrawsSystemBarBackgrounds(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6522
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 6526
    :cond_a
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    if-eq v6, v3, :cond_0

    .line 6527
    iput-boolean v3, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    .line 6528
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    if-eqz v6, :cond_b

    .line 6529
    iget-boolean v5, p0, Landroid/app/Activity;->mFlymeShowStatusBarColor:Z

    if-eqz v5, :cond_0

    .line 6530
    invoke-static {p0, v4, p2, p3}, Landroid/app/Activity$FlymeInjector;->setDrawsSystemBarBackgrounds(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6531
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 6534
    :cond_b
    iget-boolean v6, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-eqz v6, :cond_f

    .line 6535
    iget v6, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    iget v7, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-static {v6, v7}, Landroid/app/Activity$FlymeInjector;->isSimilarColor(II)Z

    move-result v6

    if-nez v6, :cond_e

    .line 6533
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_d

    :goto_4
    iput-boolean v4, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    .line 6534
    iget-boolean v4, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    if-nez v4, :cond_c

    .line 6535
    invoke-static {p0, v5, p2, p3}, Landroid/app/Activity$FlymeInjector;->setDrawsSystemBarBackgrounds(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6536
    invoke-static {p0, v5}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 6543
    :cond_c
    :goto_5
    iget-boolean v4, p0, Landroid/app/Activity;->mIsFlymeFloating:Z

    if-eqz v4, :cond_0

    .line 6544
    iget-object v4, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6545
    .local v0, "dec":Landroid/view/View;
    iget-object v4, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Landroid/app/Activity;->mFlymeDecorViewPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .end local v0    # "dec":Landroid/view/View;
    :cond_d
    move v4, v5

    .line 6533
    goto :goto_4

    .line 6539
    :cond_e
    iput-boolean v4, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6540
    iget-object v4, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    iget v6, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6541
    iput-boolean v5, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    goto :goto_5

    .line 6548
    :cond_f
    iget-boolean v6, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroid/app/Activity;->mIsFlymeInternalApp:Z

    if-nez v6, :cond_0

    .line 6549
    iput-boolean v4, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6550
    iget-object v4, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    iget v6, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6551
    iput-boolean v5, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6552
    iget v4, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-static {v4}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v4

    invoke-static {p0, v4}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    goto/16 :goto_1

    .line 6559
    :cond_10
    iget-boolean v4, p0, Landroid/app/Activity;->mIsFlymeInternalApp:Z

    if-eqz v4, :cond_11

    .line 6560
    iget-object v4, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 6564
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 6564
    :cond_11
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-nez v4, :cond_12

    iget-boolean v4, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-eqz v4, :cond_0

    .line 6565
    :cond_12
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method

.method static checkAccessControl(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6846
    const/4 v1, 0x0

    .line 6847
    .local v1, "jumpAccess":Z
    const-string v3, "com.meizu.flyme.launcher"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6848
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6849
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6850
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v3, :cond_0

    .line 6851
    const-string v3, "access_control"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/security/AccessControlManager;

    iput-object v3, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 6853
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mz_app_lock_control"

    const/4 v5, 0x0

    const/4 v6, -0x3

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6855
    .local v0, "appAccessControl":I
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v3, v2}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6856
    const/4 v1, 0x1

    .line 6860
    .end local v0    # "appAccessControl":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method static drawStatusBarBackground(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 6822
    iget-boolean v0, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    if-nez v0, :cond_0

    .line 6823
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFlymeDecoViewDrawFirst:Z

    .line 6824
    iget-boolean v0, p0, Landroid/app/Activity;->mFlymeDecoViewDrawFlag:Z

    if-eqz v0, :cond_0

    .line 6825
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 6826
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 6829
    :cond_0
    return-void
.end method

.method private static getAutomaticColor(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 6746
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 6747
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p4

    int-to-float v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6748
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6749
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6750
    iput-boolean v2, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6751
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    new-array v1, v0, [I

    .line 6752
    .local v1, "pixels":[I
    array-length v3, v1

    array-length v6, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6753
    invoke-static {v1}, Landroid/app/Activity$FlymeInjector;->getMainColorFromBitmap([I)I

    move-result v0

    return v0
.end method

.method private static getAutomaticColor(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Integer;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v11, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6757
    if-eqz p1, :cond_4

    .line 6759
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_4

    .line 6760
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v9, 0x1

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6761
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6762
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .line 6763
    .local v5, "isVerify":Z
    const/4 v4, 0x0

    .line 6764
    .local v4, "color":I
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 6765
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 6766
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6767
    .local v3, "child":Landroid/view/View;
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 6768
    iget v6, p0, Landroid/app/Activity;->mFlymeDensity:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {p0, v3, v2, v1, v6}, Landroid/app/Activity$FlymeInjector;->getAutomaticColor(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 6769
    iget-boolean v6, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    if-eqz v6, :cond_3

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-le v6, v11, :cond_2

    move v5, v7

    .line 6773
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 6774
    sget v6, Landroid/app/Activity$FlymeInjector;->mTopShift:I

    invoke-static {p0, p1, v2, v1, v6}, Landroid/app/Activity$FlymeInjector;->getAutomaticColor(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 6776
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6777
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-le v6, v11, :cond_4

    .line 6778
    const/16 v6, 0xff

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6784
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "color":I
    .end local v5    # "isVerify":Z
    :goto_1
    return-object v6

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "color":I
    .restart local v5    # "isVerify":Z
    :cond_2
    move v5, v8

    .line 6769
    goto :goto_0

    :cond_3
    invoke-static {p0, v4}, Landroid/app/Activity$FlymeInjector;->isVerifyColorEx(Landroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 6781
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "color":I
    .end local v5    # "isVerify":Z
    :catch_0
    move-exception v6

    .line 6784
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static getMainColorFromBitmap([I)I
    .locals 20
    .param p0, "pixels"    # [I

    .prologue
    .line 6788
    const/4 v11, 0x0

    .line 6789
    .local v11, "mainColor":I
    if-eqz p0, :cond_3

    move-object/from16 v0, p0

    array-length v14, v0

    if-lez v14, :cond_3

    .line 6790
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 6791
    .local v5, "colors":Landroid/util/SparseIntArray;
    move-object/from16 v2, p0

    .local v2, "arr$":[I
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget v4, v2, v9

    .line 6792
    .local v4, "color":I
    const/4 v14, 0x0

    invoke-virtual {v5, v4, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 6793
    .local v6, "count":I
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v5, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 6791
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 6795
    .end local v4    # "color":I
    .end local v6    # "count":I
    :cond_0
    const/4 v12, 0x0

    .line 6796
    .local v12, "maxCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_2

    .line 6797
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    if-ge v12, v14, :cond_1

    .line 6798
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 6799
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 6796
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 6802
    :cond_2
    int-to-double v14, v12

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3fb999999999999aL    # 0.1

    mul-double v16, v16, v18

    cmpg-double v14, v14, v16

    if-gez v14, :cond_3

    .line 6803
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 6804
    .local v13, "r":I
    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 6805
    .local v7, "g":I
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 6806
    .local v3, "b":I
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    const/4 v15, 0x0

    add-int/lit8 v16, v13, -0x5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x0

    add-int/lit8 v17, v7, -0x5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v17, 0x0

    add-int/lit8 v18, v3, -0x5

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 6809
    .end local v2    # "arr$":[I
    .end local v3    # "b":I
    .end local v5    # "colors":Landroid/util/SparseIntArray;
    .end local v7    # "g":I
    .end local v8    # "i":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "maxCount":I
    .end local v13    # "r":I
    :cond_3
    return v11
.end method

.method static initFlymeExtraFields(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 6395
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    .line 6396
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/app/Activity;->mFlymeDensity:F

    .line 6397
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->updateStatusBarHeight(Landroid/app/Activity;)V

    .line 6398
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6399
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/app/Activity;->mIsFlymeInternalApp:Z

    .line 6400
    return-void

    .line 6399
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAppDrawsSystemBarBackgrounds(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 6584
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Activity$FlymeInjector;->isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private static isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p0, "winParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 6588
    const/high16 v0, -0x80000000

    .line 6589
    .local v0, "bits":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int v1, v2, v3

    .line 6590
    .local v1, "flags":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isBlackColor(I)Z
    .locals 3
    .param p0, "color"    # I

    .prologue
    const/16 v2, 0x32

    .line 6735
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDarkColor(I)Z
    .locals 5
    .param p0, "color"    # I

    .prologue
    const/16 v4, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6739
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    if-le v3, v4, :cond_0

    move v0, v1

    .line 6740
    .local v0, "isDark":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    if-le v3, v4, :cond_1

    move v0, v1

    .line 6741
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-le v3, v4, :cond_2

    move v0, v1

    .line 6742
    :goto_2
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-le v3, v4, :cond_3

    :goto_3
    return v1

    .end local v0    # "isDark":Z
    :cond_0
    move v0, v2

    .line 6739
    goto :goto_0

    .restart local v0    # "isDark":Z
    :cond_1
    move v0, v2

    .line 6740
    goto :goto_1

    :cond_2
    move v0, v2

    .line 6741
    goto :goto_2

    :cond_3
    move v1, v2

    .line 6742
    goto :goto_3
.end method

.method private static isShowStatusBarColor(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 6575
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v0, v1, v2

    .line 6576
    .local v0, "sysUiVisibility":I
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSimilarColor(II)Z
    .locals 11
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .prologue
    .line 6709
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_0

    const/4 v7, 0x1

    .line 6710
    .local v7, "similar":Z
    :goto_0
    if-eqz v7, :cond_8

    .line 6711
    invoke-static {p1}, Landroid/app/Activity$FlymeInjector;->isBlackColor(I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_1

    const/4 v7, 0x1

    .line 6712
    :goto_1
    if-nez v7, :cond_8

    .line 6713
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    sub-int v0, v9, v10

    .line 6714
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v10

    sub-int v6, v9, v10

    .line 6715
    .local v6, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v10

    sub-int v3, v9, v10

    .line 6716
    .local v3, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int v1, v9, v10

    .line 6717
    .local v1, "blue":I
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6718
    .local v5, "min":I
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6719
    .local v4, "max":I
    sub-int v2, v4, v5

    .line 6720
    .local v2, "diff":I
    if-nez v2, :cond_3

    .line 6721
    const/4 v9, -0x1

    if-ne p0, v9, :cond_2

    const/16 v2, 0x78

    .line 6725
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/16 v10, 0x64

    if-ge v9, v10, :cond_5

    const/16 v9, -0xa

    if-le v6, v9, :cond_5

    if-ge v6, v2, :cond_5

    const/4 v7, 0x1

    .line 6726
    :goto_3
    if-eqz v7, :cond_6

    const/16 v9, -0xa

    if-le v3, v9, :cond_6

    if-ge v3, v2, :cond_6

    const/4 v7, 0x1

    .line 6727
    :goto_4
    if-eqz v7, :cond_7

    const/16 v9, -0xa

    if-le v1, v9, :cond_7

    if-ge v1, v2, :cond_7

    const/4 v7, 0x1

    :goto_5
    move v8, v7

    .line 6731
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "diff":I
    .end local v3    # "green":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    .end local v6    # "red":I
    .end local v7    # "similar":Z
    .local v8, "similar":I
    :goto_6
    return v8

    .line 6709
    .end local v8    # "similar":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 6711
    .restart local v7    # "similar":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 6721
    .restart local v0    # "alpha":I
    .restart local v1    # "blue":I
    .restart local v2    # "diff":I
    .restart local v3    # "green":I
    .restart local v4    # "max":I
    .restart local v5    # "min":I
    .restart local v6    # "red":I
    :cond_2
    const/16 v2, 0x64

    goto :goto_2

    .line 6723
    :cond_3
    const/16 v9, 0x1e

    if-ge v2, v9, :cond_4

    const/16 v2, 0x64

    :goto_7
    goto :goto_2

    :cond_4
    const/16 v2, 0x46

    goto :goto_7

    .line 6725
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 6726
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 6727
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "diff":I
    .end local v3    # "green":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    .end local v6    # "red":I
    :cond_8
    move v8, v7

    .line 6731
    .restart local v8    # "similar":I
    goto :goto_6
.end method

.method private static isVerifyColor(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "color"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 6691
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6692
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 6694
    :cond_1
    return v0
.end method

.method private static isVerifyColorEx(Landroid/app/Activity;I)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .prologue
    const/16 v4, 0xff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6698
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 6699
    .local v0, "isVerify":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v3, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    if-eq v3, p1, :cond_2

    .line 6700
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    if-ge v3, v4, :cond_4

    move v0, v2

    .line 6701
    :goto_1
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-ge v3, v4, :cond_5

    :cond_0
    move v0, v2

    .line 6702
    :goto_2
    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    if-ge v3, v4, :cond_6

    :cond_1
    move v0, v2

    :goto_3
    move v1, v0

    .line 6705
    :cond_2
    return v1

    .end local v0    # "isVerify":Z
    :cond_3
    move v0, v1

    .line 6698
    goto :goto_0

    .restart local v0    # "isVerify":Z
    :cond_4
    move v0, v1

    .line 6700
    goto :goto_1

    :cond_5
    move v0, v1

    .line 6701
    goto :goto_2

    :cond_6
    move v0, v1

    .line 6702
    goto :goto_3
.end method

.method static onConfigurationChanged(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 6454
    iget-boolean v0, p0, Landroid/app/Activity;->mIsFlymeActivityFirstStart:Z

    if-nez v0, :cond_0

    .line 6455
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Landroid/app/Activity$FlymeInjector;->apply(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6457
    :cond_0
    return-void
.end method

.method private static onDrawDecorViewInner(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 6818
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;I)V

    .line 6819
    return-void
.end method

.method static onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .prologue
    .line 6813
    new-instance v0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;

    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;-><init>(Landroid/app/Activity;Landroid/view/Window;I)V

    .line 6814
    .local v0, "drawDecorViewInner":Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;
    int-to-long v2, p2

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6815
    return-void
.end method

.method static onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayDraw"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6617
    iput-boolean v3, p0, Landroid/app/Activity;->mFlymeDecoViewDrawFlag:Z

    .line 6618
    invoke-static {p0, p1}, Landroid/app/Activity$FlymeInjector;->getAutomaticColor(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    .line 6619
    .local v0, "color":Ljava/lang/Integer;
    invoke-static {v0}, Landroid/app/Activity$FlymeInjector;->isVerifyColor(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6620
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Landroid/app/Activity$FlymeInjector;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 6643
    :cond_0
    :goto_0
    return-void

    .line 6622
    :cond_1
    if-eqz p2, :cond_2

    .line 6623
    const/16 v1, 0x1f4

    invoke-static {p0, p1, v1}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0

    .line 6625
    :cond_2
    iget v1, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Activity$FlymeInjector;->isVerifyColor(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6626
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    .line 6627
    iget-boolean v1, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    if-nez v1, :cond_0

    .line 6628
    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-eqz v1, :cond_5

    .line 6629
    iget v1, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_4

    iget v1, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-static {v1}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {p0, v1}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 6630
    iput-boolean v2, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6631
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    iget v2, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6632
    iput-boolean v3, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    goto :goto_0

    :cond_3
    move v1, v3

    .line 6626
    goto :goto_1

    :cond_4
    move v1, v3

    .line 6629
    goto :goto_2

    .line 6634
    :cond_5
    invoke-static {p0, v3}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 6635
    iput-boolean v2, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6636
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6637
    iput-boolean v3, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    goto :goto_0
.end method

.method static onStart(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 6472
    iget-boolean v0, p0, Landroid/app/Activity;->mIsFlymeActivityFirstStart:Z

    if-eqz v0, :cond_0

    .line 6473
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    .line 6474
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsFlymeFloating:Z

    .line 6475
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/app/Activity;->mFlymeDecorViewPaddingTop:I

    .line 6476
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->isAppDrawsSystemBarBackgrounds(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    .line 6478
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Landroid/app/Activity$FlymeInjector;->apply(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6479
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsFlymeActivityFirstStart:Z

    .line 6480
    return-void
.end method

.method static onStatusBarColorChange(Landroid/app/Activity;I)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .prologue
    .line 6832
    iget-boolean v0, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 6833
    iput p1, p0, Landroid/app/Activity;->mFlymeAppSetStatusBarColor:I

    .line 6834
    iget v0, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Activity$FlymeInjector;->isVerifyColor(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Activity;->mFlymeStatusBarTintEnabled:Z

    if-eqz v0, :cond_1

    .line 6835
    iget v0, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    invoke-static {v0, p1}, Landroid/app/Activity$FlymeInjector;->isSimilarColor(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6836
    iget v0, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    invoke-static {v0}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 6837
    iget p1, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    .line 6842
    .end local p1    # "color":I
    :cond_0
    :goto_0
    return p1

    .line 6840
    .restart local p1    # "color":I
    :cond_1
    invoke-static {p1}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method static onWindowAttributesChanged(Landroid/app/Activity;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 6460
    iget-boolean v2, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/app/Activity;->mIsFlymeActivityFirstStart:Z

    if-nez v2, :cond_1

    .line 6461
    invoke-static {p0, v1, p1, v1}, Landroid/app/Activity$FlymeInjector;->apply(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6462
    iget-object v2, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    .line 6463
    iget-boolean v1, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->isAppDrawsSystemBarBackgrounds(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6464
    const/high16 v0, -0x80000000

    .line 6465
    .local v0, "bits":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6468
    .end local v0    # "bits":I
    :cond_1
    return-object p1
.end method

.method private static setDrawsSystemBarBackgrounds(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "on"    # Z
    .param p2, "winParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    .line 6594
    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_0

    .line 6595
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->isAppDrawsSystemBarBackgrounds(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    .line 6597
    :cond_0
    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-nez v1, :cond_2

    .line 6598
    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-eq v1, p1, :cond_2

    .line 6599
    iput-boolean p1, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    .line 6600
    const/high16 v0, -0x80000000

    .line 6601
    .local v0, "bits":I
    if-eqz p1, :cond_3

    .line 6602
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6606
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6607
    if-eqz p3, :cond_1

    .line 6608
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6610
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    invoke-static {v1}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 6611
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6614
    .end local v0    # "bits":I
    :cond_2
    return-void

    .line 6604
    .restart local v0    # "bits":I
    :cond_3
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    .line 6668
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Activity$FlymeInjector;->isVerifyColor(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6669
    iput p1, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    .line 6670
    iget-boolean v1, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    if-eqz v1, :cond_0

    .line 6671
    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->isAppDrawsSystemBarBackgrounds(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    .line 6672
    invoke-static {p0, p1}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;I)V

    .line 6674
    :cond_0
    iget-boolean v1, p0, Landroid/app/Activity;->mFlymeKeepAppStatusBar:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-eqz v1, :cond_4

    .line 6675
    :cond_1
    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeInternalApp:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-eqz v1, :cond_3

    .line 6676
    :cond_2
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {p0, v2, v1, v2}, Landroid/app/Activity$FlymeInjector;->setDrawsSystemBarBackgrounds(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6677
    iput-boolean v2, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6678
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    iget v2, p0, Landroid/app/Activity;->mFlymeStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6679
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mFlymeStatusBarColorLock:Z

    .line 6680
    iget-boolean v1, p0, Landroid/app/Activity;->mIsFlymeFloating:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/app/Activity;->mFlymeDecorViewPaddingTop:I

    if-nez v1, :cond_3

    .line 6681
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6682
    .local v0, "dec":Landroid/view/View;
    iget-object v1, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sget v3, Landroid/app/Activity$FlymeInjector;->mStatusBarHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 6685
    .end local v0    # "dec":Landroid/view/View;
    :cond_3
    invoke-static {p0, p1}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;I)V

    .line 6688
    :cond_4
    return-void
.end method

.method private static setStatusBarDarkIcon(Landroid/app/Activity;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6652
    iget-object v3, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6653
    iget-boolean v3, p0, Landroid/app/Activity;->mIsFlymeInternalApp:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/app/Activity;->mFlymeTranslucentStatus:Z

    if-eqz v3, :cond_2

    .line 6654
    :cond_0
    invoke-static {p1}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 6665
    :cond_1
    :goto_0
    return-void

    .line 6656
    :cond_2
    iget-boolean v3, p0, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/app/Activity;->mIsFlymeAppDrawStatusBar:Z

    if-eqz v3, :cond_1

    .line 6657
    :cond_3
    iget-object v3, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    move v0, v2

    .line 6658
    .local v0, "canSet":Z
    :goto_1
    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/app/Activity$FlymeInjector;->isAppDrawsSystemBarBackgrounds(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move v0, v2

    .line 6659
    :goto_2
    if-eqz v0, :cond_1

    .line 6660
    invoke-static {p1}, Landroid/app/Activity$FlymeInjector;->isDarkColor(I)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/app/Activity$FlymeInjector;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    goto :goto_0

    .end local v0    # "canSet":Z
    :cond_5
    move v0, v1

    .line 6657
    goto :goto_1

    .restart local v0    # "canSet":Z
    :cond_6
    move v0, v1

    .line 6658
    goto :goto_2
.end method

.method private static setStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dark"    # Z

    .prologue
    .line 6646
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6647
    iget-object v0, p0, Landroid/app/Activity;->mFlymeWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarDarkIcon(Z)V

    .line 6649
    :cond_0
    return-void
.end method

.method static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    .line 6864
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6865
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6866
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "android"

    const-string v6, "com.meizu.app.AccessApplication"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6867
    .local v1, "newComponentName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6868
    .local v2, "newIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 6869
    .local v4, "srcIntentFlag":I
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v5, v4}, Landroid/content/IntentExt;->setAccessSrcFlags(I)V

    .line 6870
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6871
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/high16 v6, 0x40000

    invoke-virtual {v5, v6}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 6872
    const-string v5, "accesspkg"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6873
    const-string v5, "accesscls"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6874
    if-eqz p2, :cond_0

    .line 6875
    invoke-virtual {p0, v2, v7, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6881
    :goto_0
    return-void

    .line 6879
    :cond_0
    invoke-virtual {p0, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static startFlymeAccessControlManager(Landroid/app/Activity;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 6416
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mz_app_lock_control"

    const/4 v9, -0x3

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6418
    .local v0, "appAccessControl":I
    if-nez v0, :cond_1

    .line 6450
    :cond_0
    :goto_0
    return-void

    .line 6424
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 6425
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 6427
    :try_start_0
    iget-object v7, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v7}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v1

    .line 6428
    .local v1, "flag":I
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    move v4, v3

    .line 6429
    .local v4, "isLockView":Z
    :goto_1
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 6430
    .local v3, "isFastStarting":Z
    :goto_2
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v6, v6, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v6, :cond_0

    if-eqz v4, :cond_2

    if-nez v3, :cond_0

    .line 6432
    :cond_2
    iget-object v6, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v6, :cond_3

    .line 6433
    const-string v6, "access_control"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmeizu/security/AccessControlManager;

    iput-object v6, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 6435
    :cond_3
    iget-object v6, p0, Landroid/app/Activity;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v7, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6436
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.content.pm.CONFIRM_ACCESS_APPCATONS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6437
    .local v5, "mAccessApp":Landroid/content/Intent;
    iget-object v6, v5, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v7, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 6438
    iget-object v7, v5, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/IntentExt;->setAccessPackageLabel(Ljava/lang/String;)V

    .line 6441
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6442
    const v6, 0x8000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6443
    iget-object v6, v5, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 6444
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6447
    .end local v1    # "flag":I
    .end local v3    # "isFastStarting":Z
    .end local v4    # "isLockView":Z
    .end local v5    # "mAccessApp":Landroid/content/Intent;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .restart local v1    # "flag":I
    :cond_4
    move v4, v6

    .line 6428
    goto :goto_1

    .restart local v4    # "isLockView":Z
    :cond_5
    move v3, v6

    .line 6429
    goto :goto_2

    .line 6438
    .restart local v3    # "isFastStarting":Z
    .restart local v5    # "mAccessApp":Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_3
.end method

.method private static updateStatusBarHeight(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 6403
    const-class v3, Landroid/app/Activity$FlymeInjector;

    monitor-enter v3

    .line 6404
    :try_start_0
    sget v2, Landroid/app/Activity$FlymeInjector;->mStatusBarHeight:I

    if-nez v2, :cond_0

    .line 6405
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6406
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6407
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 6408
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Landroid/app/Activity$FlymeInjector;->mStatusBarHeight:I

    .line 6409
    sget v2, Landroid/app/Activity$FlymeInjector;->mStatusBarHeight:I

    int-to-float v2, v2

    iget v4, p0, Landroid/app/Activity;->mFlymeDensity:F

    add-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    sput v2, Landroid/app/Activity$FlymeInjector;->mTopShift:I

    .line 6412
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resourceId":I
    :cond_0
    monitor-exit v3

    .line 6413
    return-void

    .line 6412
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
