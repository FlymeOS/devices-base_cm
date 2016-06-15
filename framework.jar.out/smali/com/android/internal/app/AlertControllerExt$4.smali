.class Lcom/android/internal/app/AlertControllerExt$4;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertControllerExt;->setupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertControllerExt;

.field final synthetic val$contentHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt;I)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$4;->this$0:Lcom/android/internal/app/AlertControllerExt;

    iput p2, p0, Lcom/android/internal/app/AlertControllerExt$4;->val$contentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 910
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v2, 0x1

    .line 899
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertControllerExt$4;->val$contentHeight:I

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$4;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->access$800(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 901
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$4;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->access$800(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$4;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/app/AlertControllerExt;->access$800(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method
