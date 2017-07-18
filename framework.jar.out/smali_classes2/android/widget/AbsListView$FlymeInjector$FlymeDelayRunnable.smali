.class final Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDelayRunnable"
.end annotation


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 7754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7755
    iput-object p1, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;->mAbsListView:Landroid/widget/AbsListView;

    .line 7754
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7760
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->startMultiChoice()Z

    .line 7761
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mFlymeMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 7759
    return-void
.end method
