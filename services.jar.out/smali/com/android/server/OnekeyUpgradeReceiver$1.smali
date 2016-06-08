.class Lcom/android/server/OnekeyUpgradeReceiver$1;
.super Ljava/lang/Thread;
.source "OnekeyUpgradeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnekeyUpgradeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnekeyUpgradeReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/OnekeyUpgradeReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/OnekeyUpgradeReceiver$1;->this$0:Lcom/android/server/OnekeyUpgradeReceiver;

    iput-object p3, p0, Lcom/android/server/OnekeyUpgradeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnekeyUpgradeReceiver$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/update.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method
