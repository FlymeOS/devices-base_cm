.class final Lcom/android/server/SystemServer$FlymeInjector;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFlymeAccessService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v1

    .line 1266
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/meizu/server/AccessControlService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerPolicy()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    .line 1267
    .local v0, "acs":Lcom/meizu/server/AccessControlService;
    const-string v3, "access_control"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1268
    if-eqz v0, :cond_0

    .line 1270
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/server/AccessControlService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V

    .line 1277
    return-void

    .line 1271
    :catch_0
    move-exception v2

    .line 1272
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "BOOT FAILURE for making AccessControlService Service ready"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1324
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->startMoveWindowService(Landroid/content/Context;)Lcom/android/server/wm/MoveWindowService;

    move-result-object v1

    .line 1325
    .local v1, "mws":Lcom/android/server/wm/MoveWindowService;
    const-string v2, "move_window"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1326
    return-void
.end method

.method private static addFlymePackageManagerService(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1316
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->startFlymePackageManagerService(Landroid/content/Context;)Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v1

    .line 1317
    .local v1, "service":Lcom/android/server/pm/FlymePackageManagerService;
    const-string v2, "flyme_packagemanager"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1318
    return-void
.end method

.method static addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "wallpaperManagerService"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 1256
    invoke-static {p0, p1}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    .line 1257
    invoke-static {p0, p1}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeAccessService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    .line 1258
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeThemeService(Lcom/android/server/SystemServer;)V

    .line 1259
    invoke-static {p0, p2}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 1260
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addPermissionControlService(Lcom/android/server/SystemServer;)V

    .line 1261
    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePackageManagerService(Lcom/android/server/SystemServer;)V

    .line 1262
    return-void
.end method

.method static addFlymeStatusBarManagerService()V
    .locals 4

    .prologue
    .line 1353
    const/4 v1, 0x0

    .line 1355
    .local v1, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_0
    new-instance v2, Lmeizu/statusbar/FlymeStatusBarManagerService;

    invoke-direct {v2}, Lmeizu/statusbar/FlymeStatusBarManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .local v2, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_1
    const-string v3, "flyme_statusbar"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1360
    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :goto_0
    return-void

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "FlymeStatusBarManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1357
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

.method private static addFlymeThemeService(Lcom/android/server/SystemServer;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1282
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {v2, v0}, Landroid/content/res/flymetheme/FlymeThemeService;-><init>(Landroid/content/Context;)V

    .line 1283
    .local v2, "flymeThemeService":Landroid/content/res/flymetheme/FlymeThemeService;
    const-string v3, "flyme_theme_service"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1284
    if-eqz v2, :cond_0

    .line 1286
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1287
    :catch_0
    move-exception v1

    .line 1288
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "BOOT FAILURE for making flymeThemeService Service ready"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1297
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->startFlymeWallpaperService(Landroid/content/Context;)Lcom/android/server/wallpaper/FlymeWallpaperService;

    move-result-object v1

    .line 1298
    .local v1, "fws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    const-string v2, "flyme_wallpaper"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1299
    return-void
.end method

.method static addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1366
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementServiceFlyme;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementServiceFlyme;

    move-result-object v1

    .line 1367
    .local v1, "networkManagementService":Lcom/android/server/NetworkManagementServiceFlyme;
    const-string v2, "networkmanagement_service_flyme"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1368
    return-void
.end method

.method private static addPermissionControlService(Lcom/android/server/SystemServer;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1305
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1306
    .local v0, "context":Landroid/content/Context;
    const-string v2, "flyme_permission"

    new-instance v3, Lcom/meizu/server/FlymePermissionService;

    invoke-direct {v3, v0}, Lcom/meizu/server/FlymePermissionService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1307
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SystemServer"

    const-string v3, "Failed to add flyme_permission service "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static addSambaService(Lcom/android/server/SystemServer;)V
    .locals 8
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1332
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 1333
    .local v4, "sambaServer":Lcom/android/server/SambaServerService;
    const/4 v2, 0x0

    .line 1336
    .local v2, "sambaClient":Lcom/android/server/SambaClientService;
    :try_start_0
    new-instance v5, Lcom/android/server/SambaServerService;

    invoke-direct {v5, v0}, Lcom/android/server/SambaServerService;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    .end local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    .local v5, "sambaServer":Lcom/android/server/SambaServerService;
    :try_start_1
    const-string v6, "samba_server"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 1343
    .end local v5    # "sambaServer":Lcom/android/server/SambaServerService;
    .restart local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    :goto_0
    :try_start_2
    new-instance v3, Lcom/android/server/SambaClientService;

    invoke-direct {v3, v0}, Lcom/android/server/SambaClientService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1344
    .end local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    .local v3, "sambaClient":Lcom/android/server/SambaClientService;
    :try_start_3
    const-string v6, "samba_client"

    invoke-static {v6, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .line 1348
    .end local v3    # "sambaClient":Lcom/android/server/SambaClientService;
    .restart local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    :goto_1
    return-void

    .line 1338
    :catch_0
    move-exception v1

    .line 1339
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SambaServer Service "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1345
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1346
    .restart local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SambaClient Service "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1345
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    .restart local v3    # "sambaClient":Lcom/android/server/SambaClientService;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "sambaClient":Lcom/android/server/SambaClientService;
    .restart local v2    # "sambaClient":Lcom/android/server/SambaClientService;
    goto :goto_3

    .line 1338
    .end local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    .restart local v5    # "sambaServer":Lcom/android/server/SambaServerService;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "sambaServer":Lcom/android/server/SambaServerService;
    .restart local v4    # "sambaServer":Lcom/android/server/SambaServerService;
    goto :goto_2
.end method
