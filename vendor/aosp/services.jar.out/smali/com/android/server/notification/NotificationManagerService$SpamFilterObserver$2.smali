.class Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->update(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 926
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 927
    .local v7, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->val$uri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 930
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 932
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v8

    .line 934
    .local v8, "index":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 936
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 938
    if-ltz v8, :cond_0

    .line 939
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 941
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 946
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 948
    .end local v8    # "index":I
    :cond_2
    return-void

    .line 934
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 941
    .restart local v8    # "index":I
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 942
    :cond_3
    if-gez v8, :cond_1

    .line 944
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;->this$1:Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;

    # invokes: Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->addToCache(Landroid/database/Cursor;)V
    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->access$2000(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/database/Cursor;)V

    goto :goto_0
.end method
