.class public final Lcom/android/internal/util/cm/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;,
        Lcom/android/internal/util/cm/palette/Palette$Swatch;,
        Lcom/android/internal/util/cm/palette/Palette$Builder;,
        Lcom/android/internal/util/cm/palette/Palette$Generator;,
        Lcom/android/internal/util/cm/palette/Palette$Filter;,
        Lcom/android/internal/util/cm/palette/Palette$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field private static final DEFAULT_FILTER:Lcom/android/internal/util/cm/palette/Palette$Filter;

.field private static final DEFAULT_RESIZE_BITMAP_MAX_DIMENSION:I = 0xc0

.field private static final LOG_TAG:Ljava/lang/String; = "Palette"

.field private static final LOG_TIMINGS:Z = false

.field private static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field private static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/android/internal/util/cm/palette/Palette$Filter;
    .locals 1

    sget-object v0, Lcom/android/internal/util/cm/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/util/cm/palette/Palette$Filter;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetMaxDimension"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/palette/Palette;->scaleBitmapDown(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/android/internal/util/cm/palette/Palette$1;

    invoke-direct {v0}, Lcom/android/internal/util/cm/palette/Palette$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/cm/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/util/cm/palette/Palette$Filter;

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/android/internal/util/cm/palette/Palette$Generator;)V
    .locals 0
    .param p2, "generator"    # Lcom/android/internal/util/cm/palette/Palette$Generator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;",
            "Lcom/android/internal/util/cm/palette/Palette$Generator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    .line 145
    iput-object p2, p0, Lcom/android/internal/util/cm/palette/Palette;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/internal/util/cm/palette/Palette$Generator;Lcom/android/internal/util/cm/palette/Palette;)V
    .locals 0
    .param p1, "swatches"    # Ljava/util/List;
    .param p2, "generator"    # Lcom/android/internal/util/cm/palette/Palette$Generator;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/cm/palette/Palette;-><init>(Ljava/util/List;Lcom/android/internal/util/cm/palette/Palette$Generator;)V

    return-void
.end method

.method public static from(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette$Builder;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    new-instance v0, Lcom/android/internal/util/cm/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/util/cm/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Lcom/android/internal/util/cm/palette/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/util/cm/palette/Palette;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    new-instance v0, Lcom/android/internal/util/cm/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/util/cm/palette/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate()Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate()Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/Palette;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/cm/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate()Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .param p2, "listener"    # Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/util/cm/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/cm/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate(Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listener"    # Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/util/cm/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/cm/palette/Palette$Builder;->generate(Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static scaleBitmapDown(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetMaxDimension"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 276
    .local v0, "maxDimension":I
    if-gt v0, p1, :cond_0

    .line 278
    return-object p0

    .line 281
    :cond_0
    int-to-float v2, p1

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 283
    .local v1, "scaleRatio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 284
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 285
    const/4 v4, 0x0

    .line 282
    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getDarkMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getDarkMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    .line 266
    .local v0, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Generator;->getDarkMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDarkVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getDarkVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    .line 233
    .local v0, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Generator;->getDarkVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getLightMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    .line 255
    .local v0, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getLightMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Generator;->getLightMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getLightVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    .line 222
    .local v0, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Generator;->getLightVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    .line 244
    .local v0, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Generator;->getMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette;->getVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    .line 211
    .local v0, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/Palette$Generator;->getVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method
