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


# static fields
.field static final CUSTOM_LOCK_WALLPAPERPATH:Ljava/lang/String; = "/custom/meizu/wallpaper/default_lock_wallpaper.png"

.field static final CUSTOM_WALLPAPERPATH:Ljava/lang/String; = "/custom/meizu/wallpaper/default_wallpaper.png"

.field static mFlymeLockWallpaperPath:Ljava/lang/String;

.field static mFlymeWallpaperPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1223
    const-string v0, ""

    sput-object v0, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    .line 1224
    const-string v0, ""

    sput-object v0, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkWallpaperPath(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mWallpaperPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1263
    if-nez p0, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return v1

    .line 1267
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static flymeOpenDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1232
    const-string v5, "/custom/meizu/wallpaper/default_wallpaper.png"

    invoke-static {v5}, Landroid/app/WallpaperManager$FlymeInjector;->checkWallpaperPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1233
    const/4 v3, 0x0

    .line 1235
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    const-string v6, "/custom/meizu/wallpaper/default_wallpaper.png"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :cond_0
    :goto_0
    return-object v3

    .line 1237
    :catch_0
    move-exception v1

    .line 1238
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/flyme/internal/R$drawable;->default_wallpaper:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1239
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1244
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    const-string/jumbo v0, "ro.config.wallpaper"

    .line 1245
    .local v0, "PROP_WALLPAPER":Ljava/lang/String;
    sget-object v5, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LAUNCHER:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    invoke-static {p0, v5}, Landroid/app/WallpaperManager;->getFlymeDefWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;)Ljava/io/InputStream;

    move-result-object v3

    .line 1246
    .restart local v3    # "is":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 1248
    const-string/jumbo v5, "ro.config.wallpaper"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1249
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1250
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1253
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "is":Ljava/io/InputStream;
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1254
    :catch_1
    move-exception v5

    .line 1259
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/flyme/internal/R$drawable;->default_wallpaper:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0
.end method

.method private static getDeviceColor(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1304
    :try_start_0
    invoke-static {}, Landroid/os/BuildExt;->getColorType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1306
    :goto_0
    return-object v1

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unknown"

    goto :goto_0
.end method

.method static initColorValue(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 1276
    sget-object v9, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1279
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$array;->device_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1280
    .local v2, "colorVlaue":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$array;->launcher_wallpaper_name:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1281
    .local v7, "launcherWallpaperName":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/flyme/internal/R$array;->lock_wallpaper_name:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1282
    .local v8, "lockWallpaperName":[Ljava/lang/String;
    const-string v0, "/system/customizecenter/wallpapers/"

    .line 1284
    .local v0, "FLYME_WALLPAPER_ROOT_PATH":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager$FlymeInjector;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1285
    .local v3, "deviceColor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1286
    .local v6, "index":I
    if-eqz v3, :cond_2

    const-string/jumbo v9, "unknown"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1287
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "color":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v2

    if-ge v5, v9, :cond_2

    .line 1289
    aget-object v9, v2, v5

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1290
    move v6, v5

    .line 1288
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1294
    .end local v1    # "color":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customizecenter/wallpapers/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    .line 1295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customizecenter/wallpapers/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1296
    .end local v3    # "deviceColor":Ljava/lang/String;
    .end local v6    # "index":I
    :catch_0
    move-exception v4

    .line 1297
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customizecenter/wallpapers/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    .line 1298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customizecenter/wallpapers/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    goto/16 :goto_0
.end method
