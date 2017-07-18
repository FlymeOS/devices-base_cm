.class Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;
.super Ljava/lang/Object;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UpdateAppsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GmsManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$PackageDeleteObserver;
    }
.end annotation


# static fields
.field static final GAPPS:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->isAllGAppsInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()V
    .locals 0

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->uninstallGms()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 491
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 492
    const-string/jumbo v1, "com.android.vending"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 493
    const-string/jumbo v1, "com.google.android.gms"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 494
    const-string/jumbo v1, "com.google.android.gsf"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 495
    const-string/jumbo v1, "com.google.android.gsf.login"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 496
    const-string/jumbo v1, "com.google.android.syncadapters.contacts"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 497
    const-string/jumbo v1, "com.google.android.syncadapters.calendar"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 498
    const-string/jumbo v1, "com.google.android.onetimeinitializer"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 499
    const-string/jumbo v1, "com.google.android.partnersetup"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 500
    const-string/jumbo v1, "com.google.android.apps.maps"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 491
    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    .line 489
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAllGAppsInstalled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 536
    sget-object v3, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 537
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->-get5()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 538
    return v2

    .line 536
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isPreviouslySystemApp(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->-get5()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 568
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 569
    return v4

    .line 564
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string/jumbo v5, "UpdateAppsReceiver"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    return v4

    .line 567
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    .line 569
    return v4

    .line 576
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 577
    .local v3, "isUpdateSystemApp":Z
    :goto_0
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 578
    .local v2, "isNotSystemApp":Z
    :goto_1
    if-eqz v3, :cond_3

    .end local v2    # "isNotSystemApp":Z
    :goto_2
    return v2

    .line 576
    .end local v3    # "isUpdateSystemApp":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isUpdateSystemApp":Z
    goto :goto_0

    .line 577
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isNotSystemApp":Z
    goto :goto_1

    :cond_3
    move v2, v4

    .line 578
    goto :goto_2
.end method

.method private static uninstallGms()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 550
    sget-object v3, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 551
    invoke-static {v0}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->isPreviouslySystemApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->-get5()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$PackageDeleteObserver;

    invoke-direct {v6}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$PackageDeleteObserver;-><init>()V

    invoke-virtual {v5, v0, v6, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 550
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_1
    return-void
.end method

.method static uninstallGmsAsync()V
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    return-void

    .line 523
    :cond_0
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;->start()V

    .line 517
    return-void
.end method

.method static updateGmsPermissionsIfNeeeded(Landroid/content/pm/FlymePackageManager;Ljava/lang/String;)V
    .locals 7
    .param p0, "mFpm"    # Landroid/content/pm/FlymePackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 505
    sget-object v2, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 506
    .local v0, "gapp":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    const-string/jumbo v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0, p1}, Landroid/content/pm/FlymePackageManager;->updatePermissions(Ljava/lang/String;)V

    .line 505
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "gapp":Ljava/lang/String;
    :cond_1
    return-void
.end method
