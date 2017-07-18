.class final Landroid/app/WallpaperManager$FlymeInjector;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;
    }
.end annotation


# static fields
.field static final CUSTOM_LOCK_WALLPAPERPATH:Ljava/lang/String; = "/custom/meizu/wallpaper/default_lock_wallpaper.png"

.field static final CUSTOM_WALLPAPERPATH:Ljava/lang/String; = "/custom/meizu/wallpaper/default_wallpaper.png"

.field static mFlymeLockWallpaperPath:Ljava/lang/String;

.field static mFlymeWallpaperPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1296
    const-string/jumbo v0, ""

    sput-object v0, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    .line 1297
    const-string/jumbo v0, ""

    sput-object v0, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    .line 1293
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkWallpaperPath(Ljava/lang/String;)Z
    .locals 3
    .param p0, "wallpaperPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1336
    if-nez p0, :cond_0

    .line 1337
    return v2

    .line 1340
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    const/4 v1, 0x1

    return v1

    .line 1344
    :cond_1
    return v2
.end method

.method static initColorValue(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1349
    sget-object v4, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1352
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$array;->device_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, "colorVlaue":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$array;->launcher_wallpaper_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "launcherWallpaperName":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$array;->lock_wallpaper_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1355
    .local v3, "lockWallpaperName":[Ljava/lang/String;
    const-string/jumbo v0, "/system/customizecenter/wallpapers/"

    .line 1356
    .local v0, "FLYME_WALLPAPER_ROOT_PATH":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/system/customizecenter/wallpapers/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    .line 1357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/system/customizecenter/wallpapers/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    .line 1348
    return-void

    .line 1350
    .end local v0    # "FLYME_WALLPAPER_ROOT_PATH":Ljava/lang/String;
    .end local v1    # "colorVlaue":[Ljava/lang/String;
    .end local v2    # "launcherWallpaperName":[Ljava/lang/String;
    .end local v3    # "lockWallpaperName":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static isFlymeChildrenMode(Landroid/app/WallpaperManager;)Z
    .locals 5
    .param p0, "wm"    # Landroid/app/WallpaperManager;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1362
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v0

    .line 1363
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "children_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1364
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1368
    :cond_0
    return v3

    .line 1365
    :cond_1
    sget v1, Lcom/flyme/internal/R$string;->children_mode_can_not_set_wallpaper:I

    invoke-static {v0, v1}, Landroid/app/WallpaperManager$FlymeInjector;->showUnSupportSetWallpaperToast(Landroid/content/Context;I)V

    .line 1366
    return v4
.end method

.method static openFlymeDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1305
    const-string/jumbo v6, "/custom/meizu/wallpaper/default_wallpaper.png"

    invoke-static {v6}, Landroid/app/WallpaperManager$FlymeInjector;->checkWallpaperPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1306
    const/4 v4, 0x0

    .line 1308
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/custom/meizu/wallpaper/default_wallpaper.png"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    .local v4, "is":Ljava/io/InputStream;
    return-object v4

    .line 1310
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1311
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$drawable;->default_wallpaper:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1312
    .restart local v4    # "is":Ljava/io/InputStream;
    return-object v4

    .line 1317
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    const-string/jumbo v0, "ro.config.wallpaper"

    .line 1318
    .local v0, "PROP_WALLPAPER":Ljava/lang/String;
    sget-object v6, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LAUNCHER:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    invoke-static {p0, v6}, Landroid/app/WallpaperManager;->getFlymeDefWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;)Ljava/io/InputStream;

    move-result-object v4

    .line 1319
    .restart local v4    # "is":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    return-object v4

    .line 1321
    :cond_1
    const-string/jumbo v6, "ro.config.wallpaper"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1322
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1323
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1326
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    .line 1327
    :catch_1
    move-exception v2

    .line 1332
    .end local v3    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$drawable;->default_wallpaper:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    return-object v6
.end method

.method private static showUnSupportSetWallpaperToast(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgStringResId"    # I

    .prologue
    .line 1372
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1373
    .local v1, "handlerToast":Landroid/os/Handler;
    new-instance v0, Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;

    invoke-direct {v0, p0, p1}, Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;-><init>(Landroid/content/Context;I)V

    .line 1374
    .local v0, "childrenModeToast":Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1371
    return-void
.end method
