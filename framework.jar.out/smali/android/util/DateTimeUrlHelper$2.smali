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
    .line 675
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
    const/4 v7, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 677
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "matchingRegion":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 679
    .local v0, "date":Ljava/util/Date;
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 681
    :try_start_0
    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 682
    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 683
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 682
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 686
    const/4 v5, 0x0

    .line 687
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 688
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "yyyy/MM/dd HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 692
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 693
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 694
    return v11

    .line 684
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    return v10

    .line 690
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "yyyy-MM-dd HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 696
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 697
    .local v3, "e":Ljava/text/ParseException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 850
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_2
    :goto_1
    return v10

    .line 699
    :cond_3
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 701
    :try_start_1
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 702
    return v10

    .line 704
    :cond_4
    const/4 v5, 0x0

    .line 705
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v7, :cond_6

    .line 706
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "yyyy/MM/dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 710
    :cond_5
    :goto_2
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 711
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 712
    return v11

    .line 707
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6
    const-string/jumbo v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v7, :cond_5

    .line 708
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .line 714
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v3

    .line 715
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 717
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_7
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 719
    :try_start_2
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap7(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 720
    .local v1, "dates":[Ljava/util/Date;
    if-nez v1, :cond_8

    .line 721
    return v10

    .line 723
    :cond_8
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    if-eqz v6, :cond_2

    .line 724
    return v11

    .line 726
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_2
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 729
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 731
    :try_start_3
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap6(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 732
    .restart local v1    # "dates":[Ljava/util/Date;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-eqz v6, :cond_2

    .line 733
    return v11

    .line 735
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_3
    move-exception v2

    .line 736
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 738
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 740
    :try_start_4
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 742
    return v10

    .line 744
    :cond_b
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 746
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    if-eqz v6, :cond_2

    .line 747
    return v11

    .line 749
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_4
    move-exception v3

    .line 750
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 752
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_c
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 754
    :try_start_5
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 755
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 756
    return v10

    .line 758
    :cond_d
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 759
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 760
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v6

    if-eqz v6, :cond_2

    .line 761
    return v11

    .line 763
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_5
    move-exception v3

    .line 764
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 766
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_e
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 768
    :try_start_6
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 769
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 771
    return v10

    .line 773
    :cond_f
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 774
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 775
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v6

    if-eqz v6, :cond_2

    .line 776
    return v11

    .line 778
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v3

    .line 779
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 781
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_10
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 782
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 783
    return v10

    .line 785
    :cond_11
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap12(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 786
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 787
    return v11

    .line 789
    :cond_12
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 791
    :try_start_7
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap5(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 792
    .restart local v1    # "dates":[Ljava/util/Date;
    if-nez v1, :cond_13

    .line 793
    return v10

    .line 795
    :cond_13
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v6

    if-eqz v6, :cond_2

    .line 796
    return v11

    .line 798
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_7
    move-exception v2

    .line 799
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 801
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_14
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 803
    :try_start_8
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap11(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 804
    if-nez v0, :cond_15

    .line 805
    return v10

    .line 807
    :cond_15
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result v6

    if-eqz v6, :cond_2

    .line 808
    return v11

    .line 810
    :catch_8
    move-exception v2

    .line 811
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 813
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_16
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 815
    :try_start_9
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap9(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 816
    if-nez v0, :cond_17

    .line 817
    return v10

    .line 819
    :cond_17
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result v6

    if-eqz v6, :cond_2

    .line 820
    return v11

    .line 822
    :catch_9
    move-exception v2

    .line 823
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 825
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_18
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 827
    :try_start_a
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap10(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 828
    if-nez v0, :cond_19

    .line 829
    return v10

    .line 831
    :cond_19
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result v6

    if-eqz v6, :cond_2

    .line 832
    return v11

    .line 834
    :catch_a
    move-exception v2

    .line 835
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 837
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1a
    sget-object v6, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Landroid/util/DateTimeUrlHelper;->-wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 839
    :try_start_b
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->-wrap8(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 840
    if-nez v0, :cond_1b

    .line 841
    return v10

    .line 843
    :cond_1b
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->-wrap0(Ljava/util/Date;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result v6

    if-eqz v6, :cond_2

    .line 844
    return v11

    .line 846
    :catch_b
    move-exception v2

    .line 847
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
