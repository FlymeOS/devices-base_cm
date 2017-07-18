.class Lcom/android/server/policy/MzPhoneWindowManager$7;
.super Landroid/database/ContentObserver;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzPhoneWindowManager;->registerTimeVibratorObserver()V
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
    .line 467
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$7;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$7;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$7;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap0(Lcom/android/server/policy/MzPhoneWindowManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-set7(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 471
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$7;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$7;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap3(Lcom/android/server/policy/MzPhoneWindowManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-set6(Lcom/android/server/policy/MzPhoneWindowManager;I)I

    .line 469
    return-void
.end method
