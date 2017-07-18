.class Landroid/media/WebVttParser$3;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/media/WebVttParser$3;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$3;->-assertionsDisabled:Z

    .line 714
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .prologue
    .line 714
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 794
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v5}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    const-string/jumbo v4, "-->"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 796
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v5}, Landroid/media/WebVttParser;->-get5(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 797
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->-get7(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_2
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 800
    .local v0, "colonAt":I
    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_4

    .line 801
    :cond_3
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v5, "meta data header has invalid format"

    invoke-static {v4, v5, p1}, Landroid/media/WebVttParser;->-wrap0(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_4
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "Region"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    invoke-virtual {p0, v3}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v2

    .line 808
    .local v2, "region":Landroid/media/TextTrackRegion;
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->-get2(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    goto :goto_0
.end method

.method parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .locals 30
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 716
    new-instance v23, Landroid/media/TextTrackRegion;

    invoke-direct/range {v23 .. v23}, Landroid/media/TextTrackRegion;-><init>()V

    .line 717
    .local v23, "region":Landroid/media/TextTrackRegion;
    const-string/jumbo v2, " +"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/4 v2, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v27, v2

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    aget-object v24, v28, v27

    .line 718
    .local v24, "setting":Ljava/lang/String;
    const/16 v2, 0x3d

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    .line 719
    .local v22, "equalAt":I
    if-lez v22, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_1

    .line 717
    :cond_0
    :goto_1
    add-int/lit8 v2, v27, 0x1

    move/from16 v27, v2

    goto :goto_0

    .line 723
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 725
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v2, "id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    move-object/from16 v0, v23

    iput-object v7, v0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto :goto_1

    .line 727
    :cond_2
    const-string/jumbo v2, "width"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 729
    :try_start_0
    invoke-static {v7}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 730
    :catch_0
    move-exception v21

    .line 731
    .local v21, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    .line 732
    const-string/jumbo v5, "has invalid value"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 731
    invoke-static/range {v2 .. v7}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 734
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string/jumbo v2, "lines"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 735
    const-string/jumbo v2, ".*[^0-9].*"

    invoke-virtual {v7, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "lines"

    const-string/jumbo v5, "contains an invalid character"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 739
    :cond_4
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    .line 740
    sget-boolean v2, Landroid/media/WebVttParser$3;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    :catch_1
    move-exception v21

    .line 742
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string/jumbo v5, "is not numeric"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 740
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 745
    :cond_6
    const-string/jumbo v2, "regionanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 746
    const-string/jumbo v2, "viewportanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 745
    if-eqz v2, :cond_a

    .line 747
    :cond_7
    const-string/jumbo v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 748
    .local v20, "commaAt":I
    if-gez v20, :cond_8

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string/jumbo v5, "contains no comma"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 753
    :cond_8
    const/4 v2, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 754
    .local v13, "anchorX":Ljava/lang/String;
    add-int/lit8 v2, v20, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 758
    .local v19, "anchorY":Ljava/lang/String;
    :try_start_2
    invoke-static {v13}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v25

    .line 765
    .local v25, "x":F
    :try_start_3
    invoke-static/range {v19 .. v19}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v26

    .line 772
    .local v26, "y":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_9

    .line 773
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 774
    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto/16 :goto_1

    .line 759
    .end local v25    # "x":F
    .end local v26    # "y":F
    :catch_2
    move-exception v21

    .line 760
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v9, "region setting"

    .line 761
    const-string/jumbo v11, "has invalid x component"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v10, v4

    .line 760
    invoke-static/range {v8 .. v13}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 766
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v25    # "x":F
    :catch_3
    move-exception v21

    .line 767
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v15, "region setting"

    .line 768
    const-string/jumbo v17, "has invalid y component"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v4

    .line 767
    invoke-static/range {v14 .. v19}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 776
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v26    # "y":F
    :cond_9
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 777
    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    goto/16 :goto_1

    .line 779
    .end local v13    # "anchorX":Ljava/lang/String;
    .end local v19    # "anchorY":Ljava/lang/String;
    .end local v20    # "commaAt":I
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_a
    const-string/jumbo v2, "scroll"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    const-string/jumbo v2, "up"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 782
    const/16 v2, 0x12d

    .line 781
    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto/16 :goto_1

    .line 784
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string/jumbo v5, "has invalid value"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 788
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v22    # "equalAt":I
    .end local v24    # "setting":Ljava/lang/String;
    :cond_c
    return-object v23
.end method
