.class final Landroid/app/ActivityThread$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleFlymePauseActivity(Landroid/app/ActivityThread;)V
    .locals 5
    .param p0, "at"    # Landroid/app/ActivityThread;

    .prologue
    .line 5539
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const-string/jumbo v1, "AppEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "pause"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/alphame/AlphaMe;->collect(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5538
    return-void
.end method

.method static handleFlymeResumeActivity(Landroid/app/ActivityThread;)V
    .locals 5
    .param p0, "at"    # Landroid/app/ActivityThread;

    .prologue
    .line 5535
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const-string/jumbo v1, "AppEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "resume"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/alphame/AlphaMe;->collect(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5534
    return-void
.end method

.method static isFlymePermissionGranted(Landroid/app/ActivityThread$ReceiverData;Landroid/app/LoadedApk;)Z
    .locals 5
    .param p0, "data"    # Landroid/app/ActivityThread$ReceiverData;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;

    .prologue
    .line 5519
    const/4 v2, 0x0

    .line 5521
    .local v2, "rejectReceive":Z
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5522
    iget-object v3, p0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "pdus"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 5523
    .local v1, "pduses":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 5524
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    invoke-static {v4, v3}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 5525
    const/4 v2, 0x1

    .line 5531
    .end local v1    # "pduses":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 5529
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static setFlymeThemeResource(Landroid/app/LoadedApk;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 5513
    if-eqz p1, :cond_0

    .line 5514
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V

    .line 5512
    :cond_0
    return-void
.end method
