.class Lcom/android/server/policy/MzPhoneWindowManager$6;
.super Landroid/database/ContentObserver;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzPhoneWindowManager;->registerPowerSaveModeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$6;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$6;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$6;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->onEnablePowerSaveModeSettingChanged()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-set4(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 421
    return-void
.end method
