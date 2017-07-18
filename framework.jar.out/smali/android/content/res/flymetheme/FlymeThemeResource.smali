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

    .line 34
    return-void
.end method

.method public static get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "iStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v1

    .line 152
    .local v1, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1, p0, v2}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 155
    .end local v0    # "iStream":Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method public static getDefaultActivityIcon()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 200
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v4

    .line 201
    .local v4, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v4, :cond_0

    .line 202
    const-string/jumbo v2, "def_icon.png"

    .line 203
    .local v2, "resPath":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 206
    .end local v1    # "iStream":Ljava/io/InputStream;
    .end local v2    # "resPath":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 208
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 209
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_1
    :goto_0
    return-object v3

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShortcutBackguard()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 181
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v4

    .line 182
    .local v4, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v4, :cond_0

    .line 183
    const-string/jumbo v2, "shortcut_background.png"

    .line 184
    .local v2, "resPath":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 187
    .end local v1    # "iStream":Ljava/io/InputStream;
    .end local v2    # "resPath":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 189
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 190
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_0
    return-object v3

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

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

    return-object v1

    .line 48
    :cond_0
    return-object v2
.end method

.method public static getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "iconName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "iStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 161
    .local v4, "retBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v5

    .line 162
    .local v5, "sysZipThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v5, :cond_0

    .line 163
    move-object v3, p0

    .line 164
    .local v3, "resPath":Ljava/lang/String;
    invoke-virtual {v5, v3, v6}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 167
    .end local v2    # "iStream":Ljava/io/InputStream;
    .end local v3    # "resPath":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 168
    .local v4, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v4    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v4

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 171
    .local v1, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private parseColorsFromXml(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 59
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 60
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 61
    .local v3, "reader":Lorg/xml/sax/XMLReader;
    iget-object v6, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageConfigHelper:Landroid/content/res/flymetheme/PackageValueHelper;

    invoke-interface {v3, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 62
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .end local v3    # "reader":Lorg/xml/sax/XMLReader;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :cond_1
    :goto_0
    return-void

    .line 73
    .restart local v3    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Lorg/xml/sax/XMLReader;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 71
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 73
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz p1, :cond_1

    .line 71
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 73
    :catch_4
    move-exception v1

    goto :goto_0

    .line 63
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz p1, :cond_1

    .line 71
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 73
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 70
    if-eqz p1, :cond_2

    .line 71
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 68
    :cond_2
    :goto_1
    throw v6

    .line 73
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
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

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
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

    .line 102
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;
    .locals 8
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "resType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    iget-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 251
    :cond_0
    move-object v0, p1

    .line 252
    .local v0, "overName":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    if-ne v7, p2, :cond_5

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "flyme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
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

    .line 261
    :goto_1
    if-nez v1, :cond_4

    .line 262
    if-eq v7, p2, :cond_3

    if-ne v6, p2, :cond_4

    .line 263
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v2

    .line 264
    .local v2, "themeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    if-eqz v2, :cond_4

    .line 265
    invoke-virtual {v2, p1, v5}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v1

    .line 268
    .end local v2    # "themeResource":Landroid/content/res/flymetheme/FlymeThemeResource;
    :cond_4
    return-object v1

    .line 255
    :cond_5
    if-ne v6, p2, :cond_1

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_6
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/flymetheme/ColorInfo;

    .local v1, "retColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    goto :goto_1
.end method

.method public getThemeFileStream(Ljava/lang/String;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "resType"    # I
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 217
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/Resources;

    if-nez v3, :cond_0

    .line 218
    return-object v4

    .line 219
    :cond_0
    const/4 v1, 0x0

    .line 221
    .local v1, "iStream":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    if-ne v5, p2, :cond_2

    .line 223
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 245
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v1

    .line 225
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_2
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "iStream":Ljava/io/InputStream;
    goto :goto_0

    .line 227
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_3
    if-eq v5, p2, :cond_4

    const/4 v3, 0x1

    if-ne v3, p2, :cond_7

    .line 228
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "framework-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "filePath":Ljava/lang/String;
    if-ne v5, p2, :cond_5

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flyme-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_5
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 233
    .local v1, "iStream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 234
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getSystemThemeManager()Landroid/content/res/flymetheme/MtpkManager;

    move-result-object v2

    .line 235
    .local v2, "sysThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    if-eqz v2, :cond_1

    .line 236
    if-ne v5, p2, :cond_6

    .line 237
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 239
    :cond_6
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v3, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 243
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "sysThemeManager":Landroid/content/res/flymetheme/MtpkManager;
    .local v1, "iStream":Ljava/io/InputStream;
    :cond_7
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v4, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, p3}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "iStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    if-nez v1, :cond_0

    .line 127
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 130
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 132
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 135
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromFlyme(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 146
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    .line 125
    return-void

    .line 140
    .local v0, "is":Ljava/io/InputStream;
    :cond_3
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "theme_values.xml"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 142
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 143
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    goto :goto_0
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

    const-string/jumbo v1, ", res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mOwner:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, ", mZipManager = "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mZipManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 111
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
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->clean()V

    .line 118
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeResource;->mIsWaitingLoad:Z

    .line 110
    return-void
.end method
