.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$VerticalOffsetProperty;,
        Landroid/transition/ChangeBounds$HorizontalOffsetProperty;,
        Landroid/transition/ChangeBounds$OffsetProperty;
    }
.end annotation


# static fields
.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 85
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 81
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 82
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 81
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 82
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 91
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 119
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 121
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 127
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    const/4 v1, 0x1

    .line 145
    .local v1, "parentMatches":Z
    iget-boolean v4, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {p0, p1, v2}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    .line 147
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-nez v0, :cond_2

    .line 148
    if-ne p1, p2, :cond_1

    move v1, v2

    .line 153
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_1
    move v1, v3

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 141
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 136
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 54
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 159
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 160
    :cond_0
    const/4 v9, 0x0

    .line 357
    :cond_1
    :goto_0
    return-object v9

    .line 162
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v36, v0

    .line 163
    .local v36, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v20, v0

    .line 164
    .local v20, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "android:changeBounds:parent"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/ViewGroup;

    .line 165
    .local v35, "startParent":Landroid/view/ViewGroup;
    const-string v3, "android:changeBounds:parent"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 166
    .local v19, "endParent":Landroid/view/ViewGroup;
    if-eqz v35, :cond_3

    if-nez v19, :cond_4

    .line 167
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 169
    :cond_4
    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 170
    .local v7, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 171
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/graphics/Rect;

    .line 172
    .local v32, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 173
    .local v16, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    .line 174
    .local v34, "startLeft":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    .line 175
    .local v18, "endLeft":I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    .line 176
    .local v38, "startTop":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 177
    .local v22, "endTop":I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    .line 178
    .local v37, "startRight":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    .line 179
    .local v21, "endRight":I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    .line 180
    .local v31, "startBottom":I
    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 181
    .local v15, "endBottom":I
    sub-int v39, v37, v34

    .line 182
    .local v39, "startWidth":I
    sub-int v33, v31, v38

    .line 183
    .local v33, "startHeight":I
    sub-int v23, v21, v18

    .line 184
    .local v23, "endWidth":I
    sub-int v17, v15, v22

    .line 185
    .local v17, "endHeight":I
    const/16 v27, 0x0

    .line 186
    .local v27, "numChanges":I
    if-eqz v39, :cond_5

    if-nez v33, :cond_6

    :cond_5
    if-eqz v23, :cond_a

    if-eqz v17, :cond_a

    .line 187
    :cond_6
    move/from16 v0, v34

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move/from16 v0, v38

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    :cond_7
    add-int/lit8 v27, v27, 0x1

    .line 188
    :cond_8
    move/from16 v0, v37

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move/from16 v0, v31

    if-eq v0, v15, :cond_a

    :cond_9
    add-int/lit8 v27, v27, 0x1

    .line 190
    :cond_a
    if-lez v27, :cond_24

    .line 191
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-nez v3, :cond_14

    .line 193
    move/from16 v0, v39

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move/from16 v0, v33

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 194
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v34, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 195
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v38, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sub-int v51, v18, v34

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    sub-int v52, v22, v38

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v30

    .line 198
    .local v30, "positionPath":Landroid/graphics/Path;
    new-instance v3, Landroid/transition/ChangeBounds$HorizontalOffsetProperty;

    invoke-direct {v3}, Landroid/transition/ChangeBounds$HorizontalOffsetProperty;-><init>()V

    new-instance v4, Landroid/transition/ChangeBounds$VerticalOffsetProperty;

    invoke-direct {v4}, Landroid/transition/ChangeBounds$VerticalOffsetProperty;-><init>()V

    move-object/from16 v0, v30

    invoke-static {v7, v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 222
    .end local v30    # "positionPath":Landroid/graphics/Path;
    .local v9, "anim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 224
    .local v29, "parent":Landroid/view/ViewGroup;
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 225
    new-instance v48, Landroid/transition/ChangeBounds$2;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 251
    .local v48, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_0

    .line 201
    .end local v9    # "anim":Landroid/animation/Animator;
    .end local v29    # "parent":Landroid/view/ViewGroup;
    .end local v48    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_b
    move/from16 v0, v34

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/view/View;->setLeft(I)V

    .line 202
    :cond_c
    move/from16 v0, v38

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/view/View;->setTop(I)V

    .line 203
    :cond_d
    move/from16 v0, v37

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/view/View;->setRight(I)V

    .line 204
    :cond_e
    move/from16 v0, v31

    if-eq v0, v15, :cond_f

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/view/View;->setBottom(I)V

    .line 205
    :cond_f
    const/16 v44, 0x0

    .line 206
    .local v44, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v34

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move/from16 v0, v38

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    .line 207
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v3

    move/from16 v0, v34

    int-to-float v4, v0

    move/from16 v0, v38

    int-to-float v5, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v45

    .line 209
    .local v45, "topLeftPath":Landroid/graphics/Path;
    const-string v3, "left"

    const-string v4, "top"

    move-object/from16 v0, v45

    invoke-static {v7, v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v44

    .line 212
    .end local v45    # "topLeftPath":Landroid/graphics/Path;
    :cond_11
    const/4 v11, 0x0

    .line 213
    .local v11, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v37

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move/from16 v0, v31

    if-eq v0, v15, :cond_13

    .line 214
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v3

    move/from16 v0, v37

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v51, v0

    int-to-float v0, v15

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v12

    .line 216
    .local v12, "bottomRightPath":Landroid/graphics/Path;
    const-string v3, "right"

    const-string v4, "bottom"

    invoke-static {v7, v3, v4, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 219
    .end local v12    # "bottomRightPath":Landroid/graphics/Path;
    :cond_13
    move-object/from16 v0, v44

    invoke-static {v0, v11}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v9

    .restart local v9    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 255
    .end local v9    # "anim":Landroid/animation/Animator;
    .end local v11    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v44    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    :cond_14
    move/from16 v0, v39

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    move/from16 v0, v39

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v3, v3, v18

    invoke-virtual {v7, v3}, Landroid/view/View;->setRight(I)V

    .line 257
    :cond_15
    move/from16 v0, v33

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    move/from16 v0, v33

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v3, v3, v22

    invoke-virtual {v7, v3}, Landroid/view/View;->setBottom(I)V

    .line 260
    :cond_16
    move/from16 v0, v34

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    sub-int v3, v34, v18

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 261
    :cond_17
    move/from16 v0, v38

    move/from16 v1, v22

    if-eq v0, v1, :cond_18

    sub-int v3, v38, v22

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 263
    :cond_18
    sub-int v3, v18, v34

    int-to-float v0, v3

    move/from16 v46, v0

    .line 264
    .local v46, "transXDelta":F
    sub-int v3, v22, v38

    int-to-float v0, v3

    move/from16 v47, v0

    .line 265
    .local v47, "transYDelta":F
    sub-int v50, v23, v39

    .line 266
    .local v50, "widthDelta":I
    sub-int v26, v17, v33

    .line 267
    .local v26, "heightDelta":I
    const/16 v27, 0x0

    .line 268
    const/4 v3, 0x0

    cmpl-float v3, v46, v3

    if-eqz v3, :cond_19

    add-int/lit8 v27, v27, 0x1

    .line 269
    :cond_19
    const/4 v3, 0x0

    cmpl-float v3, v47, v3

    if-eqz v3, :cond_1a

    add-int/lit8 v27, v27, 0x1

    .line 270
    :cond_1a
    if-nez v50, :cond_1b

    if-eqz v26, :cond_1c

    :cond_1b
    add-int/lit8 v27, v27, 0x1

    .line 271
    :cond_1c
    const/16 v49, 0x0

    .line 272
    .local v49, "translationAnimator":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    cmpl-float v3, v46, v3

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    cmpl-float v3, v47, v3

    if-eqz v3, :cond_1e

    .line 273
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v45

    .line 274
    .restart local v45    # "topLeftPath":Landroid/graphics/Path;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v0, v45

    invoke-static {v7, v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v49

    .line 277
    .end local v45    # "topLeftPath":Landroid/graphics/Path;
    :cond_1e
    const/4 v14, 0x0

    .line 278
    .local v14, "clipAnimator":Landroid/animation/ObjectAnimator;
    if-nez v50, :cond_1f

    if-eqz v26, :cond_20

    .line 279
    :cond_1f
    new-instance v43, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v39

    move/from16 v2, v33

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 280
    .local v43, "tempStartBounds":Landroid/graphics/Rect;
    new-instance v42, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 281
    .local v42, "tempEndBounds":Landroid/graphics/Rect;
    const-string v3, "clipBounds"

    sget-object v4, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v51, 0x0

    aput-object v43, v5, v51

    const/16 v51, 0x1

    aput-object v42, v5, v51

    invoke-static {v7, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 284
    .end local v42    # "tempEndBounds":Landroid/graphics/Rect;
    .end local v43    # "tempStartBounds":Landroid/graphics/Rect;
    :cond_20
    move-object/from16 v0, v49

    invoke-static {v0, v14}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v9

    .line 286
    .restart local v9    # "anim":Landroid/animation/Animator;
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    .line 287
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 288
    .restart local v29    # "parent":Landroid/view/ViewGroup;
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 289
    new-instance v48, Landroid/transition/ChangeBounds$3;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$3;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 315
    .restart local v48    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 317
    .end local v29    # "parent":Landroid/view/ViewGroup;
    .end local v48    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_21
    new-instance v3, Landroid/transition/ChangeBounds$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Landroid/transition/ChangeBounds$4;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;)V

    invoke-virtual {v9, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 327
    .end local v9    # "anim":Landroid/animation/Animator;
    .end local v14    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v15    # "endBottom":I
    .end local v16    # "endBounds":Landroid/graphics/Rect;
    .end local v17    # "endHeight":I
    .end local v18    # "endLeft":I
    .end local v21    # "endRight":I
    .end local v22    # "endTop":I
    .end local v23    # "endWidth":I
    .end local v26    # "heightDelta":I
    .end local v27    # "numChanges":I
    .end local v31    # "startBottom":I
    .end local v32    # "startBounds":Landroid/graphics/Rect;
    .end local v33    # "startHeight":I
    .end local v34    # "startLeft":I
    .end local v37    # "startRight":I
    .end local v38    # "startTop":I
    .end local v39    # "startWidth":I
    .end local v46    # "transXDelta":F
    .end local v47    # "transYDelta":F
    .end local v49    # "translationAnimator":Landroid/animation/ObjectAnimator;
    .end local v50    # "widthDelta":I
    :cond_22
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 328
    .local v40, "startX":I
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v41

    .line 329
    .local v41, "startY":I
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 330
    .local v24, "endX":I
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 332
    .local v25, "endY":I
    move/from16 v0, v40

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    move/from16 v0, v41

    move/from16 v1, v25

    if-eq v0, v1, :cond_24

    .line 333
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 334
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 336
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v13, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v13}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 338
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 339
    .local v6, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/view/View;->getTransitionAlpha()F

    move-result v8

    .line 340
    .local v8, "transitionAlpha":F
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v4, v40, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v51, 0x1

    aget v5, v5, v51

    sub-int v5, v41, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget v51, v51, v52

    sub-int v51, v24, v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v52, v0

    const/16 v53, 0x1

    aget v52, v52, v53

    sub-int v52, v25, v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v45

    .line 344
    .restart local v45    # "topLeftPath":Landroid/graphics/Path;
    sget-object v3, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-static {v3, v4, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v28

    .line 346
    .local v28, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-static {v6, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 347
    .local v9, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/transition/ChangeBounds$5;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Landroid/transition/ChangeBounds$5;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 357
    .end local v6    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "transitionAlpha":F
    .end local v9    # "anim":Landroid/animation/ObjectAnimator;
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .end local v24    # "endX":I
    .end local v25    # "endY":I
    .end local v28    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v40    # "startX":I
    .end local v41    # "startY":I
    .end local v45    # "topLeftPath":Landroid/graphics/Path;
    :cond_24
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 116
    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 100
    return-void
.end method
