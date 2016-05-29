.class Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;
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
    .line 539
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z

    .line 544
    return-void
.end method
