.class Landroid/content/res/Resources$FlymeInjector;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getColorValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;Z)V
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 2854
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2855
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 2857
    invoke-static {p0, p1, p2}, Landroid/content/res/Resources$FlymeInjector;->getFlymeThemeColor(Landroid/content/res/Resources;ILandroid/util/TypedValue;)V

    .line 2859
    :cond_0
    return-void
.end method

.method static getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 2865
    const/4 v0, 0x0

    .line 2867
    .local v0, "csl":Landroid/content/res/ColorStateList;
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 2868
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 2869
    .local v3, "resFullName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2870
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2871
    .local v1, "index":I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2872
    .local v4, "resName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v5

    .line 2873
    .local v5, "resPackageName":Ljava/lang/String;
    const-string v7, "android"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2874
    .local v2, "isFramework":Z
    iget-object v7, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v7, v4, v2}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeColor(Ljava/lang/String;Z)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v6

    .line 2875
    .local v6, "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz v6, :cond_0

    .line 2876
    iget-wide v8, v6, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v7, v8

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2883
    .end local v1    # "index":I
    .end local v2    # "isFramework":Z
    .end local v3    # "resFullName":Ljava/lang/String;
    .end local v4    # "resName":Ljava/lang/String;
    .end local v5    # "resPackageName":Ljava/lang/String;
    .end local v6    # "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 2880
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static getFlymeThemeColor(Landroid/content/res/Resources;ILandroid/util/TypedValue;)V
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 2891
    :try_start_0
    iget-object v6, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    .line 2892
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 2893
    .local v2, "resFullName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2894
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2895
    .local v0, "index":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2896
    .local v3, "resName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 2897
    .local v4, "resPackageName":Ljava/lang/String;
    const-string v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2898
    .local v1, "isFramework":Z
    iget-object v6, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v6, v3, v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeColor(Ljava/lang/String;Z)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v5

    .line 2899
    .local v5, "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz v5, :cond_0

    .line 2900
    iget-wide v6, v5, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v6, v6

    iput v6, p2, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2906
    .end local v0    # "index":I
    .end local v1    # "isFramework":Z
    .end local v2    # "resFullName":Ljava/lang/String;
    .end local v3    # "resName":Ljava/lang/String;
    .end local v4    # "resPackageName":Ljava/lang/String;
    .end local v5    # "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    :cond_0
    :goto_0
    return-void

    .line 2904
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "resPackageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isFramework":Z
    iget-object v4, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v1    # "isFramework":Z
    .end local v2    # "resPackageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .restart local v1    # "isFramework":Z
    .restart local v2    # "resPackageName":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    iget-object v4, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v4}, Landroid/content/res/flymetheme/FlymeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v4}, Landroid/content/res/flymetheme/FlymeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->getInstance()Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->getFlymeThemeResource(Ljava/lang/String;)Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v0

    .local v0, "flymeThemeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeResource;

    .end local v0    # "flymeThemeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    invoke-direct {v0, v2, p0}, Landroid/content/res/flymetheme/FlymeThemeResource;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .restart local v0    # "flymeThemeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    :cond_2
    iput-object v0, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->getInstance()Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v4, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->setFlymeThemeResource(Ljava/lang/String;Landroid/content/res/flymetheme/FlymeThemeResource;)V

    .end local v0    # "flymeThemeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    :cond_3
    iget-object v4, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v4, p2, v1, p3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeFileStream(Ljava/lang/String;ZLandroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .end local v1    # "isFramework":Z
    .end local v2    # "resPackageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static hookOpenNonAsset(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Ljava/io/InputStream;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "file":Ljava/lang/String;
    invoke-static {p0, p2, v0, p1}, Landroid/content/res/Resources$FlymeInjector;->getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method static initFlymeThemeResource(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mIsFlymeThemeChange:Z

    return-void
.end method

.method static isFlymeThemeChange(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-virtual {p0}, Landroid/content/res/Resources;->mzGetFieldConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->mzGetFieldTmpConfig()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .local v0, "changes":I
    iput v0, p0, Landroid/content/res/Resources;->mFlymeThemeChanges:I

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->reset()V

    sget-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eq p0, v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/Resources;->mIsFlymeThemeChange:Z

    .line 2821
    :cond_1
    return-void
.end method

.method static loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 2829
    const/4 v0, 0x0

    .line 2830
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 2831
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2833
    .local v2, "file":Ljava/lang/String;
    :try_start_0
    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2834
    invoke-static {p0, p1, p2}, Landroid/content/res/Resources$FlymeInjector;->hookOpenNonAsset(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Ljava/io/InputStream;

    move-result-object v3

    .line 2835
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {p0, p1, v3, v2, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2836
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2846
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    if-nez v0, :cond_1

    .line 2847
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->mzInvokeMethodLoadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2850
    :cond_1
    return-object v0

    .line 2838
    .restart local v2    # "file":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2839
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from drawable resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2841
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2842
    throw v4
.end method

.method static setSystemFlymeThemeResource()V
    .locals 2

    .prologue
    .line 2776
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V

    .line 2777
    return-void
.end method

.method static openFlymeThemeRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "file":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "is":Ljava/io/InputStream;
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/Resources$FlymeInjector;->getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method
