.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "InstanceLearner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/InstanceLearner$1;
    }
.end annotation


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    .line 28
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method classify(II[F)Ljava/util/ArrayList;
    .locals 20
    .param p1, "sequenceType"    # I
    .param p2, "orientationType"    # I
    .param p3, "vector"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v10, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v6

    .line 47
    .local v6, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 48
    .local v2, "count":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v7, "label2score":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 50
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/gesture/Instance;

    .line 51
    .local v11, "sample":Landroid/gesture/Instance;
    iget-object v15, v11, Landroid/gesture/Instance;->vector:[F

    array-length v15, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v15, v0, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_3

    .line 56
    iget-object v15, v11, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v15

    float-to-double v4, v15

    .line 61
    .local v4, "distance":D
    :goto_2
    const-wide/16 v18, 0x0

    cmpl-double v15, v4, v18

    if-nez v15, :cond_4

    .line 62
    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 66
    .local v16, "weight":D
    :goto_3
    iget-object v15, v11, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    .line 67
    .local v14, "score":Ljava/lang/Double;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    cmpl-double v15, v16, v18

    if-lez v15, :cond_0

    .line 68
    :cond_2
    iget-object v15, v11, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v15, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v4    # "distance":D
    .end local v14    # "score":Ljava/lang/Double;
    .end local v16    # "weight":D
    :cond_3
    iget-object v15, v11, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v15

    float-to-double v4, v15

    .restart local v4    # "distance":D
    goto :goto_2

    .line 64
    :cond_4
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v16, v18, v4

    .restart local v16    # "weight":D
    goto :goto_3

    .line 73
    .end local v4    # "distance":D
    .end local v11    # "sample":Landroid/gesture/Instance;
    .end local v16    # "weight":D
    :cond_5
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "name$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 74
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 76
    .local v12, "score":D
    new-instance v15, Landroid/gesture/Prediction;

    invoke-direct {v15, v8, v12, v13}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 84
    .end local v8    # "name":Ljava/lang/String;
    .end local v12    # "score":D
    :cond_6
    sget-object v15, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    invoke-static {v10, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v10
.end method
