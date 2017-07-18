.class final Landroid/media/tv/TvInputManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2067
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$1:Landroid/media/tv/TvInputManager$Session;

    .line 2068
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2067
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 2073
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2072
    return-void

    .line 2075
    :pswitch_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$1:Landroid/media/tv/TvInputManager$Session;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    invoke-static {v1, v0}, Landroid/media/tv/TvInputManager$Session;->-wrap2(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    .line 2076
    return-void

    .line 2079
    :pswitch_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$1:Landroid/media/tv/TvInputManager$Session;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    .line 2080
    return-void

    .line 2083
    :pswitch_2
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$1:Landroid/media/tv/TvInputManager$Session;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    .line 2084
    return-void

    .line 2073
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
