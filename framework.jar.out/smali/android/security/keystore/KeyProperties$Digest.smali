.class public abstract Landroid/security/keystore/KeyProperties$Digest;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Digest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "digests":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    sget-object v4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v4

    .line 622
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 623
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 624
    .local v2, "offset":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "digest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 625
    .local v0, "digest":I
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "digest":I
    :cond_1
    return-object v3
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .locals 6
    .param p0, "digests"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 633
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 634
    :cond_0
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    return-object v3

    .line 636
    :cond_1
    array-length v4, p0

    new-array v2, v4, [I

    .line 637
    .local v2, "result":[I
    const/4 v1, 0x0

    .line 638
    .local v1, "offset":I
    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 639
    .local v0, "digest":Ljava/lang/String;
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v1

    .line 640
    add-int/lit8 v1, v1, 0x1

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "digest":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .locals 3
    .param p0, "digest"    # I

    .prologue
    .line 575
    packed-switch p0, :pswitch_data_0

    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :pswitch_0
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 579
    :pswitch_1
    const-string/jumbo v0, "MD5"

    return-object v0

    .line 581
    :pswitch_2
    const-string/jumbo v0, "SHA-1"

    return-object v0

    .line 583
    :pswitch_3
    const-string/jumbo v0, "SHA-224"

    return-object v0

    .line 585
    :pswitch_4
    const-string/jumbo v0, "SHA-256"

    return-object v0

    .line 587
    :pswitch_5
    const-string/jumbo v0, "SHA-384"

    return-object v0

    .line 589
    :pswitch_6
    const-string/jumbo v0, "SHA-512"

    return-object v0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;
    .locals 3
    .param p0, "digest"    # I

    .prologue
    .line 597
    packed-switch p0, :pswitch_data_0

    .line 613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :pswitch_0
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 601
    :pswitch_1
    const-string/jumbo v0, "MD5"

    return-object v0

    .line 603
    :pswitch_2
    const-string/jumbo v0, "SHA1"

    return-object v0

    .line 605
    :pswitch_3
    const-string/jumbo v0, "SHA224"

    return-object v0

    .line 607
    :pswitch_4
    const-string/jumbo v0, "SHA256"

    return-object v0

    .line 609
    :pswitch_5
    const-string/jumbo v0, "SHA384"

    return-object v0

    .line 611
    :pswitch_6
    const-string/jumbo v0, "SHA512"

    return-object v0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .locals 3
    .param p0, "digest"    # Ljava/lang/String;

    .prologue
    .line 553
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SHA-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v0, 0x2

    return v0

    .line 553
    :cond_0
    const-string/jumbo v1, "SHA-224"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    const/4 v0, 0x3

    return v0

    .line 553
    :cond_1
    const-string/jumbo v1, "SHA-256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    const/4 v0, 0x4

    return v0

    .line 553
    :cond_2
    const-string/jumbo v1, "SHA-384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    const/4 v0, 0x5

    return v0

    .line 553
    :cond_3
    const-string/jumbo v1, "SHA-512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 563
    const/4 v0, 0x6

    return v0

    .line 553
    :cond_4
    const-string/jumbo v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 565
    const/4 v0, 0x0

    return v0

    .line 553
    :cond_5
    const-string/jumbo v1, "MD5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 567
    const/4 v0, 0x1

    return v0

    .line 569
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
