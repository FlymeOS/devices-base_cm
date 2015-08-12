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
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "   answerRingingCallWithAnimate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->answerRingingCallWithAnimate()Z

    .line 37
    return-void
.end method
