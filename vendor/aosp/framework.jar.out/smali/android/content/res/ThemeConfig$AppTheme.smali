.class public Landroid/content/res/ThemeConfig$AppTheme;
.super Ljava/lang/Object;
.source "ThemeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/ThemeConfig$AppTheme;",
        ">;"
    }
.end annotation


# instance fields
.field mFontPkgName:Ljava/lang/String;

.field mIconPkgName:Ljava/lang/String;

.field mOverlayPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "overlayPkgName"    # Ljava/lang/String;
    .param p2, "iconPkgName"    # Ljava/lang/String;
    .param p3, "fontPkgName"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    .line 274
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/ThemeConfig$AppTheme;)I
    .locals 3
    .param p1, "o"    # Landroid/content/res/ThemeConfig$AppTheme;

    .prologue
    .line 299
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    const/4 v0, 0x0

    .line 301
    .local v0, "n":I
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 302
    if-nez v0, :cond_0

    .line 303
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 304
    if-nez v0, :cond_0

    .line 305
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 306
    :goto_1
    goto :goto_0

    .line 305
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 264
    check-cast p1, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-virtual {p0, p1}, Landroid/content/res/ThemeConfig$AppTheme;->compareTo(Landroid/content/res/ThemeConfig$AppTheme;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 311
    if-ne p1, p0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v7

    .line 314
    :cond_1
    instance-of v9, p1, Landroid/content/res/ThemeConfig$AppTheme;

    if-eqz v9, :cond_9

    move-object v6, p1

    .line 315
    check-cast v6, Landroid/content/res/ThemeConfig$AppTheme;

    .line 316
    .local v6, "o":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v9, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    if-nez v9, :cond_3

    const-string v2, ""

    .line 317
    .local v2, "currentOverlayPkgName":Ljava/lang/String;
    :goto_1
    iget-object v9, v6, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v5, ""

    .line 318
    .local v5, "newOverlayPkgName":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v1, ""

    .line 319
    .local v1, "currentIconPkgName":Ljava/lang/String;
    :goto_3
    iget-object v9, v6, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    if-nez v9, :cond_6

    const-string v4, ""

    .line 320
    .local v4, "newIconPkgName":Ljava/lang/String;
    :goto_4
    iget-object v9, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v0, ""

    .line 321
    .local v0, "currentFontPkgName":Ljava/lang/String;
    :goto_5
    iget-object v9, v6, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    if-nez v9, :cond_8

    const-string v3, ""

    .line 324
    .local v3, "newFontPkgName":Ljava/lang/String;
    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    move v7, v8

    goto :goto_0

    .line 316
    .end local v0    # "currentFontPkgName":Ljava/lang/String;
    .end local v1    # "currentIconPkgName":Ljava/lang/String;
    .end local v2    # "currentOverlayPkgName":Ljava/lang/String;
    .end local v3    # "newFontPkgName":Ljava/lang/String;
    .end local v4    # "newIconPkgName":Ljava/lang/String;
    .end local v5    # "newOverlayPkgName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    goto :goto_1

    .line 317
    .restart local v2    # "currentOverlayPkgName":Ljava/lang/String;
    :cond_4
    iget-object v5, v6, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    goto :goto_2

    .line 318
    .restart local v5    # "newOverlayPkgName":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    goto :goto_3

    .line 319
    .restart local v1    # "currentIconPkgName":Ljava/lang/String;
    :cond_6
    iget-object v4, v6, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    goto :goto_4

    .line 320
    .restart local v4    # "newIconPkgName":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    goto :goto_5

    .line 321
    .restart local v0    # "currentFontPkgName":Ljava/lang/String;
    :cond_8
    iget-object v3, v6, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    goto :goto_6

    .end local v0    # "currentFontPkgName":Ljava/lang/String;
    .end local v1    # "currentIconPkgName":Ljava/lang/String;
    .end local v2    # "currentOverlayPkgName":Ljava/lang/String;
    .end local v4    # "newIconPkgName":Ljava/lang/String;
    .end local v5    # "newOverlayPkgName":Ljava/lang/String;
    .end local v6    # "o":Landroid/content/res/ThemeConfig$AppTheme;
    :cond_9
    move v7, v8

    .line 328
    goto :goto_0
.end method

.method public getFontPackPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPackPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 290
    monitor-enter p0

    const/16 v0, 0x11

    .line 291
    .local v0, "hash":I
    :try_start_0
    iget-object v2, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    add-int/lit16 v0, v2, 0x20f

    .line 292
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 293
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v2, v1

    .line 294
    monitor-exit p0

    return v0

    .line 291
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 292
    :cond_1
    iget-object v2, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 293
    :cond_2
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_2

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 335
    const-string/jumbo v1, "overlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_0
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    const-string v1, ", iconPack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 345
    const-string v1, ", fontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
