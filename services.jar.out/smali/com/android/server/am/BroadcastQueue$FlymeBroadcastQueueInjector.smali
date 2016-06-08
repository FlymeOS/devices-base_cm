.class Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    sput-object v1, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    sput-object v1, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "com.insdio.aqicn.airwidget.intent.action.CLICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    .line 1304
    if-nez p0, :cond_1

    .line 1305
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 1322
    :goto_0
    return v6

    .line 1305
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 1307
    :cond_1
    if-nez p1, :cond_2

    .line 1308
    const/4 v6, -0x2

    goto :goto_0

    .line 1310
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1311
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 1312
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1314
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1315
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 1316
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1319
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1320
    const/4 v6, 0x0

    goto :goto_0

    .line 1322
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method static interceptForPermissionControl(ILjava/lang/String;)Z
    .locals 7
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1326
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1327
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v4, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->appWidgetList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return v2

    .line 1331
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1332
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    .line 1338
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 1340
    .local v2, "limit":Z
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x41

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1343
    .local v3, "value":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1344
    const/4 v2, 0x0

    goto :goto_0

    .line 1346
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 1348
    .end local v3    # "value":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1336
    .end local v2    # "limit":Z
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method static isSystemSignatures(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1281
    const/4 v2, 0x0

    .line 1282
    .local v2, "isSystemSignaturesFlag":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 1283
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1284
    .local v3, "pm":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    if-nez v4, :cond_0

    .line 1286
    :try_start_0
    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v4, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1291
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_1

    .line 1293
    const/16 v4, 0x40

    :try_start_1
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1294
    .local v0, "appSignature":[Landroid/content/pm/Signature;
    sget-object v4, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->systemSignature:[Landroid/content/pm/Signature;

    invoke-static {v4, v0}, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 1295
    const/4 v2, 0x1

    .line 1300
    .end local v0    # "appSignature":[Landroid/content/pm/Signature;
    :cond_1
    :goto_1
    return v2

    .line 1297
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1287
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static setCurrentBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V
    .locals 0
    .param p0, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 1277
    sput-object p0, Lcom/android/server/am/BroadcastQueue$FlymeBroadcastQueueInjector;->r:Lcom/android/server/am/BroadcastRecord;

    .line 1278
    return-void
.end method
