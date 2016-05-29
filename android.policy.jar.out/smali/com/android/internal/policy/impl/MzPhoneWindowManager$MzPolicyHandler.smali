.class Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;
.super Landroid/os/Handler;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MzPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    # invokes: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->playHomeEffect()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
