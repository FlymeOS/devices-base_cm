.class Lcom/android/server/policy/FlymeConfirmPasswordView$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FlymeConfirmPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;
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
    .line 390
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-wrap1(Lcom/android/server/policy/FlymeConfirmPasswordView;I)V

    .line 413
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-wrap4(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V

    .line 408
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-wrap2(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    .line 393
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-wrap5(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V

    .line 403
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->-wrap3(Lcom/android/server/policy/FlymeConfirmPasswordView;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 398
    return-void
.end method
