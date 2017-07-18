.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$column:I

.field final synthetic val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .param p2, "val$holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .param p3, "val$column"    # I

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$column:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$column:I

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 1128
    return-void
.end method
