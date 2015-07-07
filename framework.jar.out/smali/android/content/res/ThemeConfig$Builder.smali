.class public Landroid/content/res/ThemeConfig$Builder;
.super Ljava/lang/Object;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

.field private mOverlays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    .line 357
    sget-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ThemeConfig;)V
    .locals 6
    .param p1, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    .line 355
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    .line 356
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    .line 357
    sget-object v4, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 362
    iget-object v4, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 363
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .line 365
    .local v0, "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getFontPackPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    .end local v0    # "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    # getter for: Landroid/content/res/ThemeConfig;->mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;
    invoke-static {p1}, Landroid/content/res/ThemeConfig;->access$000(Landroid/content/res/ThemeConfig;)Landroid/content/res/ThemeChangeRequest$RequestType;

    move-result-object v4

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 370
    return-void
.end method


# virtual methods
.method public build()Landroid/content/res/ThemeConfig;
    .locals 10

    .prologue
    .line 436
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 437
    .local v1, "appPkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 438
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 439
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 441
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v3, "appThemes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    .local v0, "appPkgName":Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 444
    .local v6, "icon":Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 445
    .local v7, "overlay":Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 448
    .local v4, "font":Ljava/lang/String;
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    if-nez v4, :cond_1

    .line 449
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 450
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 453
    :cond_1
    new-instance v2, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-direct {v2, v7, v6, v4}, Landroid/content/res/ThemeConfig$AppTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .local v2, "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    .end local v0    # "appPkgName":Ljava/lang/String;
    .end local v2    # "appTheme":Landroid/content/res/ThemeConfig$AppTheme;
    .end local v4    # "font":Ljava/lang/String;
    .end local v6    # "icon":Ljava/lang/String;
    .end local v7    # "overlay":Ljava/lang/String;
    :cond_2
    new-instance v8, Landroid/content/res/ThemeConfig;

    invoke-direct {v8, v3}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    .line 458
    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$Builder;->mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    # setter for: Landroid/content/res/ThemeConfig;->mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;
    invoke-static {v8, v9}, Landroid/content/res/ThemeConfig;->access$002(Landroid/content/res/ThemeConfig;Landroid/content/res/ThemeChangeRequest$RequestType;)Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 459
    return-object v8
.end method

.method public defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :goto_0
    return-object p0

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :goto_0
    return-object p0

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :goto_0
    return-object p0

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public font(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 422
    if-eqz p2, :cond_0

    .line 423
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :goto_0
    return-object p0

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public icon(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 404
    if-eqz p2, :cond_0

    .line 405
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :goto_0
    return-object p0

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 413
    if-eqz p2, :cond_0

    .line 414
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :goto_0
    return-object p0

    .line 416
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLastThemeChangeRequestType(Landroid/content/res/ThemeChangeRequest$RequestType;)Landroid/content/res/ThemeConfig$Builder;
    .locals 0
    .param p1, "requestType"    # Landroid/content/res/ThemeChangeRequest$RequestType;

    .prologue
    .line 431
    iput-object p1, p0, Landroid/content/res/ThemeConfig$Builder;->mLastThemeChangeRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 432
    return-object p0
.end method
