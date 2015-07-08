.class public Landroid/content/res/flymetheme/FlymeFontsHelper;
.super Ljava/lang/Object;
.source "FlymeFontsHelper.java"


# static fields
.field public static sFlymeDefaultTypeface:Landroid/graphics/Typeface; = null

.field private static final sTYPEFACE_PATH:Ljava/lang/String; = "data/mtheme/fonts/new_fonts.ttf"

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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sWhiteList:Ljava/util/List;

    .line 15
    sput-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNewTypeface(Landroid/graphics/Paint;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 18
    sget-object v1, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 27
    :goto_0
    return-object v1

    .line 21
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "data/mtheme/fonts/new_fonts.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 27
    :goto_1
    sget-object v1, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method
