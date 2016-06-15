.class public Landroid/content/res/flymetheme/FlymeThemeResource;
.super Ljava/lang/Object;
.source "FlymeThemeResource.java"


# instance fields
.field private mColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/flymetheme/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/flymetheme/DimensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingLoad:Z

.field private mOwner:Landroid/content/res/Resources;

.field private mPackageConfigHelper:Landroid/content/res/flymetheme/PackageValueHelper;

.field private mPackageName:Ljava/lang/String;

.field private mZipManager:Landroid/content/res/flymetheme/MtpkManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mDimensions:Ljava/util/Map;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    .line 35
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/content/res/flymetheme/MtpkManager;

    invoke-direct {v0}, Landroid/content/res/flymetheme/MtpkManager;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 37
    new-instance v0, Landroid/content/res/flymetheme/PackageValueHelper;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/PackageValueHelper;-><init>(Landroid/content/res/flymetheme/FlymeThemeResource;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageConfigHelper:Landroid/content/res/flymetheme/PackageValueHelper;

    .line 38
    iput-object p2, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/Resources;

    .line 39
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/MtpkManager;->setSystemThemeManager(Landroid/content/res/flymetheme/MtpkManager;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 41
    return-void
.end method

.method public static get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resPath"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "iStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v1

    .line 151
    .local v1, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v1, :cond_0

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 154
    :cond_0
    return-object v0
.end method

.method public static getDefaultActivityIcon()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 199
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v4

    .line 200
    .local v4, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v4, :cond_0

    .line 201
    const-string v2, "def_icon.png"

    .line 202
    .local v2, "resPath":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 205
    .end local v2    # "resPath":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 207
    if-eqz v1, :cond_1

    .line 208
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_1
    :goto_0
    return-object v3

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShortcutBackguard()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 180
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v4

    .line 181
    .local v4, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v4, :cond_0

    .line 182
    const-string/jumbo v2, "shortcut_background.png"

    .line 183
    .local v2, "resPath":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 186
    .end local v2    # "resPath":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 188
    if-eqz v1, :cond_1

    .line 189
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_1
    :goto_0
    return-object v3

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v0

    .line 45
    .local v0, "systemThemeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, v0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "iconName"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "iStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 160
    .local v4, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v5

    .line 161
    .local v5, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v5, :cond_0

    .line 162
    move-object v3, p0

    .line 163
    .local v3, "resPath":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 166
    .end local v3    # "resPath":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 167
    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :cond_1
    :goto_0
    return-object v4

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "er":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseColorsFromXml(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 59
    .local v2, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 60
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 61
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageConfigHelper:Landroid/content/res/flymetheme/PackageValueHelper;

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 62
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v3

    goto :goto_0

    .line 63
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    .end local v1    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v3

    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 73
    :catch_2
    move-exception v3

    goto :goto_0

    .line 64
    :catch_3
    move-exception v3

    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 73
    :catch_4
    move-exception v3

    goto :goto_0

    .line 66
    :catch_5
    move-exception v3

    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 73
    :catch_6
    move-exception v3

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v3

    .line 70
    if-eqz p1, :cond_2

    .line 71
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 75
    :cond_2
    :goto_1
    throw v3

    .line 73
    :catch_7
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public addColorValue(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # J
    .param p4, "pkgTag"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Landroid/content/res/flymetheme/ColorInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/content/res/flymetheme/ColorInfo;-><init>(JLjava/lang/String;)V

    .line 88
    .local v0, "value":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz p4, :cond_0

    .line 89
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addDimensionValue(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # I
    .param p3, "pkgTag"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Landroid/content/res/flymetheme/DimensionInfo;

    invoke-direct {v0, p2, p3}, Landroid/content/res/flymetheme/DimensionInfo;-><init>(ILjava/lang/String;)V

    .line 104
    .local v0, "value":Landroid/content/res/flymetheme/DimensionInfo;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mDimensions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;
    .locals 7
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "resType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 248
    iget-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 250
    :cond_0
    move-object v0, p1

    .line 251
    .local v0, "overName":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    if-ne v6, p2, :cond_5

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flyme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    const/4 v1, 0x0

    .line 260
    .local v1, "retColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    :goto_1
    if-nez v1, :cond_4

    if-eq v6, p2, :cond_3

    if-ne v5, p2, :cond_4

    .line 262
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v2

    .line 263
    .local v2, "themeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    if-eqz v2, :cond_4

    .line 264
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v1

    .line 267
    .end local v2    # "themeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    :cond_4
    return-object v1

    .line 254
    .end local v1    # "retColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    :cond_5
    if-ne v5, p2, :cond_1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_6
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/flymetheme/ColorInfo;

    move-object v1, v3

    goto :goto_1
.end method

.method public getThemeFileStream(Ljava/lang/String;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "resType"    # I
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v5, 0x2

    .line 216
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/Resources;

    if-nez v3, :cond_1

    .line 217
    const/4 v1, 0x0

    .line 244
    :cond_0
    :goto_0
    return-object v1

    .line 218
    :cond_1
    const/4 v1, 0x0

    .line 220
    .local v1, "iStream":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    if-ne v5, p2, :cond_2

    .line 222
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 224
    :cond_2
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_3
    if-eq v5, p2, :cond_4

    const/4 v3, 0x1

    if-ne v3, p2, :cond_7

    .line 227
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "filePath":Ljava/lang/String;
    if-ne v5, p2, :cond_5

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flyme-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_5
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 232
    if-nez v1, :cond_0

    .line 233
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v2

    .line 234
    .local v2, "sysThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v2, :cond_0

    .line 235
    if-ne v5, p2, :cond_6

    .line 236
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_6
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 242
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "sysThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    :cond_7
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 134
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 145
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "theme_values.xml"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfig reload(), pkgName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZipManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeLogUtil;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/MtpkManager;->clean()V

    .line 115
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/MtpkManager;->setSystemThemeManager(Landroid/content/res/flymetheme/MtpkManager;)V

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    .line 119
    return-void
.end method
