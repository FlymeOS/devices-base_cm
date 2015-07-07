.class public Landroid/content/res/ThemeChangeRequest$Builder;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

.field mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 171
    sget-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ThemeConfig;)V
    .locals 1
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 171
    sget-object v0, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V

    .line 179
    :cond_0
    return-void
.end method

.method private buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V
    .locals 4
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 266
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 268
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 269
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 273
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getAppThemes()Ljava/util/Map;

    move-result-object v2

    .line 274
    .local v2, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isPerAppThemeComponent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 276
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig$AppTheme;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/content/res/ThemeChangeRequest$Builder;->setAppOverlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    goto :goto_0

    .line 279
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public build()Landroid/content/res/ThemeChangeRequest;
    .locals 5

    .prologue
    .line 252
    new-instance v0, Landroid/content/res/ThemeChangeRequest;

    iget-object v1, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    iget-object v2, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/res/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/res/ThemeChangeRequest$RequestType;Landroid/content/res/ThemeChangeRequest$1;)V

    return-object v0
.end method

.method public setAlarm(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string/jumbo v0, "mods_alarms"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppOverlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    if-eqz p2, :cond_1

    .line 237
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    :goto_0
    return-object p0

    .line 239
    :cond_1
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBootanimation(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string/jumbo v0, "mods_bootanim"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :goto_0
    return-object p0

    .line 229
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFont(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string/jumbo v0, "mods_fonts"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcons(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string/jumbo v0, "mods_icons"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLockWallpaper(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string/jumbo v0, "mods_lockscreen"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNavBar(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v0, "mods_navigation_bar"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNotification(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string/jumbo v0, "mods_notifications"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOverlay(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string/jumbo v0, "mods_overlays"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestType(Landroid/content/res/ThemeChangeRequest$RequestType;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 0
    .param p1, "requestType"    # Landroid/content/res/ThemeChangeRequest$RequestType;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .end local p1    # "requestType":Landroid/content/res/ThemeChangeRequest$RequestType;
    :goto_0
    iput-object p1, p0, Landroid/content/res/ThemeChangeRequest$Builder;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 248
    return-object p0

    .line 247
    .restart local p1    # "requestType":Landroid/content/res/ThemeChangeRequest$RequestType;
    :cond_0
    sget-object p1, Landroid/content/res/ThemeChangeRequest$RequestType;->USER_REQUEST:Landroid/content/res/ThemeChangeRequest$RequestType;

    goto :goto_0
.end method

.method public setRingtone(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string/jumbo v0, "mods_ringtones"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBar(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string/jumbo v0, "mods_status_bar"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string/jumbo v0, "mods_homescreen"

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method
