.class Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlymeUpdateStatusBarTintRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 6297
    iput-object p1, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 6337
    const/4 v1, 0x0

    .line 6338
    .local v1, "result":I
    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6339
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 6340
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6343
    :cond_0
    return v1
.end method

.method private setupStatusBarTint()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 6306
    iget-object v10, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 6307
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v6, v10, v11

    .line 6308
    .local v6, "sysUiVisibility":I
    and-int/lit8 v10, v6, 0x4

    if-nez v10, :cond_1

    and-int/lit16 v10, v6, 0x400

    if-nez v10, :cond_1

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v10, v6

    if-nez v10, :cond_1

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-nez v10, :cond_1

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x4000000

    and-int/2addr v10, v11

    if-nez v10, :cond_1

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    move v4, v8

    .line 6315
    .local v4, "show":Z
    :goto_0
    if-nez v4, :cond_2

    .line 6334
    :cond_0
    :goto_1
    return-void

    .end local v4    # "show":Z
    :cond_1
    move v4, v9

    .line 6308
    goto :goto_0

    .line 6318
    .restart local v4    # "show":Z
    :cond_2
    iget-object v10, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v3, v10, Landroid/util/DisplayMetrics;->density:F

    .line 6319
    .local v3, "scale":F
    const-string/jumbo v0, "status_bar_height"

    .line 6320
    .local v0, "STATUS_BAR_HEIGHT_RES_NAME":Ljava/lang/String;
    iget-object v10, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {p0, v10, v0}, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    .line 6321
    .local v5, "statusBarHeight":I
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v3

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    add-int v7, v5, v10

    .line 6322
    .local v7, "topShift":I
    iget-object v10, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v7}, Landroid/app/Activity$FlymeInject;->getAutomaticColor(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v2

    .line 6323
    .local v2, "color":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    .line 6325
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const/16 v11, 0xff

    if-ne v10, v11, :cond_0

    .line 6327
    iget-object v10, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6329
    iget-object v10, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/app/Activity$FlymeInject;->isDark(I)Z

    move-result v11

    if-nez v11, :cond_3

    :goto_2
    invoke-static {v10, v8}, Landroid/app/Activity$FlymeInject;->setStatusBarDarkIcon(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_2

    .line 6332
    :cond_4
    iget-object v8, p0, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v8, v9}, Landroid/app/Activity$FlymeInject;->setDrawsSystemBarBackgrounds(Landroid/view/Window;Z)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 6301
    invoke-direct {p0}, Landroid/app/Activity$FlymeUpdateStatusBarTintRunnable;->setupStatusBarTint()V

    .line 6302
    return-void
.end method
