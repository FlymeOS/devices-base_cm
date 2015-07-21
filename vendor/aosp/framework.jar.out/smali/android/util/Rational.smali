.class public final Landroid/util/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Landroid/util/Rational;

.field public static final NaN:Landroid/util/Rational;

.field public static final POSITIVE_INFINITY:Landroid/util/Rational;

.field public static final ZERO:Landroid/util/Rational;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 48
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v3, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 56
    new-instance v0, Landroid/util/Rational;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 64
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v3}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 103
    if-gez p2, :cond_0

    .line 104
    neg-int p1, p1

    .line 105
    neg-int p2, p2

    .line 109
    :cond_0
    if-nez p2, :cond_1

    if-lez p1, :cond_1

    .line 110
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 111
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    .line 127
    :goto_0
    return-void

    .line 112
    :cond_1
    if-nez p2, :cond_2

    if-gez p1, :cond_2

    .line 113
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 114
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0

    .line 115
    :cond_2
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 116
    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    .line 117
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0

    .line 118
    :cond_3
    if-nez p1, :cond_4

    .line 119
    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    .line 120
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0

    .line 122
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    .line 124
    .local v0, "gcd":I
    div-int v1, p1, v0

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 125
    div-int v1, p2, v0

    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_0
.end method

.method private equals(Landroid/util/Rational;)Z
    .locals 2
    .param p1, "other"    # Landroid/util/Rational;

    .prologue
    .line 244
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p1, Landroid/util/Rational;->mNumerator:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    iget v1, p1, Landroid/util/Rational;->mDenominator:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gcd(II)I
    .locals 4
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .prologue
    .line 314
    move v0, p0

    .line 315
    .local v0, "a":I
    move v1, p1

    .line 317
    .local v1, "b":I
    :goto_0
    if-eqz v1, :cond_0

    .line 318
    move v2, v1

    .line 320
    .local v2, "oldB":I
    rem-int v1, v0, v1

    .line 321
    move v0, v2

    .line 322
    goto :goto_0

    .line 324
    .end local v2    # "oldB":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    return v3
.end method

.method private static invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 545
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Rational: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isNegInf()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPosInf()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseRational(Ljava/lang/String;)Landroid/util/Rational;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 578
    const-string/jumbo v2, "string must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v2, "NaN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    sget-object v2, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 596
    :goto_0
    return-object v2

    .line 582
    :cond_0
    const-string v2, "Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    sget-object v2, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    goto :goto_0

    .line 584
    :cond_1
    const-string v2, "-Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    sget-object v2, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    goto :goto_0

    .line 588
    :cond_2
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 589
    .local v1, "sep_ix":I
    if-gez v1, :cond_3

    .line 590
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 592
    :cond_3
    if-gez v1, :cond_4

    .line 593
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 596
    :cond_4
    :try_start_0
    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 524
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_2

    .line 525
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_1

    .line 542
    :cond_0
    return-void

    .line 528
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for zero values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_3

    .line 531
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 534
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for infinity values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_3
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-static {v0, v1}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 538
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for finite values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Landroid/util/Rational;)I
    .locals 12
    .param p1, "another"    # Landroid/util/Rational;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 467
    const-string v7, "another must not be null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v4

    .line 471
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 472
    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v6

    .line 474
    goto :goto_0

    .line 475
    :cond_3
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v4, v5

    .line 476
    goto :goto_0

    .line 477
    :cond_5
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move v4, v6

    .line 478
    goto :goto_0

    .line 484
    :cond_7
    iget v7, p0, Landroid/util/Rational;->mNumerator:I

    int-to-long v8, v7

    iget v7, p1, Landroid/util/Rational;->mDenominator:I

    int-to-long v10, v7

    mul-long v2, v8, v10

    .line 485
    .local v2, "thisNumerator":J
    iget v7, p1, Landroid/util/Rational;->mNumerator:I

    int-to-long v8, v7

    iget v7, p0, Landroid/util/Rational;->mDenominator:I

    int-to-long v10, v7

    mul-long v0, v8, v10

    .line 488
    .local v0, "otherNumerator":J
    cmp-long v7, v2, v0

    if-gez v7, :cond_8

    move v4, v6

    .line 489
    goto :goto_0

    .line 490
    :cond_8
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    move v4, v5

    .line 491
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Landroid/util/Rational;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 6

    .prologue
    .line 338
    iget v4, p0, Landroid/util/Rational;->mNumerator:I

    int-to-double v2, v4

    .line 339
    .local v2, "num":D
    iget v4, p0, Landroid/util/Rational;->mDenominator:I

    int-to-double v0, v4

    .line 341
    .local v0, "den":D
    div-double v4, v2, v0

    return-wide v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 240
    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 3

    .prologue
    .line 355
    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    int-to-float v1, v2

    .line 356
    .local v1, "num":F
    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    int-to-float v0, v2

    .line 358
    .local v0, "den":F
    div-float v2, v1, v0

    return v2
.end method

.method public getDenominator()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 290
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    ushr-int/lit8 v2, v2, 0x10

    or-int v0, v1, v2

    .line 292
    .local v0, "numeratorFlipped":I
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    xor-int/2addr v1, v0

    return v1
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const v0, 0x7fffffff

    .line 391
    :goto_0
    return v0

    .line 386
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public isFinite()Z
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/util/Rational;->isFinite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-wide v0, 0x7fffffffffffffffL

    .line 425
    :goto_0
    return-wide v0

    .line 420
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 425
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public toFloat()F
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "NaN"

    .line 269
    :goto_0
    return-object v0

    .line 264
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const-string v0, "Infinity"

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    const-string v0, "-Infinity"

    goto :goto_0

    .line 269
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
