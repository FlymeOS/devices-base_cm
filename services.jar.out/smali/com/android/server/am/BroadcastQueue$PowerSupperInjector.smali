.class Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerSupperInjector"
.end annotation


# static fields
.field private static final POWER_MODE_STANDARD:I = 0x2

.field private static final POWER_MODE_SUPPER:I = 0x3

.field private static final POWER_MODE_SYSTEM:I = 0x0

.field private static final POWER_MODE_USER_DEFINE:I = 0x1

.field private static appSupperBlackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static appSupperSystemSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1357
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    .line 1358
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    .line 1366
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    const-string v1, "com.meizu.media.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1367
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    const-string v1, "com.meizu.media.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1368
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.launcher3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1369
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1370
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1371
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1372
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.meizu.powersave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1373
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.meizu.power"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1374
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1375
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.meizu.safe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1376
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1377
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1378
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1379
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentInputMethod()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1418
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1419
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    const-string v4, ""

    .line 1431
    :cond_0
    :goto_0
    return-object v4

    .line 1420
    :cond_1
    const-string v4, ""

    .line 1421
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, "currentInputMethodId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1424
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1425
    .local v3, "methodId":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 1426
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1430
    .end local v1    # "currentInputMethodId":Ljava/lang/String;
    .end local v3    # "methodId":[Ljava/lang/String;
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1431
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_0
.end method

.method static interceptForSupperModePermissionControl(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1382
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1383
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1386
    .local v1, "powerMode":I
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_current_power_mode"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1392
    :goto_0
    const/4 v3, 0x3

    if-ne v3, v1, :cond_0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->isPowerSupperPermit(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1393
    const/4 v2, 0x1

    .line 1395
    :cond_0
    return v2

    .line 1389
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isFlagSystem(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1437
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1438
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1447
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v3

    .line 1439
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1440
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 1442
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1446
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1447
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static isImportantUserApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1409
    invoke-static {}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    const/4 v0, 0x1

    .line 1412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPowerSupperPermit(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1400
    if-eqz p0, :cond_0

    const-string v2, ""

    if-ne p0, v2, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return v0

    .line 1401
    :cond_1
    sget-object v2, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1402
    sget-object v2, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1403
    :cond_2
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->isFlagSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1404
    :cond_3
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->isImportantUserApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
