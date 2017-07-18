.class final Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;
.super Ljava/lang/Thread;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->uninstallGmsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->-wrap0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    return-void

    .line 530
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->-wrap1()V

    .line 525
    return-void
.end method
