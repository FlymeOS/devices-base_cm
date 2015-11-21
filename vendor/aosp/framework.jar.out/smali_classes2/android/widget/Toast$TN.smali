.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 359
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 329
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 336
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 345
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 346
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 362
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 363
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 364
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 365
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 366
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 367
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 368
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 372
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toast$TN;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 444
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 446
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    :goto_0
    return-void

    .line 451
    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 453
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 470
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 472
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 395
    iget-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v7, v8, :cond_5

    .line 397
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 398
    iget-object v7, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 399
    iget-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 400
    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "packageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 402
    iget-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 405
    :cond_0
    iget-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 406
    .local v0, "appIcon":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 408
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 410
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 414
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v7, "window"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 419
    iget-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 420
    .local v1, "config":Landroid/content/res/Configuration;
    iget v7, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    .line 421
    .local v3, "gravity":I
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 422
    and-int/lit8 v7, v3, 0x7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    .line 423
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 425
    :cond_2
    and-int/lit8 v7, v3, 0x70

    const/16 v8, 0x70

    if-ne v7, v8, :cond_3

    .line 426
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 428
    :cond_3
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Landroid/widget/Toast$TN;->mX:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 429
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Landroid/widget/Toast$TN;->mY:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 430
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 431
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 432
    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v5, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 433
    iget-object v7, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 435
    iget-object v7, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v7, v8}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 438
    :cond_4
    iget-object v7, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .line 441
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "gravity":I
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_5
    return-void

    .line 411
    .restart local v0    # "appIcon":Landroid/widget/ImageView;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method
