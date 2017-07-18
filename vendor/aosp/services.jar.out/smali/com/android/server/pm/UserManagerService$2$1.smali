.class Lcom/android/server/pm/UserManagerService$2$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$2;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/UserManagerService$2;
    .param p2, "val$userHandle"    # I

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$2$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get0(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1562
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1563
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    iget v3, p0, Lcom/android/server/pm/UserManagerService$2$1;->val$userHandle:I

    invoke-static {v0, v3}, Lcom/android/server/pm/UserManagerService;->-wrap0(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1560
    return-void

    .line 1562
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1561
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
