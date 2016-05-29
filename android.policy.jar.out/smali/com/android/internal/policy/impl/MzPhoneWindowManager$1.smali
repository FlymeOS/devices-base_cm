.class Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;
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
    .line 180
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_intelligent_voice"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->bHomeKeyLongFlag:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$402(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/content/Context;)Z

    .line 188
    :cond_0
    return-void
.end method
