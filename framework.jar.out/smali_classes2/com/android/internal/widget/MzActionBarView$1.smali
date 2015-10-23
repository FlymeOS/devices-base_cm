.class Lcom/android/internal/widget/MzActionBarView$1;
.super Ljava/lang/Object;
.source "MzActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarView;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView$1;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarView$1;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarView;->access$000(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/widget/MzActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 156
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 159
    :cond_0
    return-void
.end method
