.class Landroid/media/CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final mDisplayChars:Ljava/lang/StringBuilder;

.field private final mMidRowStyles:[Landroid/media/CCParser$StyleCode;

.field private final mPACStyles:[Landroid/media/CCParser$StyleCode;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 495
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    .line 496
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    .line 493
    return-void
.end method


# virtual methods
.method applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/CCParser$StyleCode;II)V
    .locals 3
    .param p1, "styledText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "s"    # Landroid/media/CCParser$StyleCode;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/16 v2, 0x21

    .line 524
    invoke-virtual {p2}, Landroid/media/CCParser$StyleCode;->isItalics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 525
    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 529
    :cond_0
    invoke-virtual {p2}, Landroid/media/CCParser$StyleCode;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 530
    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 523
    :cond_1
    return-void
.end method

.method charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 514
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .locals 11
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    const/16 v10, 0x20

    .line 537
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 538
    .local v7, "styledText":Landroid/text/SpannableStringBuilder;
    const/4 v5, -0x1

    .local v5, "start":I
    const/4 v4, 0x0

    .line 539
    .local v4, "next":I
    const/4 v6, -0x1

    .line 540
    .local v6, "styleStart":I
    const/4 v0, 0x0

    .line 541
    :goto_0
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v4, v8, :cond_a

    .line 542
    const/4 v3, 0x0

    .line 543
    .local v3, "newStyle":Landroid/media/CCParser$StyleCode;
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v8, v8, v4

    if-eqz v8, :cond_4

    .line 545
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v3, v8, v4

    .line 553
    .end local v3    # "newStyle":Landroid/media/CCParser$StyleCode;
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    .line 554
    move-object v0, v3

    .line 555
    .local v0, "curStyle":Landroid/media/CCParser$StyleCode;
    if-ltz v6, :cond_1

    if-ltz v5, :cond_1

    .line 556
    invoke-virtual {p0, v7, v3, v6, v4}, Landroid/media/CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/CCParser$StyleCode;II)V

    .line 558
    :cond_1
    move v6, v4

    .line 561
    .end local v0    # "curStyle":Landroid/media/CCParser$StyleCode;
    :cond_2
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_6

    .line 562
    if-gez v5, :cond_3

    .line 563
    move v5, v4

    .line 577
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    .restart local v3    # "newStyle":Landroid/media/CCParser$StyleCode;
    :cond_4
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v8, v8, v4

    if-eqz v8, :cond_0

    .line 547
    if-ltz v6, :cond_5

    if-gez v5, :cond_0

    .line 551
    :cond_5
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v3, v8, v4

    .local v3, "newStyle":Landroid/media/CCParser$StyleCode;
    goto :goto_1

    .line 565
    .end local v3    # "newStyle":Landroid/media/CCParser$StyleCode;
    :cond_6
    if-ltz v5, :cond_3

    .line 566
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_8

    move v2, v5

    .line 567
    .local v2, "expandedStart":I
    :goto_3
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_9

    move v1, v4

    .line 569
    .local v1, "expandedEnd":I
    :goto_4
    new-instance v8, Landroid/media/MutableBackgroundColorSpan;

    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/media/MutableBackgroundColorSpan;-><init>(I)V

    .line 571
    const/16 v9, 0x21

    .line 568
    invoke-virtual {v7, v8, v2, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 572
    if-ltz v6, :cond_7

    .line 573
    invoke-virtual {p0, v7, v0, v6, v1}, Landroid/media/CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/CCParser$StyleCode;II)V

    .line 575
    :cond_7
    const/4 v5, -0x1

    goto :goto_2

    .line 566
    .end local v1    # "expandedEnd":I
    .end local v2    # "expandedStart":I
    :cond_8
    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "expandedStart":I
    goto :goto_3

    .line 567
    :cond_9
    add-int/lit8 v1, v4, 0x1

    .restart local v1    # "expandedEnd":I
    goto :goto_4

    .line 580
    .end local v1    # "expandedEnd":I
    .end local v2    # "expandedStart":I
    :cond_a
    return-object v7
.end method

.method length()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method setCharAt(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 500
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 501
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 499
    return-void
.end method

.method setMidRowAt(ILandroid/media/CCParser$StyleCode;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "m"    # Landroid/media/CCParser$StyleCode;

    .prologue
    .line 505
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 506
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 504
    return-void
.end method

.method setPACAt(ILandroid/media/CCParser$PAC;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pac"    # Landroid/media/CCParser$PAC;

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 509
    return-void
.end method
