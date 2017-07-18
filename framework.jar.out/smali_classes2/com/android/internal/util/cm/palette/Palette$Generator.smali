.class abstract Lcom/android/internal/util/cm/palette/Palette$Generator;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Generator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMutedSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVibrantSwatch()Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return-object v0
.end method
