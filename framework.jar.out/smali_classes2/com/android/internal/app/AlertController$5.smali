.class Lcom/android/internal/app/AlertController$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$indicatorDown:Landroid/view/View;

.field final synthetic val$indicatorUp:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$5;->val$indicatorUp:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/app/AlertController$5;->val$indicatorDown:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "v"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/app/AlertController$5;->val$indicatorUp:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$5;->val$indicatorDown:Landroid/view/View;

    # invokes: Lcom/android/internal/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    invoke-static {p1, v0, v1}, Lcom/android/internal/app/AlertController;->access$900(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 636
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 630
    return-void
.end method
