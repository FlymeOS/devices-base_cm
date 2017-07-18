.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SpellChecker;

    .prologue
    .line 502
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    .line 502
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$SpellParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SpellChecker;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p3, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v2, p3

    .line 742
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 743
    aget-object v3, p3, v1

    .line 744
    .local v3, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 745
    .local v4, "start":I
    if-le v4, p2, :cond_1

    .line 742
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    :cond_1
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 747
    .local v0, "end":I
    if-lt v0, p2, :cond_0

    .line 748
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 740
    .end local v0    # "end":I
    .end local v3    # "span":Ljava/lang/Object;, "TT;"
    .end local v4    # "start":I
    :cond_2
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 532
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 528
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public parse()V
    .locals 25

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Editable;

    .line 547
    .local v5, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get2(Landroid/widget/SpellChecker;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    add-int/lit8 v22, v22, -0x32

    const/16 v23, 0x0

    .line 550
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 556
    .local v16, "start":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 558
    .local v6, "end":I
    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x15e

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 559
    .local v20, "wordIteratorWindowEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v21

    .line 564
    .local v21, "wordStart":I
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    .line 566
    .local v19, "wordEnd":I
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v21

    .line 572
    :cond_0
    :goto_1
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 576
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 577
    return-void

    .line 553
    .end local v6    # "end":I
    .end local v16    # "start":I
    .end local v19    # "wordEnd":I
    .end local v20    # "wordIteratorWindowEnd":I
    .end local v21    # "wordStart":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .restart local v16    # "start":I
    goto/16 :goto_0

    .line 570
    .restart local v6    # "end":I
    .restart local v20    # "wordIteratorWindowEnd":I
    .restart local v21    # "wordStart":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v19

    .restart local v19    # "wordEnd":I
    goto :goto_1

    .line 582
    :cond_3
    add-int/lit8 v22, v16, -0x1

    add-int/lit8 v23, v6, 0x1

    .line 583
    const-class v24, Landroid/text/style/SpellCheckSpan;

    .line 582
    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/SpellCheckSpan;

    .line 584
    .local v14, "spellCheckSpans":[Landroid/text/style/SpellCheckSpan;
    add-int/lit8 v22, v16, -0x1

    add-int/lit8 v23, v6, 0x1

    .line 585
    const-class v24, Landroid/text/style/SuggestionSpan;

    .line 584
    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/style/SuggestionSpan;

    .line 587
    .local v17, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/16 v18, 0x0

    .line 588
    .local v18, "wordCount":I
    const/4 v9, 0x0

    .line 590
    .local v9, "scheduleOtherSpellCheck":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get2(Landroid/widget/SpellChecker;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 591
    move/from16 v0, v20

    if-ge v0, v6, :cond_4

    .line 596
    const/4 v9, 0x1

    .line 598
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v12

    .line 599
    .local v12, "spellCheckEnd":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_6

    const/4 v3, 0x1

    .line 600
    .local v3, "correct":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v12

    .line 602
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_7

    const/4 v3, 0x1

    .line 604
    :cond_5
    :goto_3
    if-nez v3, :cond_8

    .line 608
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 609
    return-void

    .line 599
    .end local v3    # "correct":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "correct":Z
    goto :goto_2

    .line 602
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 613
    :cond_8
    move/from16 v15, v21

    .line 614
    .local v15, "spellCheckStart":I
    const/4 v4, 0x1

    .line 616
    .local v4, "createSpellCheckSpan":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get3(Landroid/widget/SpellChecker;)I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_b

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get4(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v22

    aget-object v13, v22, v7

    .line 618
    .local v13, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get1(Landroid/widget/SpellChecker;)[I

    move-result-object v22

    aget v22, v22, v7

    if-ltz v22, :cond_9

    invoke-virtual {v13}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 616
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 621
    :cond_a
    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 622
    .local v11, "spanStart":I
    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 623
    .local v10, "spanEnd":I
    if-lt v10, v15, :cond_9

    if-lt v12, v11, :cond_9

    .line 627
    if-gt v11, v15, :cond_e

    if-gt v12, v10, :cond_e

    .line 630
    const/4 v4, 0x0

    .line 650
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    .end local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_b
    move/from16 v0, v16

    if-ge v12, v0, :cond_f

    .line 662
    :cond_c
    :goto_6
    move/from16 v21, v12

    .line 730
    .end local v3    # "correct":Z
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v12    # "spellCheckEnd":I
    .end local v15    # "spellCheckStart":I
    :cond_d
    :goto_7
    if-eqz v9, :cond_1d

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1d

    move/from16 v0, v21

    if-gt v0, v6, :cond_1d

    .line 732
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1, v6}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 737
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-wrap1(Landroid/widget/SpellChecker;)V

    .line 543
    return-void

    .line 637
    .restart local v3    # "correct":Z
    .restart local v4    # "createSpellCheckSpan":Z
    .restart local v7    # "i":I
    .restart local v10    # "spanEnd":I
    .restart local v11    # "spanStart":I
    .restart local v12    # "spellCheckEnd":I
    .restart local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .restart local v15    # "spellCheckStart":I
    :cond_e
    invoke-interface {v5, v13}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 638
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 639
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_5

    .line 653
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    .end local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_f
    if-gt v12, v15, :cond_10

    .line 654
    invoke-static {}, Landroid/widget/SpellChecker;->-get0()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Trying to spellcheck invalid region, from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 655
    const-string/jumbo v24, " to "

    .line 654
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 658
    :cond_10
    if-eqz v4, :cond_c

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v5, v15, v12}, Landroid/widget/SpellChecker;->-wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    goto :goto_6

    .line 664
    .end local v3    # "correct":Z
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v12    # "spellCheckEnd":I
    .end local v15    # "spellCheckStart":I
    :cond_11
    move/from16 v0, v21

    if-gt v0, v6, :cond_d

    .line 665
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_18

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_18

    .line 666
    const/16 v22, 0x32

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    .line 667
    const/4 v9, 0x1

    .line 668
    goto/16 :goto_7

    .line 673
    :cond_12
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_13

    .line 674
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 675
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 678
    :cond_13
    move/from16 v0, v21

    if-ge v0, v6, :cond_14

    move/from16 v0, v19

    if-le v0, v6, :cond_14

    .line 679
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v6, v1}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 684
    :cond_14
    const/4 v4, 0x1

    .line 685
    .restart local v4    # "createSpellCheckSpan":Z
    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_15

    .line 686
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_9
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_15

    .line 687
    aget-object v22, v14, v7

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 688
    .restart local v10    # "spanEnd":I
    move/from16 v0, v16

    if-ne v10, v0, :cond_1b

    .line 689
    const/4 v4, 0x0

    .line 695
    .end local v7    # "i":I
    .end local v10    # "spanEnd":I
    :cond_15
    move/from16 v0, v21

    if-ne v0, v6, :cond_16

    .line 696
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_16

    .line 697
    aget-object v22, v14, v7

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 698
    .restart local v11    # "spanStart":I
    if-ne v11, v6, :cond_1c

    .line 699
    const/4 v4, 0x0

    .line 705
    .end local v7    # "i":I
    .end local v11    # "spanStart":I
    :cond_16
    if-eqz v4, :cond_17

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v5, v1, v2}, Landroid/widget/SpellChecker;->-wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 708
    :cond_17
    add-int/lit8 v18, v18, 0x1

    .line 712
    .end local v4    # "createSpellCheckSpan":Z
    :cond_18
    move/from16 v8, v19

    .line 713
    .local v8, "originalWordEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    .line 714
    move/from16 v0, v20

    if-ge v0, v6, :cond_1a

    .line 715
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1a

    .line 717
    :cond_19
    add-int/lit16 v0, v8, 0x15e

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v5, v8, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    .line 722
    :cond_1a
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v21

    .line 724
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    goto/16 :goto_7

    .line 686
    .end local v8    # "originalWordEnd":I
    .restart local v4    # "createSpellCheckSpan":Z
    .restart local v7    # "i":I
    .restart local v10    # "spanEnd":I
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 696
    .end local v10    # "spanEnd":I
    .restart local v11    # "spanStart":I
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    .line 734
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v11    # "spanStart":I
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    goto/16 :goto_8
.end method

.method public parse(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 506
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 508
    .local v0, "max":I
    if-le p2, v0, :cond_1

    .line 509
    invoke-static {}, Landroid/widget/SpellChecker;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parse invalid region, from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    move v1, v0

    .line 514
    .local v1, "parseEnd":I
    :goto_0
    if-le v1, p1, :cond_0

    .line 515
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 516
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    .line 505
    :cond_0
    return-void

    .line 512
    .end local v1    # "parseEnd":I
    :cond_1
    move v1, p2

    .restart local v1    # "parseEnd":I
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 524
    return-void
.end method
