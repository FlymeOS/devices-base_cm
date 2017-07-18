.class Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;
.super Landroid/os/Handler;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MzPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MzPhoneWindowManager;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MzPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-static {v2, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap5(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap8(Lcom/android/server/policy/MzPhoneWindowManager;)V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap6(Lcom/android/server/policy/MzPhoneWindowManager;)V

    goto :goto_0

    .line 168
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap4(Lcom/android/server/policy/MzPhoneWindowManager;)V

    goto :goto_0

    .line 171
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 172
    .local v0, "obj":I
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->handleShowGlobalActionsConfirm(I)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
