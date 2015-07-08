.class final Landroid/util/DateTimeUrlHelper$2;
.super Ljava/lang/Object;
.source "DateTimeUrlHelper.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/DateTimeUrlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 569
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "matchingRegion":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 571
    .local v0, "date":Ljava/util/Date;
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 573
    const/4 v7, 0x0

    :try_start_0
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 732
    :cond_1
    :goto_0
    return v5

    .line 578
    :cond_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd HH:mm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 579
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 580
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_1
    move v5, v6

    .line 732
    goto :goto_0

    .line 583
    :catch_0
    move-exception v2

    .line 584
    .local v2, "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 586
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_4
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 588
    :try_start_1
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v6

    .line 589
    goto :goto_0

    .line 591
    :cond_5
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 592
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 593
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 596
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 597
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 599
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_6
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 601
    :try_start_2
    # invokes: Landroid/util/DateTimeUrlHelper;->createTimeToTimeDates(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$200(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 602
    .local v1, "dates":[Ljava/util/Date;
    if-nez v1, :cond_7

    move v5, v6

    .line 603
    goto :goto_0

    .line 605
    :cond_7
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 608
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_2
    move-exception v2

    .line 609
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 611
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 613
    :try_start_3
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByTianWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$300(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 614
    .restart local v1    # "dates":[Ljava/util/Date;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 617
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_3
    move-exception v2

    .line 618
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 620
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 622
    :try_start_4
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    move v5, v6

    .line 624
    goto/16 :goto_0

    .line 626
    :cond_a
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 627
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 628
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 631
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_4
    move-exception v2

    .line 632
    .local v2, "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 634
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_b
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 636
    :try_start_5
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    move v5, v6

    .line 638
    goto/16 :goto_0

    .line 640
    :cond_c
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 641
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 642
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 645
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_5
    move-exception v2

    .line 646
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 648
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_d
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 650
    :try_start_6
    # invokes: Landroid/util/DateTimeUrlHelper;->changeCNToNum(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    move v5, v6

    .line 653
    goto/16 :goto_0

    .line 655
    :cond_e
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 657
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 660
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v2

    .line 661
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 663
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_f
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 664
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    move v5, v6

    .line 665
    goto/16 :goto_0

    .line 667
    :cond_10
    # invokes: Landroid/util/DateTimeUrlHelper;->createTimePointDates(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$700(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 668
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 671
    :cond_11
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 673
    :try_start_7
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByDayWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$800(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 674
    .restart local v1    # "dates":[Ljava/util/Date;
    if-nez v1, :cond_12

    move v5, v6

    .line 675
    goto/16 :goto_0

    .line 677
    :cond_12
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 680
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_7
    move-exception v2

    .line 681
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 683
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_13
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 685
    :try_start_8
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByNextDayOfWeek(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$900(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 686
    if-nez v0, :cond_14

    move v5, v6

    .line 687
    goto/16 :goto_0

    .line 689
    :cond_14
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 692
    :catch_8
    move-exception v2

    .line 693
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 695
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_15
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 697
    :try_start_9
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D_Y(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1000(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 698
    if-nez v0, :cond_16

    move v5, v6

    .line 699
    goto/16 :goto_0

    .line 701
    :cond_16
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 704
    :catch_9
    move-exception v2

    .line 705
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 707
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_17
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 709
    :try_start_a
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1100(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 710
    if-nez v0, :cond_18

    move v5, v6

    .line 711
    goto/16 :goto_0

    .line 713
    :cond_18
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 716
    :catch_a
    move-exception v2

    .line 717
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 719
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_19
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 721
    :try_start_b
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByCN_Wu_Dian(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1200(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 722
    if-nez v0, :cond_1a

    move v5, v6

    .line 723
    goto/16 :goto_0

    .line 725
    :cond_1a
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 728
    :catch_b
    move-exception v2

    .line 729
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
