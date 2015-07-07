.class public Landroid/transition/ChangeTransform;
.super Landroid/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeTransform$GhostListener;,
        Landroid/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeTransform:matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeTransform:transforms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeTransform:parentMatrix"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/transition/ChangeTransform$1;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animationMatrix"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 72
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 73
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 74
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-boolean v2, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 73
    iput-boolean v2, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 74
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 80
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeTransform:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/transition/ChangeTransform;)Z
    .locals 1
    .param p0, "x0"    # Landroid/transition/ChangeTransform;

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method static synthetic access$100()Landroid/util/Property;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/transition/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F
    .param p8, "x8"    # F

    .prologue
    .line 40
    invoke-static/range {p0 .. p8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 9
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 163
    iget-object v5, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 164
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v4, Landroid/transition/ChangeTransform$Transforms;

    invoke-direct {v4, v5}, Landroid/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 169
    .local v4, "transforms":Landroid/transition/ChangeTransform$Transforms;
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:transforms"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 171
    .local v0, "matrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    :cond_2
    const/4 v0, 0x0

    .line 176
    :goto_1
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:matrix"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-boolean v6, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    if-eqz v6, :cond_0

    .line 178
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 180
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 181
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 182
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateMatrix"

    const v8, 0x1020046

    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateParentMatrix"

    const v8, 0x1020047

    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "parentMatrix":Landroid/graphics/Matrix;
    :cond_3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .local v1, "matrix":Landroid/graphics/Matrix;
    move-object v0, v1

    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    goto :goto_1
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 331
    iget-object v5, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 333
    .local v5, "view":Landroid/view/View;
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 334
    .local v0, "endMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 335
    .local v3, "localEndMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 337
    invoke-static {v5, p1, v3}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object v1

    .line 339
    .local v1, "ghostView":Landroid/view/GhostView;
    move-object v4, p0

    .line 340
    .local v4, "outerTransition":Landroid/transition/Transition;
    :goto_0
    iget-object v6, v4, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v6, :cond_0

    .line 341
    iget-object v4, v4, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    goto :goto_0

    .line 343
    :cond_0
    new-instance v2, Landroid/transition/ChangeTransform$GhostListener;

    invoke-direct {v2, v5, v1, v0}, Landroid/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/view/GhostView;Landroid/graphics/Matrix;)V

    .line 344
    .local v2, "listener":Landroid/transition/ChangeTransform$GhostListener;
    invoke-virtual {v4, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 346
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v7, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v6, v7, :cond_1

    .line 347
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 349
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 350
    return-void
.end method

.method private createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 11
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;
    .param p3, "handleParentChange"    # Z

    .prologue
    .line 243
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Matrix;

    .line 244
    .local v8, "startMatrix":Landroid/graphics/Matrix;
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    .line 246
    .local v7, "endMatrix":Landroid/graphics/Matrix;
    if-nez v8, :cond_0

    .line 247
    sget-object v8, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 250
    :cond_0
    if-nez v7, :cond_1

    .line 251
    sget-object v7, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 254
    :cond_1
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    const/4 v6, 0x0

    .line 313
    :goto_0
    return-object v6

    .line 258
    :cond_2
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:transforms"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/ChangeTransform$Transforms;

    .line 261
    .local v5, "transforms":Landroid/transition/ChangeTransform$Transforms;
    iget-object v4, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 262
    .local v4, "view":Landroid/view/View;
    invoke-static {v4}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 264
    sget-object v1, Landroid/transition/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;

    new-instance v2, Landroid/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v2}, Landroid/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/Matrix;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v4, v1, v2, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 267
    .local v6, "animator":Landroid/animation/ObjectAnimator;
    move-object v3, v7

    .line 269
    .local v3, "finalEndMatrix":Landroid/graphics/Matrix;
    new-instance v0, Landroid/transition/ChangeTransform$2;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/transition/ChangeTransform$2;-><init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;)V

    .line 311
    .local v0, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    goto :goto_0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/ViewGroup;
    .param p2, "endParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "parentsMatch":Z
    invoke-virtual {p0, p1}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p2}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 319
    :cond_0
    if-ne p1, p2, :cond_2

    move v1, v2

    .line 326
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v3

    .line 319
    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    .line 322
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v0, :cond_1

    .line 323
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_4

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private static setIdentityTransforms(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 372
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v0 .. v8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 373
    return-void
.end method

.method private setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 353
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:parentMatrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 354
    .local v0, "endParentMatrix":Landroid/graphics/Matrix;
    iget-object v4, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v5, 0x1020047

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 356
    iget-object v3, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 357
    .local v3, "toLocal":Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 358
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 360
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 361
    .local v1, "startLocal":Landroid/graphics/Matrix;
    if-nez v1, :cond_0

    .line 362
    new-instance v1, Landroid/graphics/Matrix;

    .end local v1    # "startLocal":Landroid/graphics/Matrix;
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 363
    .restart local v1    # "startLocal":Landroid/graphics/Matrix;
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:parentMatrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 367
    .local v2, "startParentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 368
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 369
    return-void
.end method

.method private static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 379
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 380
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationZ(F)V

    .line 381
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 382
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 383
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 384
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 385
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    .line 386
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 199
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 194
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 204
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 207
    :cond_0
    const/4 v5, 0x0

    .line 238
    :cond_1
    :goto_0
    return-object v5

    .line 210
    :cond_2
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 211
    .local v3, "startParent":Landroid/view/ViewGroup;
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parent"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 212
    .local v0, "endParent":Landroid/view/ViewGroup;
    iget-boolean v6, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    if-eqz v6, :cond_6

    invoke-direct {p0, v3, v0}, Landroid/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v1, 0x1

    .line 214
    .local v1, "handleParentChange":Z
    :goto_1
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateMatrix"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 215
    .local v2, "startMatrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_3

    .line 216
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:matrix"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_3
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:intermediateParentMatrix"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    .line 221
    .local v4, "startParentMatrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_4

    .line 222
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeTransform:parentMatrix"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_4
    if-eqz v1, :cond_5

    .line 227
    invoke-direct {p0, p2, p3}, Landroid/transition/ChangeTransform;->setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 231
    :cond_5
    invoke-direct {p0, p2, p3, v1}, Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 234
    .local v5, "transformAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    iget-boolean v6, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v6, :cond_1

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    goto :goto_0

    .line 212
    .end local v1    # "handleParentChange":Z
    .end local v2    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v5    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getReparent()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 155
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0
    .param p1, "reparentWithOverlay"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 128
    return-void
.end method
