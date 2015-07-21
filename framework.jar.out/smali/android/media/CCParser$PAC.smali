.class Landroid/media/CCParser$PAC;
.super Landroid/media/CCParser$StyleCode;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PAC"
.end annotation


# instance fields
.field final mCol:I

.field final mRow:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "style"    # I
    .param p4, "color"    # I

    .prologue
    .line 449
    invoke-direct {p0, p3, p4}, Landroid/media/CCParser$StyleCode;-><init>(II)V

    .line 450
    iput p1, p0, Landroid/media/CCParser$PAC;->mRow:I

    .line 451
    iput p2, p0, Landroid/media/CCParser$PAC;->mCol:I

    .line 452
    return-void
.end method

.method static fromBytes(BB)Landroid/media/CCParser$PAC;
    .locals 8
    .param p0, "data1"    # B
    .param p1, "data2"    # B

    .prologue
    .line 425
    const/16 v5, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 426
    .local v3, "rowTable":[I
    and-int/lit8 v5, p0, 0x7

    aget v5, v3, v5

    and-int/lit8 v6, p1, 0x20

    shr-int/lit8 v6, v6, 0x5

    add-int v2, v5, v6

    .line 427
    .local v2, "row":I
    const/4 v4, 0x0

    .line 428
    .local v4, "style":I
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_0

    .line 429
    or-int/lit8 v4, v4, 0x2

    .line 431
    :cond_0
    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_1

    .line 433
    shr-int/lit8 v5, p1, 0x1

    and-int/lit8 v1, v5, 0x7

    .line 434
    .local v1, "indent":I
    new-instance v5, Landroid/media/CCParser$PAC;

    mul-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v4, v7}, Landroid/media/CCParser$PAC;-><init>(IIII)V

    .line 444
    .end local v1    # "indent":I
    :goto_0
    return-object v5

    .line 437
    :cond_1
    shr-int/lit8 v5, p1, 0x1

    and-int/lit8 v0, v5, 0x7

    .line 439
    .local v0, "color":I
    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    .line 441
    const/4 v0, 0x0

    .line 442
    or-int/lit8 v4, v4, 0x1

    .line 444
    :cond_2
    new-instance v5, Landroid/media/CCParser$PAC;

    const/4 v6, -0x1

    invoke-direct {v5, v2, v6, v4, v0}, Landroid/media/CCParser$PAC;-><init>(IIII)V

    goto :goto_0

    .line 425
    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method getCol()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Landroid/media/CCParser$PAC;->mCol:I

    return v0
.end method

.method getRow()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Landroid/media/CCParser$PAC;->mRow:I

    return v0
.end method

.method isIndentPAC()Z
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Landroid/media/CCParser$PAC;->mCol:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 468
    const-string/jumbo v0, "{%d, %d}, %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/media/CCParser$PAC;->mRow:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/media/CCParser$PAC;->mCol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-super {p0}, Landroid/media/CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
