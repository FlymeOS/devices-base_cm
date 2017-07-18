.class Lcom/android/server/policy/FlymeConfirmPasswordView$3;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;->forceShowInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-get2(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/ShutdownLockView;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-wrap6(Lcom/android/server/policy/FlymeConfirmPasswordView;Landroid/widget/EditText;)V

    .line 132
    return-void
.end method
