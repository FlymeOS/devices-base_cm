.class Lcom/android/internal/app/MzResolverActivity$3;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Lcom/meizu/widget/DragGridView$OnItemPositionChangeListener;


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
    .line 1742
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$3;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPositionChange(Landroid/view/View;II)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$3;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity;->access$000(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/android/internal/app/MzResolverActivity$ResolveListAdapter;->changePosition(II)V

    .line 1745
    return-void
.end method
