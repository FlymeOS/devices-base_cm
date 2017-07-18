.class final Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeBroadcastQueueInjector"
.end annotation


# static fields
.field private static appWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Lcom/android/server/am/BroadcastRecord;

.field private static systemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    .line 1469
    sput-object v1, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    .line 1470
    sput-object v1, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    .line 1472
    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 1509
    if-nez p0, :cond_1

    .line 1510
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 1512
    :cond_1
    if-nez p1, :cond_2

    .line 1513
    const/4 v3, -0x2

    return v3

    .line 1515
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1516
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p0, v3

    .line 1517
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1516
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1519
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1520
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 1521
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1524
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1525
    return v4

    .line 1527
    :cond_5
    const/4 v3, -0x3

    return v3
.end method

.method static interceptForPermissionControl(ILjava/lang/String;)Z
    .locals 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1531
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1532
    .local v0, "context":Landroid/content/Context;
    sget-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1533
    return v7

    .line 1536
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1537
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1538
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2

    .line 1539
    :cond_1
    return v7

    .line 1541
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1543
    :cond_2
    const/4 v3, 0x0

    .line 1545
    .local v3, "limit":Z
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_op_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x41

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1547
    const/4 v7, -0x1

    .line 1545
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 1548
    .local v4, "value":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 1549
    const/4 v3, 0x0

    .line 1555
    .end local v4    # "value":I
    :goto_0
    return v3

    .line 1551
    .restart local v4    # "value":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 1553
    .end local v4    # "value":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static isSystemSignatures(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1486
    const/4 v3, 0x0

    .line 1487
    .local v3, "isSystemSignaturesFlag":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 1488
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1489
    .local v4, "pm":Landroid/content/pm/PackageManager;
    sget-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    if-nez v5, :cond_0

    .line 1491
    :try_start_0
    const-string/jumbo v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1496
    :cond_0
    :goto_0
    sget-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    .line 1498
    const/16 v5, 0x40

    :try_start_1
    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1499
    .local v0, "appSignature":[Landroid/content/pm/Signature;
    sget-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    invoke-static {v5, v0}, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 1500
    const/4 v3, 0x1

    .line 1505
    .end local v0    # "appSignature":[Landroid/content/pm/Signature;
    :cond_1
    :goto_1
    return v3

    .line 1502
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 1492
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static setCurrentBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V
    .locals 0
    .param p0, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 1482
    sput-object p0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    .line 1481
    return-void
.end method
