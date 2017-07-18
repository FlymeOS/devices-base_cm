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
    .param p1, "this$0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 308
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-get1(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v1}, Lcom/android/server/pm/UpdateAppsReceiver;->-get1(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v1

    .line 310
    const/16 v2, 0x67

    .line 309
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->-get4()I

    move-result v0

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->-get2()I

    move-result v1

    mul-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->-get2()I

    move-result v0

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->-get4()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-get0(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/content/pm/FlymePackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/FlymePackageManager;->syncPackageState()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver;->-get1(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v1}, Lcom/android/server/pm/UpdateAppsReceiver;->-get1(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v1

    .line 317
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x68

    .line 316
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
