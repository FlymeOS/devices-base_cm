.class Landroid/widget/AdapterViewAnimator$1$1;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AdapterViewAnimator$1;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator$1;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AdapterViewAnimator$1;
    .param p2, "val$viewData"    # Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .param p3, "val$v"    # Landroid/view/View;

    .prologue
    .line 651
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput-object p3, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 653
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    .line 655
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-wide v4, v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->itemId:J

    .line 654
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/AdapterViewAnimator;->performItemClick(Landroid/view/View;IJ)Z

    .line 652
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1$1;->val$v:Landroid/view/View;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/AdapterViewAnimator;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
