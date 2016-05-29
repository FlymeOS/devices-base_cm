.class Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 358
    .local v0, "screenOn":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPhoneIdle()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/content/Context;)Z

    .line 360
    if-nez v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 363
    :cond_0
    return-void
.end method
