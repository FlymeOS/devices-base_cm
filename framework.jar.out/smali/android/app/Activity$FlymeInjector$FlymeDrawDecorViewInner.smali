.class final Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDrawDecorViewInner"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelay:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/Window;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "delay"    # I

    .prologue
    .line 6890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6891
    iput-object p1, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    .line 6892
    iput-object p2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    .line 6893
    iput p3, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mDelay:I

    .line 6894
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 6898
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFlymeDecoViewDrawFirst:Z

    if-eqz v2, :cond_2

    .line 6899
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mDelay:I

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 6913
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 6899
    goto :goto_0

    .line 6901
    :cond_2
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFlymeDecoViewDrawFlag:Z

    .line 6902
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget v2, v2, Landroid/app/Activity;->mFlymeDecoViewPostCount:I

    if-ge v2, v3, :cond_3

    .line 6903
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget v2, v2, Landroid/app/Activity;->mFlymeDecoViewPostCount:I

    mul-int/lit8 v2, v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;I)V

    .line 6904
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v3, :cond_0

    .line 6905
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget v1, v0, Landroid/app/Activity;->mFlymeDecoViewPostCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Activity;->mFlymeDecoViewPostCount:I

    goto :goto_1

    .line 6908
    :cond_3
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mIsFlymeStatusBar:Z

    if-eqz v2, :cond_0

    .line 6909
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-static {v2, v1, v3, v0}, Landroid/app/Activity$FlymeInjector;->setDrawsSystemBarBackgrounds(Landroid/app/Activity;ZLandroid/view/WindowManager$LayoutParams;Z)V

    goto :goto_1
.end method
