.class Lcom/android/server/connectivity/TetherMonitor$1;
.super Landroid/database/ContentObserver;
.source "TetherMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/TetherMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/connectivity/TetherMonitor$1;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/connectivity/TetherMonitor$1;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherMonitor$1;->this$0:Lcom/android/server/connectivity/TetherMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/TetherMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/TetherMonitor;->sendMessage(Landroid/os/Message;)Z

    .line 539
    return-void
.end method
