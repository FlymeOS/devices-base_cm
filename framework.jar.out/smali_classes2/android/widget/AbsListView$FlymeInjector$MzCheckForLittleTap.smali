.class final Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;
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
    name = "MzCheckForLittleTap"
.end annotation


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 7975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7976
    iput-object p1, p0, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;->mAbsListView:Landroid/widget/AbsListView;

    .line 7975
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7981
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;->mAbsListView:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-gez v0, :cond_1

    .line 7982
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    invoke-interface {v0}, Landroid/widget/AbsListView$onTouchOutOfItemListener;->isOnTouchOutOfItem()V

    .line 7980
    :cond_1
    return-void
.end method
