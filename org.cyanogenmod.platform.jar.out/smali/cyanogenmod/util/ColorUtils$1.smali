.class final Lcyanogenmod/util/ColorUtils$1;
.super Ljava/lang/Object;
.source "ColorUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/util/ColorUtils;->getDominantSwatch(Lcom/android/internal/util/cm/palette/Palette;)Lcom/android/internal/util/cm/palette/Palette$Swatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/util/cm/palette/Palette$Swatch;Lcom/android/internal/util/cm/palette/Palette$Swatch;)I
    .locals 2
    .param p1, "sw1"    # Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .param p2, "sw2"    # Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getPopulation()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "sw1"    # Ljava/lang/Object;
    .param p2, "sw2"    # Ljava/lang/Object;

    .prologue
    .line 248
    check-cast p1, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .end local p1    # "sw1":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .end local p2    # "sw2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcyanogenmod/util/ColorUtils$1;->compare(Lcom/android/internal/util/cm/palette/Palette$Swatch;Lcom/android/internal/util/cm/palette/Palette$Swatch;)I

    move-result v0

    return v0
.end method
