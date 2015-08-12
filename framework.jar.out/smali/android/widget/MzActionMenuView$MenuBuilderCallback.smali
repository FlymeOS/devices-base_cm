.class Landroid/widget/MzActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "MzActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzActionMenuView;


# direct methods
.method private constructor <init>(Landroid/widget/MzActionMenuView;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Landroid/widget/MzActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/MzActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MzActionMenuView;Landroid/widget/MzActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/MzActionMenuView;
    .param p2, "x1"    # Landroid/widget/MzActionMenuView$1;

    .prologue
    .line 874
    invoke-direct {p0, p1}, Landroid/widget/MzActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/MzActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 877
    iget-object v0, p0, Landroid/widget/MzActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/MzActionMenuView;

    # getter for: Landroid/widget/MzActionMenuView;->mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Landroid/widget/MzActionMenuView;->access$200(Landroid/widget/MzActionMenuView;)Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/MzActionMenuView;

    # getter for: Landroid/widget/MzActionMenuView;->mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Landroid/widget/MzActionMenuView;->access$200(Landroid/widget/MzActionMenuView;)Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/MzActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 883
    iget-object v0, p0, Landroid/widget/MzActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/MzActionMenuView;

    # getter for: Landroid/widget/MzActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    invoke-static {v0}, Landroid/widget/MzActionMenuView;->access$300(Landroid/widget/MzActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Landroid/widget/MzActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/MzActionMenuView;

    # getter for: Landroid/widget/MzActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    invoke-static {v0}, Landroid/widget/MzActionMenuView;->access$300(Landroid/widget/MzActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 886
    :cond_0
    return-void
.end method
