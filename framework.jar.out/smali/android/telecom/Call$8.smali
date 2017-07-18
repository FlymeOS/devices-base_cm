.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Call;
    .param p2, "val$callback"    # Landroid/telecom/Call$Callback;
    .param p3, "val$call"    # Landroid/telecom/Call;

    .prologue
    .line 1386
    .local p4, "val$record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1389
    const/4 v1, 0x0

    .line 1390
    .local v1, "isFinalRemoval":Z
    const/4 v2, 0x0

    .line 1392
    .local v2, "toThrow":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v4, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v3, v4}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    .end local v2    # "toThrow":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v4, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    monitor-enter v4

    .line 1397
    :try_start_1
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v3}, Landroid/telecom/Call;->-get0(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1398
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v3}, Landroid/telecom/Call;->-get0(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1399
    const/4 v1, 0x1

    :cond_0
    monitor-exit v4

    .line 1402
    if-eqz v1, :cond_1

    .line 1403
    iget-object v3, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v3}, Landroid/telecom/Call;->-get1(Landroid/telecom/Call;)Landroid/telecom/Phone;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 1405
    :cond_1
    if-eqz v2, :cond_2

    .line 1406
    throw v2

    .line 1393
    .restart local v2    # "toThrow":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 1394
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v0

    .local v2, "toThrow":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1396
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "toThrow":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1388
    :cond_2
    return-void
.end method
