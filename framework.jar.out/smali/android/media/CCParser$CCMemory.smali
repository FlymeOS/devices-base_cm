.class Landroid/media/CCParser$CCMemory;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroid/media/CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method static synthetic -wrap0(Landroid/media/CCParser$CCMemory;II)V
    .locals 0
    .param p1, "baseRow"    # I
    .param p2, "windowSize"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/CCParser$CCMemory;->moveBaselineTo(II)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    const/16 v1, 0x11

    new-array v1, v1, [Landroid/media/CCParser$CCLineBuilder;

    iput-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    .line 594
    const/16 v1, 0x22

    new-array v0, v1, [C

    .line 595
    .local v0, "blank":[C
    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 596
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/media/CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    .line 593
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 697
    if-ge p0, p1, :cond_0

    .end local p1    # "min":I
    :goto_0
    return p1

    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 747
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    new-instance v1, Landroid/media/CCParser$CCLineBuilder;

    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 750
    :cond_0
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private moveBaselineTo(II)V
    .locals 7
    .param p1, "baseRow"    # I
    .param p2, "windowSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 714
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ne v2, p1, :cond_0

    .line 715
    return-void

    .line 717
    :cond_0
    move v0, p2

    .line 718
    .local v0, "actualWindowSize":I
    if-ge p1, v0, :cond_1

    .line 719
    move v0, p1

    .line 721
    :cond_1
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ge v2, v0, :cond_2

    .line 722
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 726
    :cond_2
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ge p1, v2, :cond_3

    .line 728
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 729
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget-object v4, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v5, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 728
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 733
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 734
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget-object v4, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v5, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 738
    :cond_4
    const/4 v1, 0x0

    :goto_2
    sub-int v2, p1, p2

    if-gt v1, v2, :cond_5

    .line 739
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v1

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 741
    :cond_5
    add-int/lit8 v1, p1, 0x1

    :goto_3
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 742
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v1

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 713
    :cond_6
    return-void
.end method

.method private moveCursorByCol(I)V
    .locals 3
    .param p1, "col"    # I

    .prologue
    .line 710
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 709
    return-void
.end method

.method private moveCursorTo(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const/4 v1, 0x1

    .line 701
    const/16 v0, 0xf

    invoke-static {p1, v1, v0}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 702
    const/16 v0, 0x20

    invoke-static {p2, v1, v0}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 700
    return-void
.end method

.method private moveCursorToRow(I)V
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 706
    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 705
    return-void
.end method


# virtual methods
.method bs()V
    .locals 3

    .prologue
    const/16 v2, 0xa0

    .line 629
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 630
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, v2}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 632
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 628
    :cond_0
    return-void
.end method

.method cr()V
    .locals 2

    .prologue
    .line 642
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    .line 641
    return-void
.end method

.method der()V
    .locals 6

    .prologue
    const/16 v5, 0xa0

    const/4 v4, 0x0

    .line 609
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    if-ge v0, v2, :cond_3

    .line 611
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/media/CCParser$CCLineBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_2

    .line 612
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/CCParser$CCLineBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 613
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1, v5}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 612
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    :cond_1
    return-void

    .line 610
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_3
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aput-object v4, v2, v3

    .line 608
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method erase()V
    .locals 3

    .prologue
    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 602
    iget-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    const/16 v1, 0xf

    iput v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 605
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 599
    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0xf

    .line 688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 689
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableStringBuilder;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_1

    .line 690
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/media/CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 690
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 691
    goto :goto_1

    .line 693
    :cond_1
    new-array v2, v4, [Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method rollUp(I)V
    .locals 7
    .param p1, "windowSize"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    .line 648
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v0

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_0
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v2, p1

    add-int/lit8 v1, v2, 0x1

    .line 651
    .local v1, "startRow":I
    if-ge v1, v5, :cond_1

    .line 652
    const/4 v1, 0x1

    .line 654
    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ge v0, v2, :cond_2

    .line 655
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget-object v3, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_2
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    :goto_2
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 659
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v0

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 662
    :cond_3
    iput v5, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 645
    return-void
.end method

.method tab(I)V
    .locals 0
    .param p1, "tabs"    # I

    .prologue
    .line 625
    invoke-direct {p0, p1}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 624
    return-void
.end method

.method writeMidRowCode(Landroid/media/CCParser$StyleCode;)V
    .locals 2
    .param p1, "m"    # Landroid/media/CCParser$StyleCode;

    .prologue
    .line 673
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/CCParser$CCLineBuilder;->setMidRowAt(ILandroid/media/CCParser$StyleCode;)V

    .line 674
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 672
    return-void
.end method

.method writePAC(Landroid/media/CCParser$PAC;)V
    .locals 2
    .param p1, "pac"    # Landroid/media/CCParser$PAC;

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    .line 683
    :goto_0
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/CCParser$CCLineBuilder;->setPACAt(ILandroid/media/CCParser$PAC;)V

    .line 677
    return-void

    .line 681
    :cond_0
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getRow()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    goto :goto_0
.end method

.method writeText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 667
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 668
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_0
    return-void
.end method
