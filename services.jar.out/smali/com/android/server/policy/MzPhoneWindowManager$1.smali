.class Lcom/android/server/policy/MzPhoneWindowManager$1;
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
    .line 290
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_intelligent_voice"

    .line 294
    const/4 v2, -0x3

    .line 293
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-set0(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap2(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/content/Context;)Z

    .line 292
    :cond_0
    return-void
.end method
