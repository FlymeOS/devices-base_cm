.class final Lcom/android/server/MasterClearReceiver$FlymeRebootThread;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlymeRebootThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string v0, "FlymeReboot"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mIntent:Landroid/content/Intent;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Landroid/os/RecoverySystem;->flymeRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
