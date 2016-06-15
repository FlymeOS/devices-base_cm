.class Lcom/android/internal/app/MzResolverActivity$DetailListFrag$2;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1692
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$2;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$2;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;
    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->access$1100(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)Lcom/android/internal/app/MzResolverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 1696
    return-void
.end method
