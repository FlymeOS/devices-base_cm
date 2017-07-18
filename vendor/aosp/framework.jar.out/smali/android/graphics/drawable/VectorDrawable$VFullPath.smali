.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1527
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1512
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1513
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1515
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1516
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1518
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1519
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1520
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1521
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1523
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1524
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1525
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1527
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1532
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1512
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1513
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1515
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1516
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1518
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1519
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1520
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1521
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1523
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1524
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1525
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1533
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1535
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1536
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1537
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1538
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1539
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    .line 1540
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1541
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1542
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1543
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1545
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1546
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1547
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1531
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 1551
    packed-switch p1, :pswitch_data_0

    .line 1559
    return-object p2

    .line 1553
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1555
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1557
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    .prologue
    .line 1564
    packed-switch p1, :pswitch_data_0

    .line 1572
    return-object p2

    .line 1566
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1568
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1570
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v4, -0x1

    .line 1590
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 1593
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1595
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1596
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1597
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 1600
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1601
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1602
    invoke-static {v0}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1606
    :cond_1
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1605
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1608
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1607
    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1610
    const/16 v2, 0x8

    .line 1609
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1610
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1609
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1612
    const/16 v2, 0x9

    .line 1611
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1612
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1611
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1614
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    const/16 v3, 0xa

    .line 1613
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    .line 1616
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1615
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1618
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1617
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1620
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1619
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1622
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1621
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1624
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    const/4 v3, 0x7

    .line 1623
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1626
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    const/4 v3, 0x5

    .line 1625
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1588
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1631
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-nez v1, :cond_0

    .line 1632
    return-void

    .line 1635
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1636
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1637
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1630
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 1

    .prologue
    .line 1683
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .prologue
    .line 1673
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .prologue
    .line 1643
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .prologue
    .line 1703
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .prologue
    .line 1713
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .prologue
    .line 1693
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1583
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    .line 1582
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1584
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1585
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1581
    return-void
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .prologue
    .line 1688
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    .line 1687
    return-void
.end method

.method setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 1678
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    .line 1677
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .prologue
    .line 1668
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    .line 1667
    return-void
.end method

.method setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 1648
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    .line 1647
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1658
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    .line 1657
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .prologue
    .line 1708
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    .line 1707
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .prologue
    .line 1718
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    .line 1717
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .prologue
    .line 1698
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    .line 1697
    return-void
.end method
