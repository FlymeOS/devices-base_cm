.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method static synthetic -get0(Landroid/transition/Crossfade;)I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 59
    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 60
    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 47
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v7, 0x0

    .line 261
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 262
    .local v4, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v1, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v5, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 264
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 266
    :cond_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:crossfade:bounds"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 272
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 271
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_1

    .line 274
    check-cast v4, Landroid/view/TextureView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    :goto_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:crossfade:bitmap"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 284
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:crossfade:drawable"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void

    .line 276
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 277
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 293
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 288
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 169
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 170
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x1

    .line 173
    .local v4, "useParentOverlay":Z
    :goto_0
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 174
    .local v5, "view":Landroid/view/View;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v19, v0

    .line 175
    .local v19, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 176
    .local v14, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "android:crossfade:bounds"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    .line 177
    .local v18, "startBounds":Landroid/graphics/Rect;
    const-string/jumbo v2, "android:crossfade:bounds"

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 178
    .local v13, "endBounds":Landroid/graphics/Rect;
    const-string/jumbo v2, "android:crossfade:bitmap"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 179
    .local v17, "startBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v2, "android:crossfade:bitmap"

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 180
    .local v12, "endBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v2, "android:crossfade:drawable"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 181
    .local v6, "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string/jumbo v2, "android:crossfade:drawable"

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 186
    .local v7, "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 172
    .end local v4    # "useParentOverlay":Z
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "endBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "endBounds":Landroid/graphics/Rect;
    .end local v14    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "startBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "startBounds":Landroid/graphics/Rect;
    .end local v19    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "useParentOverlay":Z
    goto :goto_0

    .line 187
    .restart local v5    # "view":Landroid/view/View;
    .restart local v6    # "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v12    # "endBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "endBounds":Landroid/graphics/Rect;
    .restart local v14    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v17    # "startBitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "startBounds":Landroid/graphics/Rect;
    .restart local v19    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    if-eqz v4, :cond_9

    .line 188
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    .line 189
    .local v15, "overlay":Landroid/view/ViewOverlay;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 190
    invoke-virtual {v15, v7}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_5
    invoke-virtual {v15, v6}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 200
    const-string/jumbo v2, "alpha"

    const/16 v3, 0xff

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    filled-new-array {v3, v0, v1}, [I

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 204
    .local v8, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    new-instance v2, Landroid/transition/Crossfade$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v6}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    const/4 v9, 0x0

    .line 212
    .local v9, "anim1":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 214
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v3, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v3, v21

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x2

    aput v20, v3, v21

    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 222
    .end local v9    # "anim1":Landroid/animation/ObjectAnimator;
    :cond_6
    :goto_3
    new-instance v2, Landroid/transition/Crossfade$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    .local v16, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    if-eqz v9, :cond_7

    .line 236
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 238
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 254
    :cond_8
    :goto_4
    return-object v16

    .line 188
    .end local v8    # "anim":Landroid/animation/ObjectAnimator;
    .end local v15    # "overlay":Landroid/view/ViewOverlay;
    .end local v16    # "set":Landroid/animation/AnimatorSet;
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v15

    .restart local v15    # "overlay":Landroid/view/ViewOverlay;
    goto/16 :goto_1

    .line 202
    :cond_a
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v3, v21

    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .restart local v8    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 215
    .restart local v9    # "anim1":Landroid/animation/ObjectAnimator;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-nez v2, :cond_6

    .line 216
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v3, v21

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x1

    aput v20, v3, v21

    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .local v9, "anim1":Landroid/animation/ObjectAnimator;
    goto :goto_3

    .line 243
    .end local v9    # "anim1":Landroid/animation/ObjectAnimator;
    .restart local v16    # "set":Landroid/animation/AnimatorSet;
    :cond_c
    const-string/jumbo v2, "bounds"

    .line 244
    sget-object v3, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 243
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 244
    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    .line 243
    move-object/from16 v0, v20

    invoke-static {v6, v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 245
    .local v10, "anim2":Landroid/animation/Animator;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 249
    const-string/jumbo v2, "bounds"

    .line 250
    sget-object v3, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .line 249
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 250
    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    .line 249
    move-object/from16 v0, v20

    invoke-static {v7, v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 251
    .local v11, "anim3":Landroid/animation/Animator;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_4
.end method

.method public getFadeBehavior()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public getResizeBehavior()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public setFadeBehavior(I)Landroid/transition/Crossfade;
    .locals 1
    .param p1, "fadeBehavior"    # I

    .prologue
    .line 125
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 126
    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 128
    :cond_0
    return-object p0
.end method

.method public setResizeBehavior(I)Landroid/transition/Crossfade;
    .locals 1
    .param p1, "resizeBehavior"    # I

    .prologue
    .line 150
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 151
    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 153
    :cond_0
    return-object p0
.end method
