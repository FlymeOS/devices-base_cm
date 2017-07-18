.class public Landroid/content/res/flymetheme/FlymeFontsHelper;
.super Ljava/lang/Object;
.source "FlymeFontsHelper.java"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "FlymeFontsHelper"

.field private static curTypefacePath:Ljava/lang/String; = null

.field private static mCreated:Z = false

.field private static sFlymeDefaultTypeface:Landroid/graphics/Typeface; = null

.field private static final sTYPEFACE_FONT_PATH:Ljava/lang/String; = "data/data/com.meizu.customizecenter/font"

.field private static final sTYPEFACE_PATH_OTF:Ljava/lang/String; = "data/data/com.meizu.customizecenter/font/flymeFont.otf"

.field private static final sTYPEFACE_PATH_TTF:Ljava/lang/String; = "data/data/com.meizu.customizecenter/font/flymeFont.ttf"

.field private static sWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    const-string/jumbo v0, "FlymeFontsHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->DEBUG:Z

    .line 18
    sput-object v2, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 20
    sput-object v2, Landroid/content/res/flymetheme/FlymeFontsHelper;->sWhiteList:Ljava/util/List;

    .line 22
    sput-object v2, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanflymeTypeface()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 74
    sput-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    .line 72
    return-void
.end method

.method private static generateNewTypeface()V
    .locals 5

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "data/data/com.meizu.customizecenter/font"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "checkFontPathMount":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "data/data/com.meizu.customizecenter/font/flymeFont.ttf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "customFontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string/jumbo v3, "data/data/com.meizu.customizecenter/font/flymeFont.ttf"

    sput-object v3, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 49
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    .line 26
    .end local v1    # "customFontFile":Ljava/io/File;
    :goto_1
    return-void

    .line 40
    .restart local v1    # "customFontFile":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "customFontFile":Ljava/io/File;
    const-string/jumbo v3, "data/data/com.meizu.customizecenter/font/flymeFont.otf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .restart local v1    # "customFontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    const-string/jumbo v3, "data/data/com.meizu.customizecenter/font/flymeFont.otf"

    sput-object v3, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "customFontFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FlymeFontsHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "customFontFile":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    sput-object v3, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 46
    const/4 v3, 0x0

    sput-object v3, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getCurFlymeTypefacePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getflymeTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->generateNewTypeface()V

    .line 69
    :cond_0
    sget-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static hasFlymeTypeface()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->getflymeTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultTypeface(Landroid/graphics/Typeface;)Z
    .locals 1
    .param p0, "curTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne p0, v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    .line 58
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/graphics/Typeface;->isSystemTypeface(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0
.end method
