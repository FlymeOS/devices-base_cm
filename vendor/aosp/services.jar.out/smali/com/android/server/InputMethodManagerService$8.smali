.class Lcom/android/server/InputMethodManagerService$8;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .locals 0

    .prologue
    .line 2922
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2925
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2926
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    array-length v2, v2

    if-le v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    array-length v2, v2

    if-gt v2, p2, :cond_1

    .line 2928
    :cond_0
    monitor-exit v3

    .line 2942
    :goto_0
    return-void

    .line 2930
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    aget-object v0, v2, p2

    .line 2931
    .local v0, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v1, v2, p2

    .line 2932
    .local v1, "subtypeId":I
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 2933
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 2934
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 2935
    if-eqz v0, :cond_4

    .line 2936
    if-ltz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 2937
    :cond_2
    const/4 v1, -0x1

    .line 2939
    :cond_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 2941
    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
