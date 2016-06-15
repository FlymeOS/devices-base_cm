.class final Landroid/content/res/Resources$FlymeInjector;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final sBoostDrawableCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2843
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/content/res/Resources$FlymeInjector;->sBoostDrawableCache:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearBoostDrawableCacheLocked(Landroid/util/LongSparseArray;I)V
    .locals 4
    .param p1, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2953
    .local p0, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2954
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2955
    invoke-virtual {p0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2956
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 2957
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2959
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2954
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2963
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    return-void
.end method

.method static clearFlymeBoostDrawableCacheLocked(Landroid/content/res/Resources;I)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "configChanges"    # I

    .prologue
    .line 2933
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 2934
    .local v1, "boostKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/Resources$FlymeInjector;->isBoostApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2935
    sget-object v2, Landroid/content/res/Resources$FlymeInjector;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 2936
    .local v0, "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v0, :cond_0

    .line 2937
    invoke-static {v0, p1}, Landroid/content/res/Resources$FlymeInjector;->clearBoostDrawableCacheLocked(Landroid/util/LongSparseArray;I)V

    .line 2941
    .end local v0    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_0
    return-void
.end method

.method static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 3025
    iget-object v3, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3026
    .local v1, "file":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3028
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1, v3}, Landroid/content/res/Resources$FlymeInjector;->loadFlymeThemeDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3029
    if-nez v0, :cond_0

    .line 3030
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 3031
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3032
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3036
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 3034
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static getBoostCachedDrawable(Landroid/content/res/Resources;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "key"    # J

    .prologue
    .line 2980
    invoke-virtual {p0}, Landroid/content/res/Resources;->flymeGetFieldAccessLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2981
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 2982
    .local v2, "boostKey":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/res/Resources$FlymeInjector;->isBoostApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2983
    sget-object v3, Landroid/content/res/Resources$FlymeInjector;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 2984
    .local v0, "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v0, :cond_0

    .line 2985
    invoke-static {p0, v0, p1, p2}, Landroid/content/res/Resources$FlymeInjector;->getBoostCachedDrawableLocked(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2986
    .local v1, "boostDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2987
    monitor-exit v4

    .line 2992
    .end local v0    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v1    # "boostDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v4

    goto :goto_0

    .line 2993
    .end local v2    # "boostKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getBoostCachedDrawableLocked(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2997
    .local p1, "drawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2998
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 2999
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3003
    :goto_0
    return-object v1

    .line 3001
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3003
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 2912
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 2913
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 2914
    .local v2, "resFullName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2915
    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2916
    .local v1, "index":I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2917
    .local v3, "resName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 2918
    .local v4, "resPackageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeUtils;->getResType(Ljava/lang/String;)I

    move-result v5

    .line 2919
    .local v5, "resType":I
    iget-object v7, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v7, v3, v5}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2927
    .end local v1    # "index":I
    .end local v2    # "resFullName":Ljava/lang/String;
    .end local v3    # "resName":Ljava/lang/String;
    .end local v4    # "resPackageName":Ljava/lang/String;
    .end local v5    # "resType":I
    :cond_0
    :goto_0
    return-object v6

    .line 2923
    :catch_0
    move-exception v0

    .line 2925
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static getFlymeThemeColorValue(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 2858
    invoke-static {p0, p1}, Landroid/content/res/Resources$FlymeInjector;->getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v0, v0

    return v0
.end method

.method private static getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v2, 0x0

    .line 2889
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2890
    .local v0, "resPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeUtils;->getResType(Ljava/lang/String;)I

    move-result v1

    .line 2891
    .local v1, "resType":I
    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2901
    .end local v0    # "resPackageName":Ljava/lang/String;
    .end local v1    # "resType":I
    :goto_0
    return-object v2

    .line 2894
    .restart local v0    # "resPackageName":Ljava/lang/String;
    .restart local v1    # "resType":I
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2896
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V

    .line 2898
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    invoke-virtual {v3, p2, v1, p3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeFileStream(Ljava/lang/String;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2899
    .end local v0    # "resPackageName":Ljava/lang/String;
    .end local v1    # "resType":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static initFlymeExtraFields(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 2847
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    .line 2848
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mIsFlymeThemeChange:Z

    .line 2849
    return-void
.end method

.method private static isBoostApp(Ljava/lang/String;)Z
    .locals 8
    .param p0, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2944
    const-string v7, "android.content.res.Resources"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2949
    :cond_0
    :goto_0
    return v5

    .line 2945
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v7, "com.tencent.mm"

    aput-object v7, v0, v5

    .line 2946
    .local v0, "applist":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 2947
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_0

    .line 2946
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static isFlymeThemeChange(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 2966
    invoke-virtual {p0}, Landroid/content/res/Resources;->flymeGetFieldConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->flymeGetFieldTmpConfig()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 2967
    .local v0, "changes":I
    iput v0, p0, Landroid/content/res/Resources;->mFlymeThemeChanges:I

    .line 2968
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v1, :cond_1

    .line 2970
    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->reset()V

    .line 2971
    sget-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eq p0, v1, :cond_0

    .line 2972
    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 2974
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/Resources;->mIsFlymeThemeChange:Z

    .line 2976
    :cond_1
    return-void
.end method

.method static isFlymeThemeColor(Landroid/content/res/Resources;I)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 2863
    invoke-static {p0, p1}, Landroid/content/res/Resources$FlymeInjector;->getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadFlymeColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 3055
    invoke-static {p0, p1}, Landroid/content/res/Resources$FlymeInjector;->getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v1

    .line 3056
    .local v1, "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz v1, :cond_0

    .line 3057
    iget-wide v2, v1, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v2, v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3060
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadFlymeThemeDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "op"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3042
    const/4 v1, 0x0

    .line 3043
    .local v1, "flymeInputStream":Ljava/io/InputStream;
    invoke-static {p0, p2, p3, p1}, Landroid/content/res/Resources$FlymeInjector;->getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 3044
    if-eqz v1, :cond_0

    .line 3045
    invoke-static {p0, p1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3046
    .local v0, "flymeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 3049
    .end local v0    # "flymeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method static openFlymeThemeRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 2875
    const/4 v0, 0x0

    .line 2876
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, p2}, Landroid/content/res/Resources$FlymeInjector;->getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 2877
    return-object v0
.end method

.method static putFlymeBoostCachedDrawable(Landroid/content/res/Resources;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "isColorDrawable"    # Z
    .param p2, "key"    # J
    .param p4, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3009
    if-nez p1, :cond_1

    .line 3010
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 3011
    .local v1, "boostKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/Resources$FlymeInjector;->isBoostApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3012
    sget-object v3, Landroid/content/res/Resources$FlymeInjector;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 3013
    .local v0, "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-nez v0, :cond_0

    .line 3014
    new-instance v0, Landroid/util/LongSparseArray;

    .end local v0    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 3015
    .restart local v0    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    sget-object v3, Landroid/content/res/Resources$FlymeInjector;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3017
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 3018
    .local v2, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {v0, p2, p3, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3022
    .end local v0    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v1    # "boostKey":Ljava/lang/String;
    .end local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    return-void
.end method

.method static setSystemFlymeThemeResource()V
    .locals 2

    .prologue
    .line 2852
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V

    .line 2853
    return-void
.end method
