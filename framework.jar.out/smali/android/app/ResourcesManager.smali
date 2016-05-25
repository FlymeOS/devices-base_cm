.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field static final DEBUG_CACHE:Z = false

.field static final DEBUG_STATS:Z = true

.field private static final NUM_DEFAULT_ASSETS:I = 0x2

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultDisplayMetrics:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/DisplayAdjustments;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mTmpConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 13
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 712
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v2

    .line 713
    .local v2, "count":I
    const/4 v9, 0x2

    if-le v2, v9, :cond_1

    .line 714
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "basePackageName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 723
    .local v3, "piTheme":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual {p2, v0}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-interface {v9, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 729
    :goto_1
    if-eqz v3, :cond_0

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v9, :cond_3

    .line 730
    :cond_0
    const/4 v9, 0x0

    .line 749
    .end local v0    # "basePackageName":Ljava/lang/String;
    .end local v3    # "piTheme":Landroid/content/pm/PackageInfo;
    :goto_2
    return v9

    .line 715
    :cond_1
    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    .line 716
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "basePackageName":Ljava/lang/String;
    goto :goto_0

    .line 718
    .end local v0    # "basePackageName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 733
    .restart local v0    # "basePackageName":Ljava/lang/String;
    .restart local v3    # "piTheme":Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/content/pm/ThemeUtils;->getCommonPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 735
    .local v7, "themePackageName":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 736
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 737
    .local v8, "themePath":Ljava/lang/String;
    const-string v4, "assets/overlays/common/"

    .line 738
    .local v4, "prefixPath":Ljava/lang/String;
    const-string v9, "common"

    invoke-static {v9, v3}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v6

    .line 740
    .local v6, "resCachePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/resources.apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, "resApkPath":Ljava/lang/String;
    invoke-virtual {p1, v8, v5, v4}, Landroid/content/res/AssetManager;->addCommonOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 743
    .local v1, "cookie":I
    if-eqz v1, :cond_4

    .line 744
    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    .line 745
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    .line 749
    .end local v1    # "cookie":I
    .end local v4    # "prefixPath":Ljava/lang/String;
    .end local v5    # "resApkPath":Ljava/lang/String;
    .end local v6    # "resCachePath":Ljava/lang/String;
    .end local v8    # "themePath":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x1

    goto :goto_2

    .line 726
    .end local v7    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 13
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v8, 0x0

    .line 661
    const/4 v3, 0x0

    .line 663
    .local v3, "piIcon":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-interface {v9, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 668
    :goto_0
    if-eqz v3, :cond_0

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v9, :cond_1

    .line 695
    :cond_0
    :goto_1
    return v8

    .line 672
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "iconPkg":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 674
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 675
    .local v7, "themeIconPath":Ljava/lang/String;
    const-string v4, "assets/icons/"

    .line 676
    .local v4, "prefixPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "iconDir":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/resources.arsc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, "resTablePath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/resources.apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, "resApkPath":Ljava/lang/String;
    iget-boolean v8, v3, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v8, :cond_2

    .line 682
    const-string v4, ""

    .line 683
    const-string v5, ""

    .line 684
    const-string v6, ""

    .line 687
    :cond_2
    const/16 v8, 0x62

    invoke-virtual {p1, v7, v5, v4, v8}, Landroid/content/res/AssetManager;->addIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 689
    .local v0, "cookie":I
    if-eqz v0, :cond_3

    .line 690
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    .line 691
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    .line 695
    .end local v0    # "cookie":I
    .end local v1    # "iconDir":Ljava/lang/String;
    .end local v4    # "prefixPath":Ljava/lang/String;
    .end local v5    # "resApkPath":Ljava/lang/String;
    .end local v6    # "resTablePath":Ljava/lang/String;
    .end local v7    # "themeIconPath":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 665
    .end local v2    # "iconPkg":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method private attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 21
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 570
    const/4 v14, 0x0

    .line 571
    .local v14, "piTheme":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .line 572
    .local v13, "piTarget":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    .line 578
    .local v12, "piAndroid":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .line 579
    .local v9, "basePackageName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 580
    .local v16, "resourcePackageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v11

    .line 581
    .local v11, "count":I
    const/4 v3, 0x2

    if-le v11, v3, :cond_2

    .line 582
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 583
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBaseResourcePackageName(I)Ljava/lang/String;

    move-result-object v16

    .line 591
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 594
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v3, v9, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 600
    if-nez v13, :cond_0

    if-eqz v16, :cond_0

    .line 601
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 604
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v18, "android"

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 609
    :goto_1
    if-eqz v14, :cond_1

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    if-eqz v13, :cond_1

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    if-eqz v12, :cond_1

    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 613
    :cond_1
    const/4 v3, 0x0

    .line 649
    :goto_2
    return v3

    .line 584
    :cond_2
    const/4 v3, 0x2

    if-ne v11, v3, :cond_3

    .line 585
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 587
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 616
    :cond_4
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 617
    .local v17, "themePackageName":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 618
    .local v5, "themePath":Ljava/lang/String;
    iget-boolean v3, v13, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_5

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 619
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 620
    .local v7, "targetPackagePath":Ljava/lang/String;
    invoke-static {v9}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 622
    .local v8, "prefixPath":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v14}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v15

    .line 623
    .local v15, "resCachePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/resources.apk"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 624
    .local v6, "resApkPath":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 625
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 628
    .local v10, "cookie":I
    if-eqz v10, :cond_5

    .line 629
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .line 634
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v15    # "resCachePath":Ljava/lang/String;
    :cond_5
    iget-boolean v3, v13, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_6

    const-string v3, "android"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    const-string v18, "android"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 636
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v14}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v15

    .line 637
    .restart local v15    # "resCachePath":Ljava/lang/String;
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 638
    .restart local v8    # "prefixPath":Ljava/lang/String;
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 639
    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/resources.apk"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 640
    .restart local v6    # "resApkPath":Ljava/lang/String;
    const-string v3, "android"

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 641
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 643
    .restart local v10    # "cookie":I
    if-eqz v10, :cond_6

    .line 644
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .line 649
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v15    # "resCachePath":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 606
    .end local v5    # "themePath":Ljava/lang/String;
    .end local v17    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private detachThemeAssets(Landroid/content/res/AssetManager;)V
    .locals 8
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 753
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemePackageName()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "themePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackageName()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "iconPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResPackageName()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "commonResPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    if-lez v5, :cond_0

    .line 759
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 760
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    .line 764
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    if-lez v5, :cond_1

    .line 765
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 766
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    .line 769
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v3

    .line 770
    .local v3, "themeCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 772
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 773
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 772
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 776
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 777
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 80
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 84
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 549
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 550
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 554
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 552
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 553
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 554
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private getThemeConfig()Landroid/content/res/ThemeConfig;
    .locals 2

    .prologue
    .line 781
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 782
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setActivityIcons(Landroid/content/res/Resources;)V
    .locals 17
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 409
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 410
    .local v8, "iconResources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/PackageItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "pkgName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 412
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 415
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v14, v11, v15, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v13, v14, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 423
    .local v13, "themeConfig":Landroid/content/res/ThemeConfig;
    if-eqz v11, :cond_0

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 456
    .end local v13    # "themeConfig":Landroid/content/res/ThemeConfig;
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v5

    .line 418
    .local v5, "e1":Landroid/os/RemoteException;
    const-string v14, "ResourcesManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to get pkg "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 429
    .end local v5    # "e1":Landroid/os/RemoteException;
    .restart local v13    # "themeConfig":Landroid/content/res/ThemeConfig;
    :cond_0
    if-eqz v10, :cond_2

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_2

    .line 430
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 431
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->themedIcon:I

    if-nez v14, :cond_1

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    .line 432
    :cond_1
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    :cond_2
    if-eqz v10, :cond_7

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_7

    .line 438
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v3, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_7

    aget-object v1, v3, v6

    .line 439
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v14, :cond_5

    iget v14, v1, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v14, :cond_3

    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    .line 440
    :cond_3
    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v8, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 441
    :cond_5
    if-eqz v2, :cond_4

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v14, :cond_4

    iget v14, v1, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v14, :cond_6

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    .line 443
    :cond_6
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 448
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    .line 449
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 451
    .local v12, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v12}, Landroid/content/pm/IPackageManager;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v7

    .line 452
    .local v7, "iconInfo":Landroid/app/ComposedIconInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 453
    .end local v7    # "iconInfo":Landroid/app/ComposedIconInfo;
    :catch_1
    move-exception v4

    .line 454
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "ResourcesManager"

    const-string v15, "Failed to retrieve ComposedIconInfo"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 460
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v12, :cond_0

    .line 461
    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    iput-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 463
    :cond_0
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_1

    if-nez p2, :cond_1

    .line 466
    const/4 v12, 0x0

    .line 545
    :goto_0
    return v12

    .line 468
    :cond_1
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 469
    .local v1, "changes":I
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->flushDisplayMetricsLocked()V

    .line 470
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 472
    .local v2, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v12, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 474
    :cond_2
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 475
    or-int/lit16 v1, v1, 0xd00

    .line 481
    :cond_3
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v12, :cond_4

    .line 482
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v12}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 485
    :cond_4
    invoke-static {p1, v2, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 487
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 490
    const/4 v11, 0x0

    .line 492
    .local v11, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_f

    .line 493
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesKey;

    .line 494
    .local v8, "key":Landroid/content/res/ResourcesKey;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    .line 495
    .local v9, "r":Landroid/content/res/Resources;
    if-eqz v9, :cond_e

    .line 498
    iget v3, v8, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 499
    .local v3, "displayId":I
    if-nez v3, :cond_b

    const/4 v7, 0x1

    .line 500
    .local v7, "isDefaultDisplay":Z
    :goto_2
    move-object v4, v2

    .line 501
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    .line 502
    .local v5, "hasOverrideConfiguration":Z
    const/high16 v12, 0x100000

    and-int/2addr v12, v1

    if-eqz v12, :cond_c

    const/4 v10, 0x1

    .line 503
    .local v10, "themeChanged":Z
    :goto_3
    if-eqz v10, :cond_5

    .line 504
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 505
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->hasThemeSupport()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 506
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    .line 507
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V

    .line 508
    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->detachThemeAssets(Landroid/content/res/AssetManager;)V

    .line 509
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v12, :cond_5

    .line 510
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 511
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 512
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 513
    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 518
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v5, :cond_d

    .line 519
    :cond_6
    if-nez v11, :cond_7

    .line 520
    new-instance v11, Landroid/content/res/Configuration;

    .end local v11    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    .line 522
    .restart local v11    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_7
    invoke-virtual {v11, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 523
    if-nez v7, :cond_8

    .line 524
    invoke-virtual {p0, v3}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 525
    invoke-virtual {p0, v4, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 527
    :cond_8
    if-eqz v5, :cond_9

    .line 528
    iget-object v12, v8, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v12}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 530
    :cond_9
    invoke-virtual {v9, v11, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 534
    :goto_4
    if-eqz v10, :cond_a

    .line 535
    invoke-virtual {v9}, Landroid/content/res/Resources;->updateStringCache()V

    .line 492
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 499
    .restart local v3    # "displayId":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_2

    .line 502
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "hasOverrideConfiguration":Z
    .restart local v7    # "isDefaultDisplay":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_3

    .line 532
    .restart local v10    # "themeChanged":Z
    :cond_d
    invoke-virtual {v9, p1, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_4

    .line 541
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_e
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_5

    .line 545
    .end local v8    # "key":Landroid/content/res/ResourcesKey;
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_f
    if-eqz v1, :cond_10

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 137
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 138
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 139
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 140
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 141
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 142
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 143
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 144
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 151
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 152
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 153
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 154
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 155
    return-void

    .line 147
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 148
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public flushDisplayMetricsLocked()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 94
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 97
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .line 102
    .local v4, "isDefaultDisplay":Z
    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/DisplayMetrics;

    move-object v2, v5

    .line 103
    .local v2, "dm":Landroid/util/DisplayMetrics;
    :goto_1
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 132
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .local v3, "dm":Ljava/lang/Object;
    :goto_2
    return-object v3

    .line 101
    .end local v3    # "dm":Ljava/lang/Object;
    .end local v4    # "isDefaultDisplay":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 102
    .restart local v4    # "isDefaultDisplay":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 106
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 108
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 109
    .local v1, "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_3

    .line 111
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    move-object v3, v2

    .line 112
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .line 115
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_3
    if-eqz v4, :cond_4

    .line 116
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_4
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 120
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_3
    move-object v3, v2

    .line 132
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .line 127
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_3
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Landroid/content/Context;Z)Landroid/content/res/Resources;
    .locals 28
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "token"    # Landroid/os/IBinder;
    .param p10, "context"    # Landroid/content/Context;
    .param p11, "isThemeable"    # Z

    .prologue
    .line 179
    move-object/from16 v0, p8

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 180
    .local v6, "scale":F
    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->getThemeConfig()Landroid/content/res/ThemeConfig;

    move-result-object v8

    .line 181
    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v7, p11

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;Landroid/os/IBinder;)V

    .line 184
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 189
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/ref/WeakReference;

    .line 190
    .local v27, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v11, v3

    .line 192
    .local v11, "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    monitor-exit p0

    move-object/from16 v19, v11

    .line 304
    :goto_1
    return-object v19

    .line 190
    .end local v11    # "r":Landroid/content/res/Resources;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 199
    .restart local v11    # "r":Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    new-instance v9, Landroid/content/res/AssetManager;

    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .line 207
    .local v9, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    .line 208
    move/from16 v0, p11

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    .line 212
    if-eqz p1, :cond_2

    .line 213
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 214
    const/16 v19, 0x0

    goto :goto_1

    .line 199
    .end local v9    # "assets":Landroid/content/res/AssetManager;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 218
    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    if-eqz p2, :cond_4

    .line 219
    move-object/from16 v17, p2

    .local v17, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    aget-object v26, v17, v21

    .line 220
    .local v26, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 221
    const/16 v19, 0x0

    goto :goto_1

    .line 219
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 226
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v24    # "len$":I
    .end local v26    # "splitResDir":Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_5

    .line 227
    move-object/from16 v17, p3

    .restart local v17    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    .restart local v24    # "len$":I
    const/16 v21, 0x0

    .end local v11    # "r":Landroid/content/res/Resources;
    .restart local v21    # "i$":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v10, v17, v21

    .line 228
    .local v10, "idmapPath":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 232
    .end local v10    # "idmapPath":Ljava/lang/String;
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v24    # "len$":I
    :cond_5
    if-eqz p4, :cond_7

    .line 233
    move-object/from16 v17, p4

    .restart local v17    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    .restart local v24    # "len$":I
    const/16 v21, 0x0

    .restart local v21    # "i$":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    aget-object v25, v17, v21

    .line 234
    .local v25, "libDir":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 235
    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' does not exist or contains no resources."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 242
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v24    # "len$":I
    .end local v25    # "libDir":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 244
    .local v13, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_e

    const/16 v23, 0x1

    .line 245
    .local v23, "isDefaultDisplay":Z
    :goto_5
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v20

    .line 246
    .local v20, "hasOverrideConfig":Z
    if-eqz v23, :cond_8

    if-eqz v20, :cond_f

    .line 247
    :cond_8
    new-instance v14, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 248
    .local v14, "config":Landroid/content/res/Configuration;
    if-nez v23, :cond_9

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 251
    :cond_9
    if-eqz v20, :cond_a

    .line 252
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v14, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 258
    :cond_a
    :goto_6
    const/16 v22, 0x0

    .line 260
    .local v22, "iconsAttached":Z
    if-eqz v14, :cond_c

    invoke-virtual/range {p10 .. p10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 261
    if-nez v8, :cond_b

    .line 263
    :try_start_2
    invoke-virtual/range {p10 .. p10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/ThemeConfig;->getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 270
    :cond_b
    :goto_7
    if-eqz p11, :cond_10

    .line 271
    if-eqz v8, :cond_c

    .line 272
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 273
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 274
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v22

    .line 283
    :cond_c
    :goto_8
    new-instance v11, Landroid/content/res/Resources;

    move-object v12, v9

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-direct/range {v11 .. v16}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 284
    .restart local v11    # "r":Landroid/content/res/Resources;
    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 292
    :cond_d
    monitor-enter p0

    .line 293
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v27, Ljava/lang/ref/WeakReference;

    .line 294
    .restart local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v27, :cond_11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v19, v3

    .line 295
    .local v19, "existing":Landroid/content/res/Resources;
    :goto_9
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 298
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 299
    monitor-exit p0

    goto/16 :goto_1

    .line 305
    .end local v19    # "existing":Landroid/content/res/Resources;
    .end local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 244
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v14    # "config":Landroid/content/res/Configuration;
    .end local v20    # "hasOverrideConfig":Z
    .end local v22    # "iconsAttached":Z
    .end local v23    # "isDefaultDisplay":Z
    .restart local v27    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 255
    .restart local v20    # "hasOverrideConfig":Z
    .restart local v23    # "isDefaultDisplay":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .restart local v14    # "config":Landroid/content/res/Configuration;
    goto :goto_6

    .line 264
    .restart local v22    # "iconsAttached":Z
    :catch_0
    move-exception v18

    .line 265
    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "ResourcesManager"

    const-string v4, "ThemeConfig.getBootTheme failed, falling back to system theme"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-static {}, Landroid/content/res/ThemeConfig;->getSystemTheme()Landroid/content/res/ThemeConfig;

    move-result-object v8

    goto :goto_7

    .line 276
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_10
    if-eqz v8, :cond_c

    const-string/jumbo v3, "system"

    invoke-virtual {v8}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 279
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->recreateDefaults(Z)V

    goto :goto_8

    .line 294
    .restart local v11    # "r":Landroid/content/res/Resources;
    :cond_11
    const/16 v19, 0x0

    goto :goto_9

    .line 303
    .restart local v19    # "existing":Landroid/content/res/Resources;
    :cond_12
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v19, v11

    goto/16 :goto_1
.end method

.method public getTopLevelThemedResources(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Z)Landroid/content/res/Resources;
    .locals 21
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "themePackageName"    # Ljava/lang/String;
    .param p5, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "isThemeable"    # Z

    .prologue
    .line 322
    new-instance v15, Landroid/content/res/ThemeConfig$Builder;

    invoke-direct {v15}, Landroid/content/res/ThemeConfig$Builder;-><init>()V

    .line 323
    .local v15, "builder":Landroid/content/res/ThemeConfig$Builder;
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 324
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 325
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 326
    invoke-virtual {v15}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v8

    .line 328
    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p6

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v7, p8

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;Landroid/os/IBinder;)V

    .line 331
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 332
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/ref/WeakReference;

    .line 333
    .local v20, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v9, v3

    .line 334
    .local v9, "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    monitor-exit p0

    move-object/from16 v16, v9

    .line 395
    :goto_1
    return-object v16

    .line 333
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 341
    .restart local v9    # "r":Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    new-instance v10, Landroid/content/res/AssetManager;

    invoke-direct {v10}, Landroid/content/res/AssetManager;-><init>()V

    .line 344
    .local v10, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    .line 345
    move/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    .line 346
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 347
    const/16 v16, 0x0

    goto :goto_1

    .line 341
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v10    # "assets":Landroid/content/res/AssetManager;
    .end local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 351
    .restart local v9    # "r":Landroid/content/res/Resources;
    .restart local v10    # "assets":Landroid/content/res/AssetManager;
    .restart local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 353
    .local v11, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_8

    const/16 v19, 0x1

    .line 354
    .local v19, "isDefaultDisplay":Z
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v17

    .line 355
    .local v17, "hasOverrideConfig":Z
    if-eqz v19, :cond_3

    if-eqz v17, :cond_9

    .line 356
    :cond_3
    new-instance v12, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 357
    .local v12, "config":Landroid/content/res/Configuration;
    if-nez v19, :cond_4

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 360
    :cond_4
    if-eqz v17, :cond_5

    .line 361
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 367
    :cond_5
    :goto_3
    const/16 v18, 0x0

    .line 368
    .local v18, "iconsAttached":Z
    if-eqz p8, :cond_6

    .line 370
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 371
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 372
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v18

    .line 374
    :cond_6
    new-instance v9, Landroid/content/res/Resources;

    .end local v9    # "r":Landroid/content/res/Resources;
    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 375
    .restart local v9    # "r":Landroid/content/res/Resources;
    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 383
    :cond_7
    monitor-enter p0

    .line 384
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v20, Ljava/lang/ref/WeakReference;

    .line 385
    .restart local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v16, v3

    .line 386
    .local v16, "existing":Landroid/content/res/Resources;
    :goto_4
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 389
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 390
    monitor-exit p0

    goto/16 :goto_1

    .line 396
    .end local v16    # "existing":Landroid/content/res/Resources;
    .end local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 353
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v17    # "hasOverrideConfig":Z
    .end local v18    # "iconsAttached":Z
    .end local v19    # "isDefaultDisplay":Z
    .restart local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_8
    const/16 v19, 0x0

    goto :goto_2

    .line 364
    .restart local v17    # "hasOverrideConfig":Z
    .restart local v19    # "isDefaultDisplay":Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .restart local v12    # "config":Landroid/content/res/Configuration;
    goto :goto_3

    .line 385
    .restart local v18    # "iconsAttached":Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_4

    .line 394
    .restart local v16    # "existing":Landroid/content/res/Resources;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v9

    goto/16 :goto_1
.end method
