.class Lcom/android/server/pm/UpdateAppsReceiver$1;
.super Ljava/lang/Thread;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UpdateAppsReceiver;->updateCustomAppsIfNeeded(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdateAppsReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    iput-object p2, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 99
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/app/.need_init"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "verifyFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "/data/app/.need_init do not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z

    .line 113
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$102(Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    .line 114
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_2

    .line 115
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "mPm is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v3    # "verifyFile":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 105
    .restart local v3    # "verifyFile":Ljava/io/File;
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/app/.need_init create ex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 148
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "verifyFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 149
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception !!!: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "verifyFile":Ljava/io/File;
    :cond_2
    const/4 v4, -0x2

    :try_start_3
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$202(Ljava/util/List;)Ljava/util/List;

    .line 123
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$200()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$302(I)I

    .line 125
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    new-instance v5, Ljava/io/File;

    const-string v6, "/custom/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$400(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$000(Lcom/android/server/pm/UpdateAppsReceiver;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-virtual {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->getFirstBootAlreadyOfUpdate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "is firstboot"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-virtual {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->setFirstBootAlreadyForUpdate()V

    .line 130
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # invokes: Lcom/android/server/pm/UpdateAppsReceiver;->setPackageStateFirstTime(Ljava/util/List;)V
    invoke-static {v4, v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$500(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)V

    goto/16 :goto_1

    .line 135
    :cond_3
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result.size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # invokes: Lcom/android/server/pm/UpdateAppsReceiver;->checkPackageState(Ljava/util/List;)Ljava/util/List;
    invoke-static {v4, v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$600(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/io/File;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/File;

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$702([Ljava/io/File;)[Ljava/io/File;

    .line 142
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$700()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$802(I)I

    .line 143
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLenght : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800()I

    move-result v4

    if-lez v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$900(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$900(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
