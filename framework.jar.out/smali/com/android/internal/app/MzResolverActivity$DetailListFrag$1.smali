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
.field final synthetic this$1:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1900
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1901
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->-get2(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$DetailListFrag$1;->this$1:Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;->-get3(Lcom/android/internal/app/MzResolverActivity$DetailListFrag;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1903
    .local v0, "padding":[I
    return-object v0
.end method
