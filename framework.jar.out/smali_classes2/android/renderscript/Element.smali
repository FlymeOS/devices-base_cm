.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$1;,
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 804
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 805
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "dk"    # Landroid/renderscript/Element$DataKind;
    .param p6, "norm"    # Z
    .param p7, "size"    # I

    .prologue
    .line 785
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 786
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    .line 789
    const/4 v0, 0x3

    if-ne p7, v0, :cond_0

    .line 790
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    .line 797
    :goto_0
    iput-object p4, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 798
    iput-object p5, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 799
    iput-boolean p6, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 800
    iput p7, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 801
    return-void

    .line 792
    :cond_0
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p7

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_0

    .line 795
    :cond_1
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_0
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "e"    # [Landroid/renderscript/Element;
    .param p5, "n"    # [Ljava/lang/String;
    .param p6, "as"    # [I

    .prologue
    .line 768
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 769
    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 770
    const/4 v1, 0x1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 771
    iput-object p4, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 772
    iput-object p5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 773
    iput-object p6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 774
    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    iput-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 775
    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    iput-object v1, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 776
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 777
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 778
    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v0

    .line 779
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 782
    return-void
.end method

.method public static ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 418
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 419
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 482
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 483
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    .line 485
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 313
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 314
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 404
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 405
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 390
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 391
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 524
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 525
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 531
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 532
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    .line 534
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 538
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 539
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 397
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 398
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    .line 400
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 545
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 546
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 552
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 553
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 559
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 560
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static FONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 474
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 475
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 355
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    .line 358
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 629
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 630
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    .line 632
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 636
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 637
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 643
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 644
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 369
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 370
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    .line 372
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 671
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 672
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    .line 674
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 678
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 679
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    .line 681
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 685
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 686
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    .line 688
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 383
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 384
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    .line 386
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 713
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 714
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    .line 716
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 720
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 721
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    .line 723
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 727
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 728
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    .line 730
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 341
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 587
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 588
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    .line 590
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 595
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 601
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 602
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    .line 604
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 750
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 761
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 762
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    .line 764
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 754
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 755
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    .line 757
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 741
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 742
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    .line 744
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 439
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 440
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 446
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 447
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 449
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 460
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 461
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 467
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 468
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    .line 470
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 453
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 510
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 511
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 503
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 504
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    .line 506
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 517
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 518
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    .line 520
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 489
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 490
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    .line 492
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 496
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 497
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    .line 499
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 425
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 432
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 433
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 411
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 348
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 349
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 608
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 609
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    .line 611
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 615
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 616
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    .line 618
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 622
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 623
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    .line 625
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 362
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 650
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 651
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 657
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 658
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    .line 660
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 664
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 665
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    .line 667
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 376
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 377
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    .line 379
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 692
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 693
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    .line 695
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 699
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 700
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    .line 702
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 706
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 707
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    .line 709
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 567
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    .line 569
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 573
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 574
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    .line 576
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 580
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 581
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 734
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 735
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/renderscript/Element$DataKind;

    .prologue
    .line 922
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    .line 929
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported DataKind"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 931
    :cond_0
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 936
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported DataType"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 938
    :cond_1
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 939
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_3

    .line 942
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 944
    :cond_3
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_4

    .line 945
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_5

    .line 949
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    :cond_5
    const/4 v8, 0x1

    .line 953
    .local v8, "size":I
    sget-object v2, Landroid/renderscript/Element$1;->$SwitchMap$android$renderscript$Element$DataKind:[I

    invoke-virtual/range {p2 .. p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 968
    :goto_0
    const/4 v7, 0x1

    .line 969
    .local v7, "norm":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    move-object/from16 v0, p2

    iget v6, v0, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    .line 970
    .local v10, "id":J
    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9

    .line 955
    .end local v7    # "norm":Z
    .end local v10    # "id":J
    :pswitch_0
    const/4 v8, 0x2

    .line 956
    goto :goto_0

    .line 958
    :pswitch_1
    const/4 v8, 0x3

    .line 959
    goto :goto_0

    .line 961
    :pswitch_2
    const/4 v8, 0x4

    .line 962
    goto :goto_0

    .line 964
    :pswitch_3
    const/4 v8, 0x2

    goto :goto_0

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;

    .prologue
    .line 858
    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 859
    .local v14, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v7, 0x0

    .line 860
    .local v7, "norm":Z
    const/4 v8, 0x1

    .line 861
    .local v8, "vecSize":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    .line 862
    .local v10, "id":J
    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 879
    const/4 v2, 0x2

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    .line 880
    :cond_0
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Vector size out of range 2-4."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_1
    sget-object v2, Landroid/renderscript/Element$1;->$SwitchMap$android$renderscript$Element$DataType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 903
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Cannot create vector of non-primitive type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    :pswitch_0
    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 897
    .local v14, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v7, 0x0

    .line 898
    .local v7, "norm":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    .line 899
    .local v10, "id":J
    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, p2

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9

    .line 883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 8

    .prologue
    const/16 v7, 0x23

    const/4 v6, 0x0

    .line 68
    iget-object v5, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v5, :cond_1

    .line 88
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v4, 0x0

    .line 73
    .local v4, "noPaddingFieldCount":I
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v3, v5

    .line 75
    .local v3, "fieldCount":I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 76
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 75
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_3
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "ctNoPadding":I
    move v2, v1

    .end local v1    # "ctNoPadding":I
    .local v2, "ctNoPadding":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 84
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    .line 85
    iget-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    aput v0, v5, v2

    .line 83
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "ctNoPadding":I
    .restart local v2    # "ctNoPadding":I
    goto :goto_1

    :cond_4
    move v1, v2

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    goto :goto_2
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroid/renderscript/Element$DataKind;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroid/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public getSubElement(I)Landroid/renderscript/Element;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 233
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 237
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 266
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 270
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getSubElementCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 249
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 253
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 282
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 286
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getVectorSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroid/renderscript/Element;)Z
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    const/4 v0, 0x1

    .line 986
    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/renderscript/Element;->mSize:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v2, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/renderscript/Element;->mVectorSize:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-eqz v2, :cond_2

    .line 206
    const/4 v1, 0x1

    goto :goto_0

    .line 204
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method updateFromNative()V
    .locals 18

    .prologue
    .line 809
    invoke-super/range {p0 .. p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 812
    const/4 v3, 0x5

    new-array v9, v3, [I

    .line 813
    .local v9, "dataBuffer":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v9}, Landroid/renderscript/RenderScript;->nElementGetNativeData(J[I)V

    .line 815
    const/4 v3, 0x2

    aget v3, v9, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/renderscript/Element;->mNormalized:Z

    .line 816
    const/4 v3, 0x3

    aget v3, v9, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/renderscript/Element;->mVectorSize:I

    .line 817
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/renderscript/Element;->mSize:I

    .line 818
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v2

    .local v2, "arr$":[Landroid/renderscript/Element$DataType;
    array-length v14, v2

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v14, :cond_2

    aget-object v11, v2, v13

    .line 819
    .local v11, "dt":Landroid/renderscript/Element$DataType;
    iget v3, v11, Landroid/renderscript/Element$DataType;->mID:I

    const/4 v4, 0x0

    aget v4, v9, v4

    if-ne v3, v4, :cond_0

    .line 820
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v3, v3, Landroid/renderscript/Element$DataType;->mSize:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/renderscript/Element;->mVectorSize:I

    mul-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/renderscript/Element;->mSize:I

    .line 818
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 815
    .end local v2    # "arr$":[Landroid/renderscript/Element$DataType;
    .end local v11    # "dt":Landroid/renderscript/Element$DataType;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 824
    .restart local v2    # "arr$":[Landroid/renderscript/Element$DataType;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    :cond_2
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v2

    .local v2, "arr$":[Landroid/renderscript/Element$DataKind;
    array-length v14, v2

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_4

    aget-object v10, v2, v13

    .line 825
    .local v10, "dk":Landroid/renderscript/Element$DataKind;
    iget v3, v10, Landroid/renderscript/Element$DataKind;->mID:I

    const/4 v4, 0x1

    aget v4, v9, v4

    if-ne v3, v4, :cond_3

    .line 826
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 824
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 830
    .end local v10    # "dk":Landroid/renderscript/Element$DataKind;
    :cond_4
    const/4 v3, 0x4

    aget v15, v9, v3

    .line 831
    .local v15, "numSubElements":I
    if-lez v15, :cond_5

    .line 832
    new-array v3, v15, [Landroid/renderscript/Element;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 833
    new-array v3, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 834
    new-array v3, v15, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 835
    new-array v3, v15, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 837
    new-array v6, v15, [J

    .line 838
    .local v6, "subElementIds":[J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/Element;->mArraySizes:[I

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementGetSubElements(J[J[Ljava/lang/String;[I)V

    .line 839
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v15, :cond_5

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-instance v4, Landroid/renderscript/Element;

    aget-wide v16, v6, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    move-wide/from16 v0, v16

    invoke-direct {v4, v0, v1, v5}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    aput-object v4, v3, v12

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/renderscript/Element;->updateFromNative()V

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/renderscript/Element;->mSize:I

    aput v4, v3, v12

    .line 843
    move-object/from16 v0, p0

    iget v3, v0, Landroid/renderscript/Element;->mSize:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v4, v4, v12

    iget v4, v4, Landroid/renderscript/Element;->mSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v5, v5, v12

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/renderscript/Element;->mSize:I

    .line 839
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 846
    .end local v6    # "subElementIds":[J
    .end local v12    # "i":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 847
    return-void
.end method
