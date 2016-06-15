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

.field private mDelayDraw:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/Window;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "delayDraw"    # Z

    .prologue
    .line 6880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6881
    iput-object p1, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    .line 6882
    iput-object p2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    .line 6883
    iput-boolean p3, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mDelayDraw:Z

    .line 6884
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6888
    iget-object v0, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/Activity$FlymeInjector$FlymeDrawDecorViewInner;->mDelayDraw:Z

    invoke-static {v0, v1, v2}, Landroid/app/Activity$FlymeInjector;->onDrawDecorViewInner(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 6889
    return-void
.end method
