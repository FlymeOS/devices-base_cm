.class Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)V
    .locals 0

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1762
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->access$1400(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1763
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->access$1500(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v1

    .line 1764
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->access$1600(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->access$1600(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 1773
    .local v0, "alwaysCheck":Z
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->access$1700(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    invoke-virtual {v3, p3, v0, v2}, Lcom/android/internal/app/MzResolverActivity;->startSelected(IZZ)V

    .line 1777
    .end local v0    # "alwaysCheck":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1775
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->access$1700(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v3

    invoke-virtual {v3, p3, v0, v2}, Lcom/android/internal/app/MzResolverActivity;->startSelected(IZZ)V

    goto :goto_0
.end method
