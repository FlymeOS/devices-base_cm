.class public final Lcom/android/internal/util/cm/palette/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

.field private mMaxColors:I

.field private mResizeMaxDimension:I

.field private mSwatches:Ljava/util/List;
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
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mMaxColors:I

    .line 447
    const/16 v0, 0xc0

    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mFilters:Ljava/util/List;

    .line 476
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-static {}, Lcom/android/internal/util/cm/palette/Palette;->-get0()Lcom/android/internal/util/cm/palette/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/Palette$Builder;-><init>()V

    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 455
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/Palette$Builder;-><init>()V

    .line 469
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of Swatches is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_1
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 467
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/android/internal/util/cm/palette/Palette$Filter;)Lcom/android/internal/util/cm/palette/Palette$Builder;
    .locals 1
    .param p1, "filter"    # Lcom/android/internal/util/cm/palette/Palette$Filter;

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    return-object p0
.end method

.method public clearFilters()Lcom/android/internal/util/cm/palette/Palette$Builder;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 522
    return-object p0
.end method

.method public generate(Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 5
    .param p1, "listener"    # Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 616
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_0
    new-instance v0, Lcom/android/internal/util/cm/palette/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/cm/palette/Palette$Builder$1;-><init>(Lcom/android/internal/util/cm/palette/Palette$Builder;Lcom/android/internal/util/cm/palette/Palette$PaletteAsyncListener;)V

    .line 630
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Landroid/graphics/Bitmap;Ljava/lang/Void;Lcom/android/internal/util/cm/palette/Palette;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 631
    return-object v0
.end method

.method public generate()Lcom/android/internal/util/cm/palette/Palette;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 544
    const/4 v8, 0x0

    .line 548
    .local v8, "logger":Landroid/util/TimingLogger;
    iget-object v4, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    .line 551
    iget v4, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mResizeMaxDimension:I

    if-gtz v4, :cond_0

    .line 552
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 553
    const-string/jumbo v4, "Minimum dimension size for resizing should should be >= 1"

    .line 552
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_0
    iget-object v4, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mResizeMaxDimension:I

    invoke-static {v4, v5}, Lcom/android/internal/util/cm/palette/Palette;->-wrap0(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    .local v0, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_1

    .line 560
    const-string/jumbo v4, "Processed Bitmap"

    invoke-virtual {v8, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 564
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 565
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 566
    .local v7, "height":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, "pixels":[I
    move v4, v2

    move v5, v2

    move v6, v3

    .line 567
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 569
    new-instance v10, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    iget v4, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mMaxColors:I

    .line 570
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v12

    .line 569
    :goto_0
    invoke-direct {v10, v1, v4, v2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;-><init>([II[Lcom/android/internal/util/cm/palette/Palette$Filter;)V

    .line 573
    .local v10, "quantizer":Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_2

    .line 574
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 576
    :cond_2
    invoke-virtual {v10}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v11

    .line 578
    .local v11, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    if-eqz v12, :cond_3

    .line 579
    const-string/jumbo v2, "Color quantization completed"

    invoke-virtual {v8, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 587
    .end local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "pixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v10    # "quantizer":Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    if-nez v2, :cond_4

    .line 588
    new-instance v2, Lcom/android/internal/util/cm/palette/DefaultGenerator;

    invoke-direct {v2}, Lcom/android/internal/util/cm/palette/DefaultGenerator;-><init>()V

    iput-object v2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    .line 592
    :cond_4
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-virtual {v2, v11}, Lcom/android/internal/util/cm/palette/Palette$Generator;->generate(Ljava/util/List;)V

    .line 594
    if-eqz v12, :cond_5

    .line 595
    const-string/jumbo v2, "Generator.generate() completed"

    invoke-virtual {v8, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 599
    :cond_5
    new-instance v9, Lcom/android/internal/util/cm/palette/Palette;

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    invoke-direct {v9, v11, v2, v12}, Lcom/android/internal/util/cm/palette/Palette;-><init>(Ljava/util/List;Lcom/android/internal/util/cm/palette/Palette$Generator;Lcom/android/internal/util/cm/palette/Palette;)V

    .line 601
    .local v9, "p":Lcom/android/internal/util/cm/palette/Palette;
    if-eqz v12, :cond_6

    .line 602
    const-string/jumbo v2, "Created Palette"

    invoke-virtual {v8, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v8}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 606
    :cond_6
    return-object v9

    .line 570
    .end local v9    # "p":Lcom/android/internal/util/cm/palette/Palette;
    .end local v11    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    .restart local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pixels":[I
    .restart local v3    # "width":I
    .restart local v7    # "height":I
    :cond_7
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mFilters:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/util/cm/palette/Palette$Filter;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/util/cm/palette/Palette$Filter;

    goto :goto_0

    .line 583
    .end local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "pixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    :cond_8
    iget-object v11, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .restart local v11    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    goto :goto_1
.end method

.method generator(Lcom/android/internal/util/cm/palette/Palette$Generator;)Lcom/android/internal/util/cm/palette/Palette$Builder;
    .locals 0
    .param p1, "generator"    # Lcom/android/internal/util/cm/palette/Palette$Generator;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mGenerator:Lcom/android/internal/util/cm/palette/Palette$Generator;

    .line 485
    return-object p0
.end method

.method public maximumColorCount(I)Lcom/android/internal/util/cm/palette/Palette$Builder;
    .locals 0
    .param p1, "colors"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mMaxColors:I

    .line 498
    return-object p0
.end method

.method public resizeBitmapSize(I)Lcom/android/internal/util/cm/palette/Palette$Builder;
    .locals 0
    .param p1, "maxDimension"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/android/internal/util/cm/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 513
    return-object p0
.end method
