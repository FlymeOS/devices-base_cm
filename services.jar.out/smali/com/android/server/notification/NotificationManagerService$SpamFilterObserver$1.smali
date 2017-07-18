.class Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 908
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 910
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 911
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 913
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->-wrap0(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/database/Cursor;)V

    .line 915
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    monitor-exit v1

    .line 907
    :cond_1
    return-void

    .line 918
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
