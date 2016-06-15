.class Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Landroid/widget/ListView$DividerPadding;


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
    .line 1680
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1684
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingLeft:I
    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->access$900(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;->this$0:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    # getter for: Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->mListDividerPaddingRight:I
    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->access$1000(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)I

    move-result v2

    aput v2, v0, v1

    .line 1687
    .local v0, "padding":[I
    return-object v0
.end method
