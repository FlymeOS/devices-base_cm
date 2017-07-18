.class Lcom/android/server/policy/MzPhoneWindowManager$5;
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
    .line 899
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$5;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$5;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-set5(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 903
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$5;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-set3(Lcom/android/server/policy/MzPhoneWindowManager;I)I

    .line 901
    return-void
.end method
