.class Lcom/android/server/pm/UpdateAppsReceiver$1;
.super Landroid/os/Handler;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UpdateAppsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdateAppsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-wrap4(Lcom/android/server/pm/UpdateAppsReceiver;)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-wrap5(Lcom/android/server/pm/UpdateAppsReceiver;)V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-wrap2(Lcom/android/server/pm/UpdateAppsReceiver;)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-wrap3(Lcom/android/server/pm/UpdateAppsReceiver;I)V

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-wrap5(Lcom/android/server/pm/UpdateAppsReceiver;)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
