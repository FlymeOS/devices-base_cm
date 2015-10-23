.class Landroid/widget/AbsListView$MzDelaySpringBack;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MzDelaySpringBack"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 8162
    iput-object p1, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8166
    iget-object v0, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->mzGetFieldFlingRunnable()Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8167
    iget-object v0, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    iget-object v2, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->mzSetFieldFlingRunnable(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 8170
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8171
    iget-object v0, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->mzCreateScrollingCache()V

    .line 8172
    iget-object v0, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->mzGetFieldFlingRunnable()Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 8174
    iget-object v0, p0, Landroid/widget/AbsListView$MzDelaySpringBack;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    .line 8175
    return-void
.end method
