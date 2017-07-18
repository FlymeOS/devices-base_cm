.class public Landroid/content/res/flymetheme/FlymeThemeZipFile;
.super Ljava/lang/Object;
.source "FlymeThemeZipFile.java"


# static fields
.field private static final PROPERTY_KEY_USE_FLYME_ICON_STYLE:Ljava/lang/String; = "persist.sys.use.flyme.icon"


# instance fields
.field private mCustomZipfFile:Ljava/util/zip/ZipFile;

.field private mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

.field private mNeedLoadCustomFile:Z

.field private mNeedLoadFlymeIconFromSystemPath:Z

.field private mNeedLoadThemeFile:Z

.field private mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

.field private mUseCustomTheme:Z

.field private mUseFlymeIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    .line 17
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 23
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 24
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    .line 25
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    .line 28
    const-string/jumbo v0, "persist.sys.use.flyme.icon"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "true"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    .line 30
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FlymeThemeZipFile: mUseFlymeIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mUseCustomTheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    const-string/jumbo v5, "FlymeThemeZipFile: get3rdPartRes: start"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/data/com.meizu.customizecenter/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "zipFilePath":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    if-eqz v5, :cond_0

    .line 67
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 80
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_2

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 84
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 86
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    .line 87
    const-string/jumbo v5, "-xxhdpi"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 88
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->replacePathToxxhdpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 90
    const/16 v5, 0x1e0

    iput v5, p3, Landroid/util/TypedValue;->density:I

    .line 95
    :cond_1
    if-eqz v1, :cond_2

    .line 97
    :try_start_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 103
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "iStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v3

    .line 71
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    goto :goto_1

    .line 98
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private getCustomRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 168
    const-string/jumbo v5, "FlymeThemeZipFile: getCustomRes: start"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 169
    const/4 v3, 0x0

    .line 170
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/custom/meizu/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "zipDefFilePath":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    if-eqz v5, :cond_0

    .line 172
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    .line 183
    :goto_1
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 185
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    if-eqz v5, :cond_2

    .line 186
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_2

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_CUSTOM_DEF_THEME-packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_CUSTOM_DEF_THEME-filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 191
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    .line 192
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 194
    const/16 v5, 0x280

    iput v5, p3, Landroid/util/TypedValue;->density:I

    .line 197
    :cond_1
    if-eqz v1, :cond_2

    .line 199
    :try_start_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 206
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "iStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v3

    .line 176
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    goto :goto_1

    .line 200
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 201
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private getFlymeIconISFromSdcardPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appIconFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "icons"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FlymeThemeZipFile: getFlymeIconISFromSdcardPath: start appIconFileName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_1

    .line 113
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/sdcard/Customize/.FlymeIcon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 108
    :cond_0
    return-object v4

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FlymeThemeZipFile: getFlymeIconISFromSdcardPath: File Not Found packagName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", file == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    return-object v4
.end method

.method private getFlymeIconISFromSystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appIconFileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "icons"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    const-string/jumbo v5, "FlymeThemeZipFile: getFlymeIconISFromSystemPath: start"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/system/customizecenter/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "zipDefFilePath":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    if-eqz v5, :cond_0

    .line 129
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    .line 141
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_1

    .line 142
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_1

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_SYSTEM_DEF_THEME-packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_SYSTEM_DEF_THEME-filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 147
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 149
    :try_start_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 156
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "iStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return-object v3

    .line 123
    .end local v4    # "zipDefFilePath":Ljava/lang/String;
    :cond_2
    return-object v7

    .line 133
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    .restart local v4    # "zipDefFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    goto :goto_1

    .line 150
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 223
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old-------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drawable-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    const-string/jumbo v3, "drawable-640dpi"

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-object v1

    .line 231
    .end local v1    # "newPath":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    return-object p1
.end method

.method private replacePathToxxhdpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 211
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old-------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drawable-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "drawable-xxh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    const-string/jumbo v3, "dpi-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-object v1

    .line 216
    .end local v1    # "newPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    return-object p1
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    iput-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 250
    :try_start_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_1
    iput-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    .line 256
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_2

    .line 258
    :try_start_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 262
    :goto_2
    iput-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    .line 264
    :cond_2
    iput-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 265
    iput-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    .line 266
    iput-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    .line 267
    const-string/jumbo v1, "persist.sys.use.flyme.icon"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    const-string/jumbo v2, "true"

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    .line 269
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clean: mUseFlymeIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 237
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 252
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EMPTY"
        }
    .end annotation

    .prologue
    .line 276
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 277
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->clean()V

    .line 275
    return-void
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 39
    .local v1, "iStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomizeTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 43
    .end local v1    # "iStream":Ljava/io/InputStream;
    :cond_0
    if-nez v1, :cond_1

    iget-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    if-eqz v2, :cond_1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getCustomRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 46
    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseFlymeTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getFlymeIconISFromSdcardPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 49
    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseFlymeTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getFlymeIconISFromSystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 58
    :cond_3
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method
