.class final Landroid/widget/AbsListView$MzCheckForLittleTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MzCheckForLittleTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 8153
    iput-object p1, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8155
    iget-object v0, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-gez v0, :cond_1

    .line 8156
    iget-object v0, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    invoke-interface {v0}, Landroid/widget/AbsListView$onTouchOutOfItemListener;->isOnTouchOutOfItem()V

    .line 8158
    :cond_1
    return-void
.end method
