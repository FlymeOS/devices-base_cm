.class Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;
.super Landroid/database/ContentObserver;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MzPhoneWindowManager;->registerPowerSaveModeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEnablePowerSaveModeSettingChanged()Z

    move-result v1

    # setter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$602(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z

    .line 311
    return-void
.end method
