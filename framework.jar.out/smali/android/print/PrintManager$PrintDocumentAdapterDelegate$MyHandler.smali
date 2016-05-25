.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_FINISH:I = 0x4

.field public static final MSG_ON_KILL:I = 0x5

.field public static final MSG_ON_LAYOUT:I = 0x2

.field public static final MSG_ON_START:I = 0x1

.field public static final MSG_ON_WRITE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 735
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 736
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 737
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 741
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 819
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 747
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v10}, Landroid/print/PrintDocumentAdapter;->onStart()V

    .line 823
    :goto_0
    return-void

    .line 751
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 752
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintDocumentAdapter;

    .line 753
    .local v0, "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintAttributes;

    .line 754
    .local v1, "oldAttributes":Landroid/print/PrintAttributes;
    iget-object v2, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrintAttributes;

    .line 755
    .local v2, "newAttributes":Landroid/print/PrintAttributes;
    iget-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    .line 756
    .local v3, "cancellation":Landroid/os/CancellationSignal;
    iget-object v4, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 757
    .local v4, "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    iget-object v5, v6, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 758
    .local v5, "metadata":Landroid/os/Bundle;
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 771
    invoke-virtual/range {v0 .. v5}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    goto :goto_0

    .line 776
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v1    # "oldAttributes":Landroid/print/PrintAttributes;
    .end local v2    # "newAttributes":Landroid/print/PrintAttributes;
    .end local v3    # "cancellation":Landroid/os/CancellationSignal;
    .end local v4    # "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .end local v5    # "metadata":Landroid/os/Bundle;
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 777
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintDocumentAdapter;

    .line 778
    .restart local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v10, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, [Landroid/print/PageRange;

    move-object v8, v10

    check-cast v8, [Landroid/print/PageRange;

    .line 779
    .local v8, "pages":[Landroid/print/PageRange;
    iget-object v7, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 780
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    .line 781
    .restart local v3    # "cancellation":Landroid/os/CancellationSignal;
    iget-object v4, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 782
    .local v4, "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 792
    invoke-virtual {v0, v8, v7, v3, v4}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    goto :goto_0

    .line 800
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v3    # "cancellation":Landroid/os/CancellationSignal;
    .end local v4    # "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "pages":[Landroid/print/PageRange;
    :pswitch_3
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v10}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 804
    iget-object v10, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 805
    :try_start_0
    iget-object v10, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # invokes: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V
    invoke-static {v10}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$100(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    .line 806
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 814
    :pswitch_4
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 815
    .local v9, "reason":Ljava/lang/String;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
