.class Lcom/android/internal/policy/impl/PhoneWindowManager$8;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1410
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->unpinActivity(Z)Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/cm/ActionUtils;->killForegroundApp(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1412
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x104003e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1414
    :cond_0
    return-void
.end method
