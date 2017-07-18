.class public final Landroid/app/LoadedApk$FlymeInjector;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final FLYME_INTERNAL_PACKAGE:Ljava/lang/String; = "com.flyme.internal"

.field private static final FLYME_PACKAGE:Ljava/lang/String; = "flyme"

.field private static flymePackageId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanFlymeTypeface()V
    .locals 1

    .prologue
    .line 1324
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->cleanflymeTypeface()V

    .line 1325
    invoke-static {}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->cleanFilter()V

    .line 1322
    return-void
.end method

.method public static getFlymePackageId()I
    .locals 1

    .prologue
    .line 1319
    sget v0, Landroid/app/LoadedApk$FlymeInjector;->flymePackageId:I

    return v0
.end method

.method static isFlymeRejectReceive(Landroid/content/Intent;Landroid/app/LoadedApk$ReceiverDispatcher;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "receiverDispatcher"    # Landroid/app/LoadedApk$ReceiverDispatcher;

    .prologue
    const/4 v4, 0x0

    .line 1304
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1305
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "pdus"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1306
    .local v1, "pduses":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1308
    iget-object v2, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v2

    .line 1307
    const/16 v3, 0xe

    invoke-static {v3, v2}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 1309
    const/4 v2, 0x1

    return v2

    .line 1313
    .end local v1    # "pduses":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1315
    :cond_0
    return v4
.end method

.method static rewriteRValues(Landroid/app/LoadedApk;Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 1
    .param p0, "loadedApk"    # Landroid/app/LoadedApk;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 1294
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/LoadedApk;->flymeInvokeMethodRewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 1295
    const-string/jumbo v0, "flyme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    sput p3, Landroid/app/LoadedApk$FlymeInjector;->flymePackageId:I

    .line 1297
    const-string/jumbo v0, "com.flyme.internal"

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/LoadedApk;->flymeInvokeMethodRewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 1293
    :cond_0
    return-void
.end method
