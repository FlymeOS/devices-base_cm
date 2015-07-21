.class Lcom/android/server/ThemeService$ResourceProcessingHandler;
.super Landroid/os/Handler;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceProcessingHandler"
.end annotation


# static fields
.field private static final MESSAGE_DEQUEUE_AND_PROCESS_THEME:I = 0x4

.field private static final MESSAGE_QUEUE_THEME_FOR_PROCESSING:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    .line 165
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 166
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 214
    # getter for: Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThemeService;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 174
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 178
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->sendEmptyMessage(I)Z

    .line 181
    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 184
    .end local v3    # "pkgName":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 185
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .restart local v3    # "pkgName":Ljava/lang/String;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    if-eqz v3, :cond_0

    .line 191
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$500(Lcom/android/server/ThemeService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 192
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/ThemeService;->access$600(Lcom/android/server/ThemeService;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 197
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .local v1, "name":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$500(Lcom/android/server/ThemeService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->processThemeResources(Ljava/lang/String;)I

    move-result v4

    .line 198
    .local v4, "result":I
    if-gez v4, :cond_2

    .line 199
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    if-eqz v1, :cond_4

    .end local v1    # "name":Ljava/lang/String;
    :goto_2
    # invokes: Lcom/android/server/ThemeService;->postFailedThemeInstallNotification(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lcom/android/server/ThemeService;->access$700(Lcom/android/server/ThemeService;Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V
    invoke-static {v5, v3, v4}, Lcom/android/server/ThemeService;->access$800(Lcom/android/server/ThemeService;Ljava/lang/String;I)V

    .line 203
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 204
    :try_start_3
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 207
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/server/ThemeService$ResourceProcessingHandler;->sendEmptyMessage(I)Z

    .line 209
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 210
    iget-object v5, p0, Lcom/android/server/ThemeService$ResourceProcessingHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->postFinishedProcessing(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/android/server/ThemeService;->access$900(Lcom/android/server/ThemeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":I
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 193
    .restart local v3    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "result":I
    :cond_4
    move-object v1, v3

    .line 199
    goto :goto_2

    .line 209
    .end local v1    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
