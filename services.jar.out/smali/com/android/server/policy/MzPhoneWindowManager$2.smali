.class Lcom/android/server/policy/MzPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MzPhoneWindowManager;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 511
    .local v0, "screenOn":Z
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap1(Lcom/android/server/policy/MzPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap2(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/content/Context;)Z

    .line 513
    if-nez v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 509
    :cond_0
    return-void
.end method
