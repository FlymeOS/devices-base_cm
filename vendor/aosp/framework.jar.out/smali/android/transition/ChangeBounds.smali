.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;,
        Landroid/transition/ChangeBounds$1;,
        Landroid/transition/ChangeBounds$2;,
        Landroid/transition/ChangeBounds$3;,
        Landroid/transition/ChangeBounds$4;,
        Landroid/transition/ChangeBounds$5;,
        Landroid/transition/ChangeBounds$6;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

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

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

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
    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "android:changeBounds:bounds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "android:changeBounds:clip"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "android:changeBounds:parent"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "android:changeBounds:windowX"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "android:changeBounds:windowY"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 60
    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 87
    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 86
    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 100
    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 99
    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 113
    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 112
    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 130
    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 129
    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 147
    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 146
    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 168
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 164
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 164
    iput-boolean v3, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v3, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 175
    sget-object v2, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 177
    .local v1, "resizeClip":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    invoke-virtual {p0, v1}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    .line 172
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 9
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v8, 0x0

    .line 233
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 235
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 236
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 241
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:clip"

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_2
    return-void

    .line 235
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .prologue
    .line 261
    const/4 v1, 0x1

    .line 262
    .local v1, "parentMatches":Z
    iget-boolean v2, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v2, :cond_0

    .line 263
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    .line 264
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-nez v0, :cond_2

    .line 265
    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    .line 270
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    :goto_0
    return v1

    .line 265
    .restart local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    :cond_2
    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 256
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 251
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 59
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 276
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 277
    :cond_0
    const/4 v4, 0x0

    return-object v4

    .line 279
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v48, v0

    .line 280
    .local v48, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v30, v0

    .line 281
    .local v30, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "android:changeBounds:parent"

    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/view/ViewGroup;

    .line 282
    .local v47, "startParent":Landroid/view/ViewGroup;
    const-string/jumbo v4, "android:changeBounds:parent"

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 283
    .local v29, "endParent":Landroid/view/ViewGroup;
    if-eqz v47, :cond_2

    if-nez v29, :cond_3

    .line 284
    :cond_2
    const/4 v4, 0x0

    return-object v4

    .line 286
    :cond_3
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 287
    .local v6, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 288
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/graphics/Rect;

    .line 289
    .local v43, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 290
    .local v26, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v46, v0

    .line 291
    .local v46, "startLeft":I
    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 292
    .local v8, "endLeft":I
    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    .line 293
    .local v50, "startTop":I
    move-object/from16 v0, v26

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 294
    .local v9, "endTop":I
    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v49, v0

    .line 295
    .local v49, "startRight":I
    move-object/from16 v0, v26

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 296
    .local v10, "endRight":I
    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    .line 297
    .local v42, "startBottom":I
    move-object/from16 v0, v26

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 298
    .local v11, "endBottom":I
    sub-int v51, v49, v46

    .line 299
    .local v51, "startWidth":I
    sub-int v45, v42, v50

    .line 300
    .local v45, "startHeight":I
    sub-int v31, v10, v8

    .line 301
    .local v31, "endWidth":I
    sub-int v28, v11, v9

    .line 302
    .local v28, "endHeight":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/graphics/Rect;

    .line 303
    .local v44, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Rect;

    .line 304
    .local v27, "endClip":Landroid/graphics/Rect;
    const/16 v37, 0x0

    .line 305
    .local v37, "numChanges":I
    if-eqz v51, :cond_c

    if-eqz v45, :cond_c

    .line 306
    :goto_0
    move/from16 v0, v46

    if-ne v0, v8, :cond_4

    move/from16 v0, v50

    if-eq v0, v9, :cond_5

    :cond_4
    const/16 v37, 0x1

    .line 307
    :cond_5
    move/from16 v0, v49

    if-ne v0, v10, :cond_6

    move/from16 v0, v42

    if-eq v0, v11, :cond_7

    :cond_6
    add-int/lit8 v37, v37, 0x1

    .line 309
    :cond_7
    if-eqz v44, :cond_8

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 310
    :cond_8
    if-nez v44, :cond_a

    if-eqz v27, :cond_a

    .line 311
    :cond_9
    add-int/lit8 v37, v37, 0x1

    .line 313
    :cond_a
    if-lez v37, :cond_19

    .line 315
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-nez v4, :cond_11

    .line 316
    move/from16 v0, v46

    move/from16 v1, v50

    move/from16 v2, v49

    move/from16 v3, v42

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 317
    const/4 v4, 0x2

    move/from16 v0, v37

    if-ne v0, v4, :cond_e

    .line 318
    move/from16 v0, v51

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    move/from16 v0, v45

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v46

    int-to-float v5, v0

    move/from16 v0, v50

    int-to-float v12, v0

    int-to-float v13, v8

    .line 320
    int-to-float v14, v9

    .line 319
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v55

    .line 321
    .local v55, "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v55

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 401
    .end local v55    # "topLeftPath":Landroid/graphics/Path;
    .local v18, "anim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_b

    .line 402
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v39

    check-cast v39, Landroid/view/ViewGroup;

    .line 403
    .local v39, "parent":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 404
    new-instance v56, Landroid/transition/ChangeBounds$9;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 430
    .local v56, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 432
    .end local v39    # "parent":Landroid/view/ViewGroup;
    .end local v56    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_b
    return-object v18

    .line 305
    .end local v18    # "anim":Landroid/animation/Animator;
    :cond_c
    if-eqz v31, :cond_7

    if-eqz v28, :cond_7

    goto/16 :goto_0

    .line 324
    :cond_d
    new-instance v57, Landroid/transition/ChangeBounds$ViewBounds;

    move-object/from16 v0, v57

    invoke-direct {v0, v6}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 325
    .local v57, "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v46

    int-to-float v5, v0

    move/from16 v0, v50

    int-to-float v12, v0

    .line 326
    int-to-float v13, v8

    int-to-float v14, v9

    .line 325
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v55

    .line 328
    .restart local v55    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    .line 327
    move-object/from16 v0, v57

    move-object/from16 v1, v55

    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v54

    .line 330
    .local v54, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v49

    int-to-float v5, v0

    move/from16 v0, v42

    int-to-float v12, v0

    .line 331
    int-to-float v13, v10

    int-to-float v14, v11

    .line 330
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v23

    .line 333
    .local v23, "bottomRightPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    .line 332
    move-object/from16 v0, v57

    move-object/from16 v1, v23

    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 334
    .local v22, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v41, Landroid/animation/AnimatorSet;

    invoke-direct/range {v41 .. v41}, Landroid/animation/AnimatorSet;-><init>()V

    .line 335
    .local v41, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v54, v4, v5

    const/4 v5, 0x1

    aput-object v22, v4, v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 336
    move-object/from16 v18, v41

    .line 337
    .restart local v18    # "anim":Landroid/animation/Animator;
    new-instance v4, Landroid/transition/ChangeBounds$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v4, v0, v1}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    .line 343
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v22    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v23    # "bottomRightPath":Landroid/graphics/Path;
    .end local v41    # "set":Landroid/animation/AnimatorSet;
    .end local v54    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v55    # "topLeftPath":Landroid/graphics/Path;
    .end local v57    # "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    :cond_e
    move/from16 v0, v46

    if-ne v0, v8, :cond_f

    move/from16 v0, v50

    if-eq v0, v9, :cond_10

    .line 344
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v46

    int-to-float v5, v0

    move/from16 v0, v50

    int-to-float v12, v0

    .line 345
    int-to-float v13, v8

    int-to-float v14, v9

    .line 344
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v55

    .line 346
    .restart local v55    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v55

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 349
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v55    # "topLeftPath":Landroid/graphics/Path;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v49

    int-to-float v5, v0

    move/from16 v0, v42

    int-to-float v12, v0

    .line 350
    int-to-float v13, v10

    int-to-float v14, v11

    .line 349
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v21

    .line 351
    .local v21, "bottomRight":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 355
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v21    # "bottomRight":Landroid/graphics/Path;
    :cond_11
    move/from16 v0, v51

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 356
    .local v36, "maxWidth":I
    move/from16 v0, v45

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 358
    .local v35, "maxHeight":I
    add-int v4, v46, v36

    .line 359
    add-int v5, v50, v35

    .line 358
    move/from16 v0, v46

    move/from16 v1, v50

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 361
    const/16 v40, 0x0

    .line 362
    .local v40, "positionAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v46

    if-ne v0, v8, :cond_12

    move/from16 v0, v50

    if-eq v0, v9, :cond_13

    .line 363
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v46

    int-to-float v5, v0

    move/from16 v0, v50

    int-to-float v12, v0

    int-to-float v13, v8

    .line 364
    int-to-float v14, v9

    .line 363
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v55

    .line 365
    .restart local v55    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v55

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v40

    .line 368
    .end local v40    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v55    # "topLeftPath":Landroid/graphics/Path;
    :cond_13
    move-object/from16 v7, v27

    .line 369
    .local v7, "finalClip":Landroid/graphics/Rect;
    if-nez v44, :cond_14

    .line 370
    new-instance v44, Landroid/graphics/Rect;

    .end local v44    # "startClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v51

    move/from16 v2, v45

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    .restart local v44    # "startClip":Landroid/graphics/Rect;
    :cond_14
    if-nez v27, :cond_15

    .line 373
    new-instance v27, Landroid/graphics/Rect;

    .end local v27    # "endClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    :cond_15
    const/16 v25, 0x0

    .line 376
    .local v25, "clipAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 377
    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 378
    const-string/jumbo v4, "clipBounds"

    sget-object v5, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 379
    const/4 v13, 0x0

    aput-object v44, v12, v13

    const/4 v13, 0x1

    aput-object v27, v12, v13

    .line 378
    invoke-static {v6, v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v25

    .line 380
    .local v25, "clipAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/transition/ChangeBounds$8;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    .end local v25    # "clipAnimator":Landroid/animation/ObjectAnimator;
    :cond_16
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v18

    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 435
    .end local v7    # "finalClip":Landroid/graphics/Rect;
    .end local v8    # "endLeft":I
    .end local v9    # "endTop":I
    .end local v10    # "endRight":I
    .end local v11    # "endBottom":I
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v26    # "endBounds":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v28    # "endHeight":I
    .end local v31    # "endWidth":I
    .end local v35    # "maxHeight":I
    .end local v36    # "maxWidth":I
    .end local v37    # "numChanges":I
    .end local v42    # "startBottom":I
    .end local v43    # "startBounds":Landroid/graphics/Rect;
    .end local v44    # "startClip":Landroid/graphics/Rect;
    .end local v45    # "startHeight":I
    .end local v46    # "startLeft":I
    .end local v49    # "startRight":I
    .end local v50    # "startTop":I
    .end local v51    # "startWidth":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 436
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    sub-int v52, v4, v5

    .line 437
    .local v52, "startX":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    sub-int v53, v4, v5

    .line 438
    .local v53, "startY":I
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    sub-int v32, v4, v5

    .line 439
    .local v32, "endX":I
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    sub-int v33, v4, v5

    .line 441
    .local v33, "endY":I
    move/from16 v0, v52

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    move/from16 v0, v53

    move/from16 v1, v33

    if-eq v0, v1, :cond_19

    .line 442
    :cond_18
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v58

    .line 443
    .local v58, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v34

    .line 444
    .local v34, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v58

    move/from16 v1, v34

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 445
    .local v20, "bitmap":Landroid/graphics/Bitmap;
    new-instance v24, Landroid/graphics/Canvas;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 446
    .local v24, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 447
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    add-int v4, v52, v58

    add-int v5, v53, v34

    move/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v15, v0, v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 449
    invoke-virtual {v6}, Landroid/view/View;->getTransitionAlpha()F

    move-result v17

    .line 450
    .local v17, "transitionAlpha":F
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v52

    int-to-float v5, v0

    move/from16 v0, v53

    int-to-float v12, v0

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v33

    int-to-float v14, v0

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v55

    .line 454
    .restart local v55    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    .line 453
    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v38

    .line 455
    .local v38, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v38, v4, v5

    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 456
    .local v19, "anim":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/transition/ChangeBounds$10;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    return-object v19

    .line 466
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "transitionAlpha":F
    .end local v19    # "anim":Landroid/animation/ObjectAnimator;
    .end local v20    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .end local v32    # "endX":I
    .end local v33    # "endY":I
    .end local v34    # "height":I
    .end local v38    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v52    # "startX":I
    .end local v53    # "startY":I
    .end local v55    # "topLeftPath":Landroid/graphics/Path;
    .end local v58    # "width":I
    :cond_19
    const/4 v4, 0x0

    return-object v4
.end method

.method public getResizeClip()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 228
    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 200
    return-void
.end method
