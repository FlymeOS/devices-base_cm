.class Lcom/android/server/SystemServer$FlymeInjector;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFlymePppoeAndSambaService(Lcom/android/server/SystemServer;)V
    .locals 0
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1305
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addPppoeService(Lcom/android/server/SystemServer;)V

    .line 1306
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addSambaService(Lcom/android/server/SystemServer;)V

    .line 1307
    return-void
.end method

.method static addFlymeStatusBarManagerService()V
    .locals 5

    .prologue
    .line 1344
    const/4 v1, 0x0

    .line 1346
    .local v1, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_0
    new-instance v2, Lmeizu/statusbar/FlymeStatusBarManagerService;

    invoke-direct {v2}, Lmeizu/statusbar/FlymeStatusBarManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .local v2, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_1
    const-string v3, "flyme_statusbar"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1351
    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :goto_0
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "SystemServer"

    const-string v4, "Failed to add FlymeStatusBarManagerService "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1348
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    goto :goto_1
.end method

.method static addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1361
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementServiceFlyme;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementServiceFlyme;

    move-result-object v1

    .line 1362
    .local v1, "networkManagementService":Lcom/android/server/NetworkManagementServiceFlyme;
    const-string v2, "networkmanagement_service_flyme"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1363
    return-void
.end method

.method private static addPppoeService(Lcom/android/server/SystemServer;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1313
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    new-instance v2, Landroid/net/pppoe/PppoeService;

    invoke-direct {v2, v0}, Landroid/net/pppoe/PppoeService;-><init>(Landroid/content/Context;)V

    .line 1314
    .local v2, "service":Landroid/net/pppoe/PppoeService;
    const-string v3, "pppoe"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    .end local v2    # "service":Landroid/net/pppoe/PppoeService;
    :goto_0
    return-void

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "Failed to add pppoe service "

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addSambaService(Lcom/android/server/SystemServer;)V
    .locals 8
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1324
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 1325
    .local v4, "sambaServer":Lcom/android/server/SambaServerService;
    const/4 v2, 0x0

    .line 1328
    .local v2, "sambaClient":Lcom/android/server/SambaClientService;
    :try_start_0
    new-instance v5, Lcom/android/server/SambaServerService;

    invoke-direct {v5, v0}, Lcom/android/server/SambaServerService;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    .end local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    .local v5, "sambaServer":Lcom/android/server/SambaServerService;
    :try_start_1
    const-string v6, "samba_server"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 1335
    .end local v5    # "sambaServer":Lcom/android/server/SambaServerService;
    .restart local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    :goto_0
    :try_start_2
    new-instance v3, Lcom/android/server/SambaClientService;

    invoke-direct {v3, v0}, Lcom/android/server/SambaClientService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1336
    .end local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    .local v3, "sambaClient":Lcom/android/server/SambaClientService;
    :try_start_3
    const-string v6, "samba_client"

    invoke-static {v6, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .line 1340
    .end local v3    # "sambaClient":Lcom/android/server/SambaClientService;
    .restart local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    :goto_1
    return-void

    .line 1330
    :catch_0
    move-exception v1

    .line 1331
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SambaServer Service "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1337
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1338
    .restart local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SambaClient Service "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1337
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    .restart local v3    # "sambaClient":Lcom/android/server/SambaClientService;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "sambaClient":Lcom/android/server/SambaClientService;
    .restart local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    goto :goto_3

    .line 1330
    .end local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    .restart local v5    # "sambaServer":Lcom/android/server/SambaServerService;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "sambaServer":Lcom/android/server/SambaServerService;
    .restart local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    goto :goto_2
.end method

.method private static startFlymeAccessService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 7
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v1

    .line 1258
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/meizu/server/AccessControlService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerPolicy()Landroid/view/WindowManagerPolicy;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    .line 1259
    .local v0, "acs":Lcom/meizu/server/AccessControlService;
    const-string v4, "access_control"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1260
    if-eqz v0, :cond_0

    .line 1262
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/server/AccessControlService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/InjectorAMS;->setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V

    .line 1271
    return-void

    .line 1263
    :catch_0
    move-exception v2

    .line 1264
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/String;

    const-string v4, "making AccessControlService Service ready"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "SystemServer"

    const-string v5, "***********************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT FAILURE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static startFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1300
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->startMoveWindowService(Landroid/content/Context;)Lcom/android/server/wm/MoveWindowService;

    move-result-object v1

    .line 1301
    .local v1, "mws":Lcom/android/server/wm/MoveWindowService;
    const-string v2, "move_window"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1302
    return-void
.end method

.method private static startFlymePackageManagerService(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1293
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/InjectorPMS;->startFlymePackageManagerService(Landroid/content/Context;)Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v1

    .line 1294
    .local v1, "service":Lcom/android/server/pm/FlymePackageManagerService;
    const-string v2, "flyme_packagemanager"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1295
    return-void
.end method

.method static startFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "wallpaperManagerService"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeAccessService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeThemeService(Lcom/android/server/SystemServer;)V

    invoke-static {p0, p2}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-static {p0, p1}, Lcom/android/server/SystemServer$FlymeInjector;->startPermissionControlService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymePackageManagerService(Lcom/android/server/SystemServer;)V

    return-void
.end method

.method private static startFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1276
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->startFlymeWallpaperService(Landroid/content/Context;)Lcom/android/server/wallpaper/FlymeWallpaperService;

    move-result-object v1

    .line 1277
    .local v1, "fws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    const-string v2, "flyme_wallpaper"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1278
    return-void
.end method

.method private static startPermissionControlService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1283
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1284
    .local v0, "context":Landroid/content/Context;
    const-string v2, "flyme_permission"

    new-instance v3, Lcom/meizu/server/FlymePermissionService;

    invoke-direct {v3, v0}, Lcom/meizu/server/FlymePermissionService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1285
    :catch_0
    move-exception v1

    .line 1286
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SystemServer"

    const-string v3, "Failed to add flyme_permission service "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static startFlymeThemeService(Lcom/android/server/SystemServer;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {v2, v0}, Landroid/content/res/flymetheme/FlymeThemeService;-><init>(Landroid/content/Context;)V

    .local v2, "flymeThemeService":Landroid/content/res/flymetheme/FlymeThemeService;
    const-string v3, "flyme_theme_service"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "BOOT FAILURE for making flymeThemeService Service ready"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
