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
    accessFlags = 0x12
    name = "MzCheckForLittleTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 8304
    iput-object p1, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 8304
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$MzCheckForLittleTap;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8307
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

    .line 8308
    iget-object v0, p0, Landroid/widget/AbsListView$MzCheckForLittleTap;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    invoke-interface {v0}, Landroid/widget/AbsListView$onTouchOutOfItemListener;->isOnTouchOutOfItem()V

    .line 8310
    :cond_1
    return-void
.end method
