.class Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;
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
    name = "FlymeUpdateStatusBarIconThemeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 6347
    iput-object p1, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupStatusBarIconTheme()V
    .locals 2

    .prologue
    .line 6355
    iget-object v0, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mTopRegionMainColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 6357
    iget-object v0, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v0, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mTopRegionMainColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/app/Activity$FlymeInject;->isDark(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Landroid/app/Activity$FlymeInject;->setStatusBarDarkIcon(Landroid/view/Window;Z)V

    .line 6362
    :goto_1
    return-void

    .line 6357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6360
    :cond_1
    invoke-direct {p0}, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->updateStatusBarIconTheme()V

    goto :goto_1
.end method

.method private updateStatusBarIconTheme()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6366
    iget-object v5, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6367
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v2, v3

    .line 6368
    .local v2, "translucentStatus":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 6371
    iget-object v5, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 6372
    .local v1, "scale":F
    iget-object v5, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    iget-object v6, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v1

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v6, v7}, Landroid/app/Activity$FlymeInject;->getAutomaticColor(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Activity;->mTopRegionMainColor:Ljava/lang/Integer;

    .line 6373
    iget-object v5, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    iget-object v5, v5, Landroid/app/Activity;->mTopRegionMainColor:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 6375
    iget-object v5, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    iget-object v6, v6, Landroid/app/Activity;->mTopRegionMainColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/app/Activity$FlymeInject;->isDark(I)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    invoke-static {v5, v3}, Landroid/app/Activity$FlymeInject;->setStatusBarDarkIcon(Landroid/view/Window;Z)V

    .line 6378
    .end local v1    # "scale":F
    :cond_0
    return-void

    .end local v2    # "translucentStatus":Z
    :cond_1
    move v2, v4

    .line 6367
    goto :goto_0

    .restart local v1    # "scale":F
    .restart local v2    # "translucentStatus":Z
    :cond_2
    move v3, v4

    .line 6375
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 6351
    invoke-direct {p0}, Landroid/app/Activity$FlymeUpdateStatusBarIconThemeRunnable;->setupStatusBarIconTheme()V

    .line 6352
    return-void
.end method
