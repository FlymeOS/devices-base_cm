.class Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

.field final synthetic val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

.field final synthetic val$record:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$record"    # Landroid/media/AudioRecord;
    .param p4, "val$listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;

    .prologue
    .line 1368
    iput-object p1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    iput-object p4, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 1372
    return-void

    .line 1374
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown native event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->-wrap0(Ljava/lang/String;)V

    .line 1370
    :cond_1
    :goto_0
    return-void

    .line 1376
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

    if-eqz v0, :cond_1

    .line 1377
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

    iget-object v1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioRecord;)V

    goto :goto_0

    .line 1374
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
