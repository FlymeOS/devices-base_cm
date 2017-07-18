.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NUM_DEFAULT_ASSETS:I = 0x2

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActiveResources:Landroid/util/ArrayMap;
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

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 61
    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    .line 56
    return-void
.end method

.method private attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 15
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 718
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v3

    .line 719
    .local v3, "count":I
    const/4 v11, 0x2

    if-le v3, v11, :cond_1

    .line 720
    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "basePackageName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 729
    .local v5, "piTheme":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 730
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 731
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 730
    const/4 v14, 0x0

    .line 729
    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 735
    .end local v5    # "piTheme":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v5, :cond_0

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v11, :cond_3

    .line 736
    :cond_0
    const/4 v11, 0x0

    return v11

    .line 721
    .end local v1    # "basePackageName":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    .line 722
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "basePackageName":Ljava/lang/String;
    goto :goto_0

    .line 724
    .end local v1    # "basePackageName":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    return v11

    .line 740
    .restart local v1    # "basePackageName":Ljava/lang/String;
    :cond_3
    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/content/pm/ThemeUtils;->getCommonPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 741
    .local v9, "themePackageName":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 755
    :cond_4
    :goto_2
    const/4 v11, 0x1

    return v11

    .line 742
    :cond_5
    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 743
    .local v10, "themePath":Ljava/lang/String;
    const-string/jumbo v6, "assets/overlays/common/"

    .line 745
    .local v6, "prefixPath":Ljava/lang/String;
    const-string/jumbo v11, "common"

    iget-object v12, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, "resCachePath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/resources.apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 747
    .local v7, "resApkPath":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v7, v6}, Landroid/content/res/AssetManager;->addCommonOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 749
    .local v2, "cookie":I
    if-eqz v2, :cond_4

    .line 750
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    .line 751
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    goto :goto_2

    .line 732
    .end local v2    # "cookie":I
    .end local v6    # "prefixPath":Ljava/lang/String;
    .end local v7    # "resApkPath":Ljava/lang/String;
    .end local v8    # "resCachePath":Ljava/lang/String;
    .end local v9    # "themePackageName":Ljava/lang/String;
    .end local v10    # "themePath":Ljava/lang/String;
    .restart local v5    # "piTheme":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 13
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 667
    const/4 v4, 0x0

    .line 669
    .local v4, "piIcon":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v10

    .line 670
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 669
    const/4 v12, 0x0

    invoke-interface {v9, v10, v12, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 674
    .end local v4    # "piIcon":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v4, :cond_0

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v9, :cond_1

    .line 675
    :cond_0
    const/4 v9, 0x0

    return v9

    .line 678
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "iconPkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 701
    :cond_2
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 680
    :cond_3
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 681
    .local v8, "themeIconPath":Ljava/lang/String;
    const-string/jumbo v5, "assets/icons/"

    .line 682
    .local v5, "prefixPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "iconDir":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/resources.arsc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 684
    .local v7, "resTablePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/resources.apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, "resApkPath":Ljava/lang/String;
    iget-boolean v9, v4, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v9, :cond_4

    .line 688
    const-string/jumbo v5, ""

    .line 689
    const-string/jumbo v6, ""

    .line 690
    const-string/jumbo v7, ""

    .line 694
    :cond_4
    const/16 v9, 0x62

    .line 693
    invoke-virtual {p1, v8, v6, v5, v9}, Landroid/content/res/AssetManager;->addIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 695
    .local v0, "cookie":I
    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    .line 697
    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    goto :goto_1

    .line 671
    .end local v0    # "cookie":I
    .end local v2    # "iconDir":Ljava/lang/String;
    .end local v3    # "iconPkg":Ljava/lang/String;
    .end local v5    # "prefixPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "resTablePath":Ljava/lang/String;
    .end local v8    # "themeIconPath":Ljava/lang/String;
    .restart local v4    # "piIcon":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 23
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 551
    const/16 v16, 0x0

    .line 552
    .local v16, "piTheme":Landroid/content/pm/PackageInfo;
    const/4 v15, 0x0

    .line 553
    .local v15, "piTarget":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .line 554
    .local v13, "piAndroid":Landroid/content/pm/PackageInfo;
    const/4 v14, 0x0

    .line 560
    .local v14, "piCm":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .line 561
    .local v9, "basePackageName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 562
    .local v18, "resourcePackageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v11

    .line 563
    .local v11, "count":I
    const/4 v3, 0x2

    if-le v11, v3, :cond_2

    .line 564
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, "basePackageName":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBaseResourcePackageName(I)Ljava/lang/String;

    move-result-object v18

    .line 573
    .end local v18    # "resourcePackageName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 574
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    .line 574
    const/16 v22, 0x0

    .line 573
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 576
    .local v16, "piTheme":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 577
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    const/16 v21, 0x0

    .line 576
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v3, v9, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 582
    .local v15, "piTarget":Landroid/content/pm/PackageInfo;
    if-nez v15, :cond_0

    if-eqz v18, :cond_0

    .line 583
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 584
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    const/16 v21, 0x0

    .line 583
    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 586
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string/jumbo v20, "android"

    .line 587
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    .line 586
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 588
    .local v13, "piAndroid":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string/jumbo v20, "cyanogenmod.platform"

    .line 589
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    .line 588
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 593
    .end local v13    # "piAndroid":Landroid/content/pm/PackageInfo;
    .end local v14    # "piCm":Landroid/content/pm/PackageInfo;
    .end local v15    # "piTarget":Landroid/content/pm/PackageInfo;
    .end local v16    # "piTheme":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_4

    .line 598
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 566
    .local v9, "basePackageName":Ljava/lang/String;
    .local v13, "piAndroid":Landroid/content/pm/PackageInfo;
    .restart local v14    # "piCm":Landroid/content/pm/PackageInfo;
    .local v15, "piTarget":Landroid/content/pm/PackageInfo;
    .local v16, "piTheme":Landroid/content/pm/PackageInfo;
    .restart local v18    # "resourcePackageName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    if-ne v11, v3, :cond_3

    .line 567
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "basePackageName":Ljava/lang/String;
    goto/16 :goto_0

    .line 569
    .local v9, "basePackageName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 594
    .end local v13    # "piAndroid":Landroid/content/pm/PackageInfo;
    .end local v14    # "piCm":Landroid/content/pm/PackageInfo;
    .end local v15    # "piTarget":Landroid/content/pm/PackageInfo;
    .end local v16    # "piTheme":Landroid/content/pm/PackageInfo;
    .end local v18    # "resourcePackageName":Ljava/lang/String;
    .local v9, "basePackageName":Ljava/lang/String;
    :cond_4
    if-eqz v15, :cond_1

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 595
    if-eqz v13, :cond_1

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 596
    if-eqz v14, :cond_1

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 597
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 602
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 603
    .local v19, "themePackageName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 604
    .local v5, "themePath":Ljava/lang/String;
    iget-boolean v3, v15, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_5

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 605
    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 606
    .local v7, "targetPackagePath":Ljava/lang/String;
    invoke-static {v9}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, "prefixPath":Ljava/lang/String;
    iget-object v3, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 609
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 608
    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 610
    .local v17, "resCachePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, "/resources.apk"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 611
    .local v6, "resApkPath":Ljava/lang/String;
    iget-object v3, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 612
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 615
    .local v10, "cookie":I
    if-eqz v10, :cond_5

    .line 616
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .line 622
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v17    # "resCachePath":Ljava/lang/String;
    :cond_5
    iget-boolean v3, v15, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_6

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 639
    :cond_6
    :goto_2
    iget-boolean v3, v15, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_7

    const-string/jumbo v3, "android"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 655
    :cond_7
    :goto_3
    const/4 v3, 0x1

    return v3

    .line 623
    :cond_8
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 622
    if-eqz v3, :cond_6

    .line 624
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 625
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 624
    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 626
    .restart local v17    # "resCachePath":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 627
    .restart local v8    # "prefixPath":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 628
    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, "/resources.apk"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 629
    .restart local v6    # "resApkPath":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 630
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 632
    .restart local v10    # "cookie":I
    if-eqz v10, :cond_6

    .line 633
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    goto :goto_2

    .line 640
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v17    # "resCachePath":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    const-string/jumbo v20, "android"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 639
    if-eqz v3, :cond_7

    .line 641
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 642
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 641
    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 643
    .restart local v17    # "resCachePath":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 644
    .restart local v8    # "prefixPath":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 645
    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, "/resources.apk"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 646
    .restart local v6    # "resApkPath":Ljava/lang/String;
    const-string/jumbo v3, "android"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/content/pm/ThemeUtils;->getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "idmapPath":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 647
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 649
    .restart local v10    # "cookie":I
    if-eqz v10, :cond_7

    .line 650
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    goto/16 :goto_3

    .line 590
    .end local v4    # "idmapPath":Ljava/lang/String;
    .end local v5    # "themePath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v17    # "resCachePath":Ljava/lang/String;
    .end local v19    # "themePackageName":Ljava/lang/String;
    .restart local v14    # "piCm":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method private detachThemeAssets(Landroid/content/res/AssetManager;)V
    .locals 8
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 759
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemePackageName()Ljava/lang/String;

    move-result-object v4

    .line 760
    .local v4, "themePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackageName()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "iconPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResPackageName()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "commonResPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    if-lez v5, :cond_0

    .line 765
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 766
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    .line 770
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    if-lez v5, :cond_1

    .line 771
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 772
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    .line 775
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v3

    .line 776
    .local v3, "themeCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 782
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 783
    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 758
    return-void

    .line 778
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 779
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    .line 778
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 78
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 82
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 530
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 531
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1

    .line 533
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 534
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 535
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method private getThemeConfig()Landroid/content/res/ThemeConfig;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 788
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    :cond_0
    return-object v1
.end method

.method private setActivityIcons(Landroid/content/res/Resources;)V
    .locals 14
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const/4 v10, 0x0

    .line 389
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 390
    .local v5, "iconResources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/PackageItemInfo;>;"
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "pkgName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 392
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 395
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 396
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 395
    const/4 v13, 0x1

    invoke-interface {v11, v7, v13, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 402
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v9, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .line 403
    .local v9, "themeConfig":Landroid/content/res/ThemeConfig;
    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    .line 404
    invoke-virtual {v9}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 403
    if-eqz v11, :cond_0

    .line 405
    return-void

    .line 397
    .end local v9    # "themeConfig":Landroid/content/res/ThemeConfig;
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 398
    .local v3, "e1":Landroid/os/RemoteException;
    const-string/jumbo v10, "ResourcesManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to get pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    return-void

    .line 409
    .end local v3    # "e1":Landroid/os/RemoteException;
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "themeConfig":Landroid/content/res/ThemeConfig;
    :cond_0
    if-eqz v6, :cond_2

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_2

    .line 410
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 411
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->themedIcon:I

    if-nez v11, :cond_1

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    .line 412
    :cond_1
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    if-eqz v6, :cond_7

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_7

    .line 418
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v12, v11

    :goto_0
    if-ge v10, v12, :cond_7

    aget-object v0, v11, v10

    .line 419
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget v13, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v13, :cond_5

    iget v13, v0, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v13, :cond_3

    iget v13, v0, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_5

    .line 420
    :cond_3
    iget v13, v0, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v5, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 421
    :cond_5
    if-eqz v1, :cond_4

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v13, :cond_4

    .line 422
    iget v13, v0, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v13, :cond_6

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 423
    :cond_6
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 428
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_7
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    .line 429
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 431
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v8}, Landroid/content/pm/IPackageManager;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v4

    .line 432
    .local v4, "iconInfo":Landroid/app/ComposedIconInfo;
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    .end local v4    # "iconInfo":Landroid/app/ComposedIconInfo;
    :goto_2
    return-void

    .line 433
    :catch_1
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ResourcesManager"

    const-string/jumbo v11, "Failed to retrieve ComposedIconInfo"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 440
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v12, :cond_0

    .line 441
    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    iput-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 443
    :cond_0
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_1

    if-nez p2, :cond_1

    .line 446
    const/4 v12, 0x0

    return v12

    .line 448
    :cond_1
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 450
    .local v1, "changes":I
    iget-object v12, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 451
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 453
    .local v2, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_2

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v12, :cond_a

    .line 454
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v12, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 462
    :cond_2
    :goto_0
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v12, :cond_3

    .line 463
    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v12}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 466
    :cond_3
    invoke-static {p1, v2, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 468
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 471
    const/4 v11, 0x0

    .line 473
    .local v11, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .end local v11    # "tmpConfig":Landroid/content/res/Configuration;
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_f

    .line 474
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesKey;

    .line 475
    .local v8, "key":Landroid/content/res/ResourcesKey;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    .line 476
    .local v9, "r":Landroid/content/res/Resources;
    if-eqz v9, :cond_e

    .line 479
    iget v3, v8, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 480
    .local v3, "displayId":I
    if-nez v3, :cond_b

    const/4 v7, 0x1

    .line 481
    .local v7, "isDefaultDisplay":Z
    :goto_2
    move-object v4, v2

    .line 482
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    .line 483
    .local v5, "hasOverrideConfiguration":Z
    const/high16 v12, 0x100000

    and-int/2addr v12, v1

    if-eqz v12, :cond_c

    const/4 v10, 0x1

    .line 484
    .local v10, "themeChanged":Z
    :goto_3
    if-eqz v10, :cond_4

    .line 485
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 486
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->hasThemeSupport()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 487
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    .line 488
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V

    .line 489
    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->detachThemeAssets(Landroid/content/res/AssetManager;)V

    .line 490
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v12, :cond_4

    .line 491
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 492
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 493
    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 494
    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 499
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v5, :cond_d

    .line 500
    :cond_5
    if-nez v11, :cond_6

    .line 501
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    .line 503
    :cond_6
    invoke-virtual {v11, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 504
    if-nez v7, :cond_7

    .line 505
    invoke-virtual {p0, v3}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 506
    invoke-virtual {p0, v4, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 508
    :cond_7
    if-eqz v5, :cond_8

    .line 509
    iget-object v12, v8, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v12}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 511
    :cond_8
    invoke-virtual {v9, v11, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 515
    :goto_4
    if-eqz v10, :cond_9

    .line 516
    invoke-virtual {v9}, Landroid/content/res/Resources;->updateStringCache()V

    .line 473
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_9
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 455
    .end local v6    # "i":I
    .end local v8    # "key":Landroid/content/res/ResourcesKey;
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_a
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 456
    or-int/lit16 v1, v1, 0xd00

    goto/16 :goto_0

    .line 480
    .restart local v3    # "displayId":I
    .restart local v6    # "i":I
    .restart local v8    # "key":Landroid/content/res/ResourcesKey;
    .restart local v9    # "r":Landroid/content/res/Resources;
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "isDefaultDisplay":Z
    goto :goto_2

    .line 483
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "hasOverrideConfiguration":Z
    :cond_c
    const/4 v10, 0x0

    .restart local v10    # "themeChanged":Z
    goto :goto_3

    .line 513
    :cond_d
    invoke-virtual {v9, p1, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_4

    .line 522
    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_e
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_5

    .line 526
    .end local v8    # "key":Landroid/content/res/ResourcesKey;
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_f
    if-eqz v1, :cond_10

    const/4 v12, 0x1

    :goto_6
    return v12

    :cond_10
    const/4 v12, 0x0

    goto :goto_6
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 108
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 109
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 110
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 111
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 112
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 113
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 114
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 116
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 115
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 122
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 123
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 124
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 125
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 107
    return-void

    .line 118
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 120
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 119
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    const/4 v6, 0x0

    .line 145
    if-eqz p2, :cond_0

    .line 146
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 148
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 149
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 151
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    .line 152
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    monitor-exit p0

    .line 154
    return-object v0

    .line 146
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .line 157
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 158
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    monitor-exit p0

    .line 160
    return-object v6

    .line 162
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 163
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 164
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 166
    return-object v0

    .line 149
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 98
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    :goto_0
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/Context;Z)Landroid/content/res/Resources;
    .locals 26
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "isThemeable"    # Z

    .prologue
    .line 185
    move-object/from16 v0, p8

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 186
    .local v6, "scale":F
    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->getThemeConfig()Landroid/content/res/ThemeConfig;

    move-result-object v24

    .line 187
    .local v24, "themeConfig":Landroid/content/res/ThemeConfig;
    if-eqz p7, :cond_0

    .line 188
    new-instance v21, Landroid/content/res/Configuration;

    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 189
    :goto_0
    new-instance v2, Landroid/content/res/ResourcesKey;

    .line 190
    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->getThemeConfig()Landroid/content/res/ThemeConfig;

    move-result-object v8

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v7, p10

    .line 189
    invoke-direct/range {v2 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;)V

    .line 192
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/ref/WeakReference;

    .line 197
    .local v25, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/res/Resources;

    .line 199
    :goto_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit p0

    .line 203
    return-object v22

    .line 188
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    .end local v25    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/16 v21, 0x0

    .local v21, "overrideConfigCopy":Landroid/content/res/Configuration;
    goto :goto_0

    .line 197
    .end local v21    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    .restart local v25    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/16 v22, 0x0

    .local v22, "r":Landroid/content/res/Resources;
    goto :goto_1

    .end local v22    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0

    .line 212
    new-instance v7, Landroid/content/res/AssetManager;

    invoke-direct {v7}, Landroid/content/res/AssetManager;-><init>()V

    .line 213
    .local v7, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    .line 214
    move/from16 v0, p10

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    .line 218
    if-eqz p1, :cond_3

    .line 219
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 220
    const/4 v3, 0x0

    return-object v3

    .line 192
    .end local v7    # "assets":Landroid/content/res/AssetManager;
    .end local v25    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 224
    .restart local v7    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    if-eqz p2, :cond_5

    .line 225
    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v23, p2, v3

    .line 226
    .local v23, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 227
    const/4 v3, 0x0

    return-object v3

    .line 225
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 232
    .end local v23    # "splitResDir":Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    .line 233
    const/4 v3, 0x0

    move-object/from16 v0, p3

    array-length v4, v0

    :goto_3
    if-ge v3, v4, :cond_6

    aget-object v8, p3, v3

    .line 234
    .local v8, "idmapPath":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 238
    .end local v8    # "idmapPath":Ljava/lang/String;
    :cond_6
    if-eqz p4, :cond_8

    .line 239
    const/4 v3, 0x0

    move-object/from16 v0, p4

    array-length v4, v0

    :goto_4
    if-ge v3, v4, :cond_8

    aget-object v20, p4, v3

    .line 240
    .local v20, "libDir":Ljava/lang/String;
    const-string/jumbo v5, ".apk"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 244
    const-string/jumbo v5, "ResourcesManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Asset path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 245
    const-string/jumbo v10, "\' does not exist or contains no resources."

    .line 244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 252
    .end local v20    # "libDir":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 254
    .local v14, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_e

    const/16 v19, 0x1

    .line 255
    .local v19, "isDefaultDisplay":Z
    :goto_5
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v17

    .line 256
    .local v17, "hasOverrideConfig":Z
    if-eqz v19, :cond_9

    if-eqz v17, :cond_f

    .line 257
    :cond_9
    new-instance v13, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 258
    .local v13, "config":Landroid/content/res/Configuration;
    if-nez v19, :cond_a

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 261
    :cond_a
    if-eqz v17, :cond_b

    .line 262
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 269
    :cond_b
    :goto_6
    const/16 v18, 0x0

    .line 271
    .local v18, "iconsAttached":Z
    if-eqz v13, :cond_c

    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 294
    .end local v18    # "iconsAttached":Z
    :cond_c
    :goto_7
    new-instance v22, Landroid/content/res/Resources;

    move-object/from16 v0, v22

    move-object/from16 v1, p8

    invoke-direct {v0, v7, v14, v13, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 295
    .local v22, "r":Landroid/content/res/Resources;
    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 300
    :cond_d
    monitor-enter p0

    .line 301
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v25, Ljava/lang/ref/WeakReference;

    .line 302
    .restart local v25    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v25, :cond_13

    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Resources;

    .line 303
    :goto_8
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 306
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 307
    return-object v16

    .line 254
    .end local v13    # "config":Landroid/content/res/Configuration;
    .end local v17    # "hasOverrideConfig":Z
    .end local v19    # "isDefaultDisplay":Z
    .end local v22    # "r":Landroid/content/res/Resources;
    :cond_e
    const/16 v19, 0x0

    .restart local v19    # "isDefaultDisplay":Z
    goto :goto_5

    .line 266
    .restart local v17    # "hasOverrideConfig":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .restart local v13    # "config":Landroid/content/res/Configuration;
    goto :goto_6

    .line 272
    .restart local v18    # "iconsAttached":Z
    :cond_10
    if-nez v24, :cond_11

    .line 274
    :try_start_2
    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/ThemeConfig;->getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v24

    .line 281
    :cond_11
    :goto_9
    if-eqz p10, :cond_12

    .line 282
    if-eqz v24, :cond_c

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v18

    .local v18, "iconsAttached":Z
    goto :goto_7

    .line 275
    .local v18, "iconsAttached":Z
    :catch_0
    move-exception v15

    .line 276
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ResourcesManager"

    const-string/jumbo v4, "ThemeConfig.getBootTheme failed, falling back to system theme"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    invoke-static {}, Landroid/content/res/ThemeConfig;->getSystemTheme()Landroid/content/res/ThemeConfig;

    move-result-object v24

    goto :goto_9

    .line 287
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_12
    if-eqz v24, :cond_c

    .line 288
    const-string/jumbo v3, "system"

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 290
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->recreateDefaults(Z)V

    goto/16 :goto_7

    .line 302
    .end local v18    # "iconsAttached":Z
    .restart local v22    # "r":Landroid/content/res/Resources;
    :cond_13
    const/16 v16, 0x0

    .local v16, "existing":Landroid/content/res/Resources;
    goto :goto_8

    .line 311
    .end local v16    # "existing":Landroid/content/res/Resources;
    :cond_14
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 313
    return-object v22

    .line 300
    .end local v25    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getTopLevelThemedResources(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Z)Landroid/content/res/Resources;
    .locals 17
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "themePackageName"    # Ljava/lang/String;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p6, "isThemeable"    # Z

    .prologue
    .line 329
    new-instance v10, Landroid/content/res/ThemeConfig$Builder;

    invoke-direct {v10}, Landroid/content/res/ThemeConfig$Builder;-><init>()V

    .line 330
    .local v10, "builder":Landroid/content/res/ThemeConfig$Builder;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 331
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 332
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 333
    invoke-virtual {v10}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v8

    .line 335
    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p5

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;)V

    .line 338
    .local v2, "key":Landroid/content/res/ResourcesKey;
    new-instance v9, Landroid/content/res/AssetManager;

    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .line 339
    .local v9, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    .line 340
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 342
    const/4 v3, 0x0

    return-object v3

    .line 346
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 348
    .local v12, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_6

    const/4 v15, 0x1

    .line 349
    .local v15, "isDefaultDisplay":Z
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v13

    .line 350
    .local v13, "hasOverrideConfig":Z
    if-eqz v15, :cond_1

    if-eqz v13, :cond_7

    .line 351
    :cond_1
    new-instance v11, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 352
    .local v11, "config":Landroid/content/res/Configuration;
    if-nez v15, :cond_2

    .line 353
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 355
    :cond_2
    if-eqz v13, :cond_3

    .line 356
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 362
    :cond_3
    :goto_1
    const/4 v14, 0x0

    .line 363
    .local v14, "iconsAttached":Z
    if-eqz p6, :cond_4

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    .line 367
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v14

    .line 369
    .end local v14    # "iconsAttached":Z
    :cond_4
    new-instance v16, Landroid/content/res/Resources;

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-direct {v0, v9, v12, v11, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 370
    .local v16, "r":Landroid/content/res/Resources;
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .line 378
    :cond_5
    return-object v16

    .line 348
    .end local v11    # "config":Landroid/content/res/Configuration;
    .end local v13    # "hasOverrideConfig":Z
    .end local v15    # "isDefaultDisplay":Z
    .end local v16    # "r":Landroid/content/res/Resources;
    :cond_6
    const/4 v15, 0x0

    .restart local v15    # "isDefaultDisplay":Z
    goto :goto_0

    .line 359
    .restart local v13    # "hasOverrideConfig":Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .restart local v11    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method
