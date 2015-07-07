.class Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field private final mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field mRootName:Ljava/lang/String;

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 797
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 808
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    .line 809
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    .line 810
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    .line 811
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    .line 812
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 815
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    .line 818
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 819
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 820
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 821
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    const/4 v1, 0x0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 808
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    .line 809
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    .line 810
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    .line 811
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    .line 812
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 815
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    .line 843
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 844
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 845
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 846
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    .line 847
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    .line 848
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    .line 849
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    .line 850
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mChangingConfigurations:I

    .line 851
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    .line 852
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 853
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/drawable/VectorDrawable$VGroup;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    .line 780
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    return-object v0
.end method

.method static synthetic access$300(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    .line 780
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$302(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 780
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$400(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    .line 780
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$402(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 780
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 11
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "currentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 918
    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 920
    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$700(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 923
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 924
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 925
    .local v9, "child":Ljava/lang/Object;
    instance-of v0, v9, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_1

    move-object v1, v9

    .line 926
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 927
    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 923
    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 929
    :cond_1
    instance-of v0, v9, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v0, :cond_0

    move-object v4, v9

    .line 930
    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VPath;

    .local v4, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 931
    invoke-direct/range {v2 .. v8}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawPath(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 934
    .end local v4    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    .end local v9    # "child":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private drawPath(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 14
    .param p1, "vGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "vPath"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 943
    move/from16 v0, p4

    int-to-float v11, v0

    iget v12, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    div-float v7, v11, v12

    .line 944
    .local v7, "scaleX":F
    move/from16 v0, p5

    int-to-float v11, v0

    iget v12, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    div-float v8, v11, v12

    .line 945
    .local v8, "scaleY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 947
    .local v5, "minScale":F
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 948
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 950
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/VectorDrawable$VPath;->toPath(Landroid/graphics/Path;)V

    .line 951
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 953
    .local v6, "path":Landroid/graphics/Path;
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->isClipPath()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 956
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v12, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v6, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 957
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1019
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v3, p2

    .line 959
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 960
    .local v3, "fullPath":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_4

    .line 961
    :cond_2
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    iget v12, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    add-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    rem-float v9, v11, v12

    .line 962
    .local v9, "start":F
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    iget v12, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    add-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    rem-float v1, v11, v12

    .line 964
    .local v1, "end":F
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-nez v11, :cond_3

    .line 965
    new-instance v11, Landroid/graphics/PathMeasure;

    invoke-direct {v11}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 967
    :cond_3
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v12, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 969
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 970
    .local v4, "len":F
    mul-float/2addr v9, v4

    .line 971
    mul-float/2addr v1, v4

    .line 972
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 973
    cmpl-float v11, v9, v1

    if-lez v11, :cond_a

    .line 974
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v12, 0x1

    invoke-virtual {v11, v9, v4, v6, v12}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 975
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v1, v6, v13}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 979
    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 981
    .end local v1    # "end":F
    .end local v4    # "len":F
    .end local v9    # "start":F
    :cond_4
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v12, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v6, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 983
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    if-eqz v11, :cond_6

    .line 984
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    if-nez v11, :cond_5

    .line 985
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 986
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 987
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 990
    :cond_5
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 991
    .local v2, "fillPaint":Landroid/graphics/Paint;
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    iget v12, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    # invokes: Landroid/graphics/drawable/VectorDrawable;->applyAlpha(IF)I
    invoke-static {v11, v12}, Landroid/graphics/drawable/VectorDrawable;->access$800(IF)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 992
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 993
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 996
    .end local v2    # "fillPaint":Landroid/graphics/Paint;
    :cond_6
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    if-eqz v11, :cond_0

    .line 997
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v11, :cond_7

    .line 998
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 999
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1000
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1003
    :cond_7
    iget-object v10, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1004
    .local v10, "strokePaint":Landroid/graphics/Paint;
    iget-object v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    if-eqz v11, :cond_8

    .line 1005
    iget-object v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1008
    :cond_8
    iget-object v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    if-eqz v11, :cond_9

    .line 1009
    iget-object v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1012
    :cond_9
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1013
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    iget v12, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    # invokes: Landroid/graphics/drawable/VectorDrawable;->applyAlpha(IF)I
    invoke-static {v11, v12}, Landroid/graphics/drawable/VectorDrawable;->access$800(IF)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1014
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1015
    iget v11, v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    mul-float/2addr v11, v5

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1016
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 977
    .end local v10    # "strokePaint":Landroid/graphics/Paint;
    .restart local v1    # "end":F
    .restart local v4    # "len":F
    .restart local v9    # "start":F
    :cond_a
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v12, 0x1

    invoke-virtual {v11, v9, v1, v6, v12}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_1
.end method

.method private recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 894
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 895
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 896
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 897
    .local v0, "child":Ljava/lang/Object;
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 898
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 899
    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 900
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 902
    :cond_0
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V

    .line 895
    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 903
    :cond_2
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 904
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VPath;

    .line 905
    .local v2, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPath;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 906
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->applyTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 910
    .end local v0    # "child":Ljava/lang/Object;
    .end local v2    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_3
    return-void
.end method

.method private recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z
    .locals 7
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    const/4 v5, 0x1

    .line 866
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 868
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 869
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 870
    .local v0, "child":Ljava/lang/Object;
    instance-of v6, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v6, :cond_1

    move-object v1, v0

    .line 871
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 872
    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 883
    .end local v0    # "child":Ljava/lang/Object;
    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_0
    :goto_1
    return v5

    .line 876
    .restart local v0    # "child":Ljava/lang/Object;
    :cond_1
    instance-of v6, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v6, :cond_2

    move-object v2, v0

    .line 877
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VPath;

    .line 878
    .local v2, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPath;->canApplyTheme()Z

    move-result v6

    if-nez v6, :cond_0

    .line 868
    .end local v2    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 883
    .end local v0    # "child":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 888
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V

    .line 889
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 938
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    sget-object v2, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 939
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 834
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->setRootAlpha(I)V

    .line 835
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 824
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    .line 825
    return-void
.end method
