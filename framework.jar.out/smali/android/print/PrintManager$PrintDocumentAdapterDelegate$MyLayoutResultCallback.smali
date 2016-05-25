.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
.super Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyLayoutResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/ILayoutResultCallback;

.field private final mSequence:I

.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V
    .locals 0
    .param p2, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p3, "sequence"    # I

    .prologue
    .line 836
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;-><init>()V

    .line 837
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 838
    iput p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    .line 839
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 921
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 922
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 923
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    const/4 v2, 0x0

    # setter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    invoke-static {v0, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$202(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    .line 924
    monitor-exit v1

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLayoutCancelled()V
    .locals 4

    .prologue
    .line 898
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 899
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 900
    .local v0, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    if-nez v0, :cond_0

    .line 904
    const-string v2, "PrintManager"

    const-string v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :goto_0
    return-void

    .line 900
    .end local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 911
    .restart local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :cond_0
    :try_start_2
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v0, v2}, Landroid/print/ILayoutResultCallback;->onLayoutCanceled(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 915
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    goto :goto_0

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 915
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    throw v2
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 874
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 875
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 876
    .local v0, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    if-nez v0, :cond_0

    .line 880
    const-string v2, "PrintManager"

    const-string v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    return-void

    .line 876
    .end local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 887
    .restart local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :cond_0
    :try_start_2
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v0, p1, v2}, Landroid/print/ILayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 891
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    goto :goto_0

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 891
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    throw v2
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 4
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;
    .param p2, "changed"    # Z

    .prologue
    .line 844
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 845
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 846
    .local v0, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    if-nez v0, :cond_0

    .line 850
    const-string v2, "PrintManager"

    const-string v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_0
    return-void

    .line 846
    .end local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 857
    .restart local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :cond_0
    if-nez p1, :cond_1

    .line 858
    :try_start_2
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "document info cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 867
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    throw v2

    .line 862
    :cond_1
    :try_start_3
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v0, p1, p2, v2}, Landroid/print/ILayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 867
    :goto_1
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    goto :goto_0

    .line 863
    :catch_0
    move-exception v1

    .line 864
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFinished"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
