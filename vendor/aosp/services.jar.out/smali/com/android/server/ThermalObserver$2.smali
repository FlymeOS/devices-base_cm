.class Lcom/android/server/ThermalObserver$2;
.super Landroid/os/Handler;
.source "ThermalObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermalObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermalObserver;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ThermalObserver;
    .param p2, "$anonymous0"    # Z

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/ThermalObserver$2;->this$0:Lcom/android/server/ThermalObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ThermalObserver$2;->this$0:Lcom/android/server/ThermalObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/ThermalObserver;->-wrap0(Lcom/android/server/ThermalObserver;I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/ThermalObserver$2;->this$0:Lcom/android/server/ThermalObserver;

    invoke-static {v0}, Lcom/android/server/ThermalObserver;->-get2(Lcom/android/server/ThermalObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
