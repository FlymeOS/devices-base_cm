.class Landroid/content/pm/FlymePackageManager$1;
.super Landroid/app/PackageInstallObserver;
.source "FlymePackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/FlymePackageManager;->installPackage(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/FlymePackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/FlymePackageManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/FlymePackageManager;

    .prologue
    .line 248
    iput-object p1, p0, Landroid/content/pm/FlymePackageManager$1;->this$0:Landroid/content/pm/FlymePackageManager;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/PackageInstallObserver;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 252
    if-ne p2, v1, :cond_0

    .line 253
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager$1;->this$0:Landroid/content/pm/FlymePackageManager;

    invoke-static {v0, v1}, Landroid/content/pm/FlymePackageManager;->-set0(Landroid/content/pm/FlymePackageManager;I)I

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager$1;->this$0:Landroid/content/pm/FlymePackageManager;

    invoke-static {v0}, Landroid/content/pm/FlymePackageManager;->-get0(Landroid/content/pm/FlymePackageManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/FlymePackageManager$1;->this$0:Landroid/content/pm/FlymePackageManager;

    invoke-static {v0}, Landroid/content/pm/FlymePackageManager;->-get0(Landroid/content/pm/FlymePackageManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 250
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
