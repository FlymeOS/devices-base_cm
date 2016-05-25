.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 5
    .param p1, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 606
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 607
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 611
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 613
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stoppedPackages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 546
    iget-object v9, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 550
    :try_start_0
    iget-object v9, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v11

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v9, v11}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    move-result-object v8

    .line 551
    .local v8, "userState":Lcom/android/server/print/UserState;
    const/4 v7, 0x0

    .line 552
    .local v7, "stoppedSomePackages":Z
    invoke-virtual {v8}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 554
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 555
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 556
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "componentPackage":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 558
    .local v6, "stoppedPackage":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 559
    if-nez p4, :cond_1

    .line 560
    const/4 v9, 0x1

    monitor-exit v10

    .line 570
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "componentPackage":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "stoppedPackage":Ljava/lang/String;
    :goto_2
    return v9

    .line 562
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentPackage":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "stoppedPackage":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    .line 563
    goto :goto_0

    .line 557
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 567
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "componentPackage":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "stoppedPackage":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 568
    invoke-virtual {v8}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 570
    :cond_4
    const/4 v9, 0x0

    monitor-exit v10

    goto :goto_2

    .line 571
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v7    # "stoppedSomePackages":Z
    .end local v8    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 579
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.printservice.PrintService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v9

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 586
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    .line 600
    :cond_0
    return-void

    .line 590
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 591
    .local v2, "installedServiceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 592
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 593
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 597
    .local v5, "label":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v8

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V
    invoke-static {v7, v0, v5, v8}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 499
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, "servicesChanged":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v6

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v4, v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 505
    .local v3, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 506
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 508
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    const/4 v2, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    if-eqz v2, :cond_2

    .line 513
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 515
    :cond_2
    monitor-exit v5

    .line 516
    return-void

    .line 515
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 520
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 524
    const/4 v2, 0x0

    .line 525
    .local v2, "servicesRemoved":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v6

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v4, v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 526
    .local v3, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 529
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 530
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 531
    const/4 v2, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    if-eqz v2, :cond_2

    .line 535
    const-string v4, "enabled_print_services"

    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 538
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 540
    :cond_2
    monitor-exit v5

    .line 541
    return-void

    .line 540
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
