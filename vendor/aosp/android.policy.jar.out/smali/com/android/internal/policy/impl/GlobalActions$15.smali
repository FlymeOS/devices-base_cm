.class Lcom/android/internal/policy/impl/GlobalActions$15;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1281
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1283
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1285
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2202(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    goto :goto_0

    .line 1289
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2300(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1290
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1293
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2400(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto :goto_0

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
