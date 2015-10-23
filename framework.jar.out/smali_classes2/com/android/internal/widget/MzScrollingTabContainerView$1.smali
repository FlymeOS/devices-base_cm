.class Lcom/android/internal/widget/MzScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "MzScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iput-object p2, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 361
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->smoothScrollTo(II)V

    .line 362
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 363
    return-void
.end method
