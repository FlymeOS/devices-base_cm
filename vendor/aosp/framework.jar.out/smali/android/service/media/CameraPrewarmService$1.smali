.class Landroid/service/media/CameraPrewarmService$1;
.super Landroid/os/Handler;
.source "CameraPrewarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/CameraPrewarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/CameraPrewarmService;


# direct methods
.method constructor <init>(Landroid/service/media/CameraPrewarmService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/CameraPrewarmService;

    .prologue
    .line 45
    iput-object p1, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/media/CameraPrewarmService;->-set0(Landroid/service/media/CameraPrewarmService;Z)Z

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
