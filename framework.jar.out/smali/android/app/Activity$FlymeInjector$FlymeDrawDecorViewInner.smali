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
    .line 6889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6890
    iput-object p1, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    .line 6891
    iput-object p2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    .line 6892
    iput p3, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mDelay:I

    .line 6893
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6897
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFlymeDecoViewDrawFirst:Z

    if-eqz v2, :cond_1

    .line 6898
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mDelay:I

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 6903
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 6898
    goto :goto_0

    .line 6900
    :cond_1
    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFlymeDecoViewDrawFlag:Z

    .line 6901
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_1
.end method
