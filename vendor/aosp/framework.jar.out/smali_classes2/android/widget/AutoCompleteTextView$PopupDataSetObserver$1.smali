.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    .prologue
    .line 1289
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1292
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-static {v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->-get0(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 1293
    .local v1, "textView":Landroid/widget/AutoCompleteTextView;
    if-nez v1, :cond_0

    .line 1294
    return-void

    .line 1296
    :cond_0
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->-get0(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1297
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1298
    return-void

    .line 1300
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Landroid/widget/AutoCompleteTextView;->-wrap2(Landroid/widget/AutoCompleteTextView;I)V

    .line 1291
    return-void
.end method
