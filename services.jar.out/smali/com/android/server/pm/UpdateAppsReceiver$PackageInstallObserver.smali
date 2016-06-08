.class Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UpdateAppsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdateAppsReceiver;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;Lcom/android/server/pm/UpdateAppsReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p2, "x1"    # Lcom/android/server/pm/UpdateAppsReceiver$1;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 308
    if-ne p2, v3, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->access$900(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/pm/UpdateAppsReceiver;->access$900(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/pm/UpdateAppsReceiver;->setPackageState(Ljava/lang/String;Z)V

    .line 313
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800()I

    move-result v0

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1500()I

    move-result v1

    mul-int/2addr v0, v1

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1500()I

    move-result v0

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;
    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1600(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/content/pm/FlymePackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/FlymePackageManager;->syncPackageState()V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->access$900(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/pm/UpdateAppsReceiver;->access$900(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
