.class Lcom/android/server/LockSettingsStrongAuth$1;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsStrongAuth;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsStrongAuth;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 160
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->-wrap0(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->-wrap1(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/LockSettingsStrongAuth;->-wrap3(Lcom/android/server/LockSettingsStrongAuth;II)V

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/LockSettingsStrongAuth;->-wrap2(Lcom/android/server/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
