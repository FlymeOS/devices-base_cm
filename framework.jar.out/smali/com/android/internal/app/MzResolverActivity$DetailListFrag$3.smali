.class Lcom/android/internal/app/MzResolverActivity$DetailListFrag$3;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)V
    .locals 0

    .prologue
    .line 1704
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$3;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1709
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$3;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;
    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->access$1100(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/internal/app/MzResolverActivity;->startSelected(IZZ)V

    .line 1710
    return-void
.end method
