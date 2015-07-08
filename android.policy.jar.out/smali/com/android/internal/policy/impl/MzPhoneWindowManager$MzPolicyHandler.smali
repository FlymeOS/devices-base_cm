.class Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;
.super Landroid/os/Handler;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MzPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    .line 45
    return-void
.end method
