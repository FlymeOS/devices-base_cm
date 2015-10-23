.class Lcom/android/internal/app/MzResolverActivity$2;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Lcom/meizu/widget/DragGridView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MzResolverActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$2;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1726
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$2;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity;->access$100(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1727
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$2;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity;->access$000(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v1

    .line 1728
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$2;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity;->access$600(Lcom/android/internal/app/MzResolverActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$2;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity;->access$600(Lcom/android/internal/app/MzResolverActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 1731
    .local v0, "alwaysCheck":Z
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1734
    const/4 v0, 0x1

    .line 1736
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$2;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v3, p2, v0, v2}, Lcom/android/internal/app/MzResolverActivity;->startSelected(IZZ)V

    .line 1740
    .end local v0    # "alwaysCheck":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1738
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$2;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v3, p2, v0, v2}, Lcom/android/internal/app/MzResolverActivity;->startSelected(IZZ)V

    goto :goto_0
.end method
