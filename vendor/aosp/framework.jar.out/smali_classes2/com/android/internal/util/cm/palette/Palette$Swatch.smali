.class public final Lcom/android/internal/util/cm/palette/Palette$Swatch;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swatch"
.end annotation


# instance fields
.field private final mBlue:I

.field private mBodyTextColor:I

.field private mGeneratedTextColors:Z

.field private final mGreen:I

.field private mHsl:[F

.field private final mPopulation:I

.field private final mRed:I

.field private final mRgb:I

.field private mTitleTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "population"    # I

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRed:I

    .line 560
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mGreen:I

    .line 561
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBlue:I

    .line 562
    iput p1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    .line 563
    iput p2, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mPopulation:I

    .line 564
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "population"    # I

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput p1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRed:I

    .line 568
    iput p2, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mGreen:I

    .line 569
    iput p3, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBlue:I

    .line 570
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    .line 571
    iput p4, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mPopulation:I

    .line 572
    return-void
.end method

.method private ensureTextColorsGenerated()V
    .locals 10

    .prologue
    const/high16 v9, -0x1000000

    const/high16 v8, 0x40900000    # 4.5f

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 622
    iget-boolean v4, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mGeneratedTextColors:Z

    if-nez v4, :cond_0

    .line 624
    iget v4, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    invoke-static {v4, v5, v8}, Lcom/android/internal/util/cm/palette/ColorUtils;->getTextColorForBackground(IIF)I

    move-result v2

    .line 626
    .local v2, "lightBody":I
    iget v4, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    invoke-static {v4, v5, v7}, Lcom/android/internal/util/cm/palette/ColorUtils;->getTextColorForBackground(IIF)I

    move-result v3

    .line 629
    .local v3, "lightTitle":I
    if-eq v2, v5, :cond_1

    if-eq v3, v5, :cond_1

    .line 631
    iput v2, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBodyTextColor:I

    .line 632
    iput v3, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mTitleTextColor:I

    .line 633
    iput-boolean v6, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mGeneratedTextColors:Z

    .line 656
    .end local v2    # "lightBody":I
    .end local v3    # "lightTitle":I
    :cond_0
    :goto_0
    return-void

    .line 637
    .restart local v2    # "lightBody":I
    .restart local v3    # "lightTitle":I
    :cond_1
    iget v4, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/cm/palette/ColorUtils;->getTextColorForBackground(IIF)I

    move-result v0

    .line 639
    .local v0, "darkBody":I
    iget v4, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    invoke-static {v4, v9, v7}, Lcom/android/internal/util/cm/palette/ColorUtils;->getTextColorForBackground(IIF)I

    move-result v1

    .line 642
    .local v1, "darkTitle":I
    if-eq v0, v5, :cond_2

    if-eq v0, v5, :cond_2

    .line 644
    iput v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBodyTextColor:I

    .line 645
    iput v1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mTitleTextColor:I

    .line 646
    iput-boolean v6, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mGeneratedTextColors:Z

    goto :goto_0

    .line 652
    :cond_2
    if-eq v2, v5, :cond_3

    .end local v2    # "lightBody":I
    :goto_1
    iput v2, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBodyTextColor:I

    .line 653
    if-eq v3, v5, :cond_4

    .end local v3    # "lightTitle":I
    :goto_2
    iput v3, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mTitleTextColor:I

    .line 654
    iput-boolean v6, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mGeneratedTextColors:Z

    goto :goto_0

    .restart local v2    # "lightBody":I
    .restart local v3    # "lightTitle":I
    :cond_3
    move v2, v0

    .line 652
    goto :goto_1

    .end local v2    # "lightBody":I
    :cond_4
    move v3, v1

    .line 653
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 671
    if-ne p0, p1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return v1

    .line 674
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 675
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 678
    check-cast v0, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .line 679
    .local v0, "swatch":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    iget v3, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mPopulation:I

    iget v4, v0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mPopulation:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    iget v4, v0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getBodyTextColor()I
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 618
    iget v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBodyTextColor:I

    return v0
.end method

.method public getHsl()[F
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mHsl:[F

    if-nez v0, :cond_0

    .line 590
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mHsl:[F

    .line 591
    iget v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRed:I

    iget v1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mGreen:I

    iget v2, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBlue:I

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mHsl:[F

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/cm/palette/ColorUtils;->RGBtoHSL(III[F)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mHsl:[F

    return-object v0
.end method

.method public getPopulation()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mPopulation:I

    return v0
.end method

.method public getRgb()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    return v0
.end method

.method public getTitleTextColor()I
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 609
    iget v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mTitleTextColor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 684
    iget v0, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mRgb:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [RGB: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getRgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [HSL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Population: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mPopulation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Title Text: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mTitleTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Body Text: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/cm/palette/Palette$Swatch;->mBodyTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
