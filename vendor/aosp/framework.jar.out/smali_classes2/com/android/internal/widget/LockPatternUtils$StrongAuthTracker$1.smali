.class Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;
.super Landroid/app/trust/IStrongAuthTracker$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;->this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-direct {p0}, Landroid/app/trust/IStrongAuthTracker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrongAuthRequiredChanged(II)V
    .locals 2
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;->this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->-get0(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1449
    return-void
.end method
