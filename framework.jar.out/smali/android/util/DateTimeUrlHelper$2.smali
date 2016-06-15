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
    .line 660
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
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 662
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "matchingRegion":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 664
    .local v0, "date":Ljava/util/Date;
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 666
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

    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v4, 0x0

    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "yyyy/MM/dd HH:mm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_1
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_1

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_2
    move v5, v6

    goto :goto_0

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "yyyy-MM-dd HH:mm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_1

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 679
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_5
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 681
    :try_start_1
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_8

    new-instance v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    :goto_3
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_8
    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_7

    new-instance v4, Ljava/text/SimpleDateFormat;

    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "yyyy-MM-dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_3

    .line 689
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 690
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 692
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_9
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :try_start_2
    # invokes: Landroid/util/DateTimeUrlHelper;->createTimeToTimeDates(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$200(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .local v1, "dates":[Ljava/util/Date;
    if-nez v1, :cond_a

    move v5, v6

    goto/16 :goto_0

    :cond_a
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

    goto/16 :goto_0

    .line 701
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_2
    move-exception v2

    .line 702
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 704
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 706
    :try_start_3
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByTianWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$300(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 707
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

    .line 710
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_3
    move-exception v2

    .line 711
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 713
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 715
    :try_start_4
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    move v5, v6

    goto/16 :goto_0

    :cond_d
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 724
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_4
    move-exception v2

    .line 725
    .local v2, "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 727
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_e
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 729
    :try_start_5
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    move v5, v6

    goto/16 :goto_0

    :cond_f
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 738
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_5
    move-exception v2

    .line 739
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 741
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_10
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 743
    :try_start_6
    # invokes: Landroid/util/DateTimeUrlHelper;->changeCNToNum(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 744
    # invokes: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 745
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    move v5, v6

    goto/16 :goto_0

    :cond_11
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 753
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v2

    .line 754
    .restart local v2    # "e":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 756
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_12
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 757
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    move v5, v6

    goto/16 :goto_0

    :cond_13
    # invokes: Landroid/util/DateTimeUrlHelper;->createTimePointDates(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$700(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    :cond_14
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    :try_start_7
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByDayWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$800(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .restart local v1    # "dates":[Ljava/util/Date;
    if-nez v1, :cond_15

    move v5, v6

    goto/16 :goto_0

    :cond_15
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

    .line 773
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_7
    move-exception v2

    .line 774
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 776
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_16
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    :try_start_8
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByNextDayOfWeek(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$900(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_17

    move v5, v6

    goto/16 :goto_0

    :cond_17
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 785
    :catch_8
    move-exception v2

    .line 786
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 788
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_18
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    :try_start_9
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D_Y(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1000(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_19

    move v5, v6

    goto/16 :goto_0

    :cond_19
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 797
    :catch_9
    move-exception v2

    .line 798
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 800
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1a
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    :try_start_a
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1100(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1b

    move v5, v6

    goto/16 :goto_0

    :cond_1b
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 809
    :catch_a
    move-exception v2

    .line 810
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 812
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1c
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    # invokes: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_b
    # invokes: Landroid/util/DateTimeUrlHelper;->createDateByCN_Wu_Dian(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1200(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1d

    move v5, v6

    goto/16 :goto_0

    :cond_1d
    # invokes: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 821
    :catch_b
    move-exception v2

    .line 822
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
