.class public Lcom/android/server/wm/MzDragState$DragAnimator;
.super Ljava/lang/Object;
.source "MzDragState.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MzDragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;
    }
.end annotation


# static fields
.field private static final ANIM_NFC_TIME:I = 0x14a

.field private static final DRAG_DISMISS_ANIM_MIN_SCALE:F = 0.0f

.field private static final DRAG_DISMISS_ANIM_TIME:I = 0x14d

.field private static final DRAG_END_ANIM_TIME:I = 0x1a1

.field private static final DRAG_END_MOVEMENT_SPEED:D = 2.0


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field mDragAnimator:Landroid/animation/ObjectAnimator;

.field private mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

.field private sInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/server/wm/MzDragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MzDragState;)V
    .locals 1

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance v0, Lcom/android/server/wm/MzDragState$DragAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MzDragState$DragAnimator$1;-><init>(Lcom/android/server/wm/MzDragState$DragAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MzDragState$DragAnimator;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MzDragState$DragAnimator;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/server/wm/MzDragState$DragAnimator;->createAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private createAnimation()Landroid/animation/AnimatorSet;
    .locals 28

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 374
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    return-object v22

    .line 296
    :pswitch_0
    new-instance v22, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/MzDragState$DragAnimator;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 299
    const-string v22, "x"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitX:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 300
    .local v11, "dragEndXPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v22, "y"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitY:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 301
    .local v12, "dragEndYPHolder":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    const/16 v24, 0x1

    aput-object v12, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitX:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    mul-float v20, v22, v23

    .line 304
    .local v20, "xDis":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    mul-float v21, v22, v23

    .line 305
    .local v21, "yDis":F
    add-float v22, v20, v21

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 306
    .local v6, "dis":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    .line 307
    .local v18, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 316
    .end local v6    # "dis":D
    .end local v11    # "dragEndXPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "dragEndYPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "time":J
    .end local v20    # "xDis":F
    .end local v21    # "yDis":F
    :pswitch_1
    new-instance v22, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/MzDragState$DragAnimator;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 319
    const-string v22, "x"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentX:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 321
    .local v9, "dragDelXPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v22, "y"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentY:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 323
    .local v10, "dragDelYPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v22, "scale"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 324
    .local v8, "dragDelWidthPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_1

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 325
    .local v5, "dragDelAlphaPHolder":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    const/16 v24, 0x1

    aput-object v10, v23, v24

    const/16 v24, 0x2

    aput-object v8, v23, v24

    const/16 v24, 0x3

    aput-object v5, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x14d

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 340
    .end local v5    # "dragDelAlphaPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "dragDelWidthPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "dragDelXPHolder":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "dragDelYPHolder":Landroid/animation/PropertyValuesHolder;
    :pswitch_2
    new-instance v22, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;-><init>(Lcom/android/server/wm/MzDragState$DragAnimator;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->setX(F)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->setY(F)V

    .line 343
    const-string v22, "y"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mCurrentSurfaceY:F

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitHeight:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 344
    .local v13, "dragSendYPHolder":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v13, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x14a

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 351
    const-string v22, "scale"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 353
    .local v17, "pvhScale":Landroid/animation/PropertyValuesHolder;
    const-string v22, "x"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x41200000    # 10.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    aput v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitX:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 355
    .local v14, "dragXPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v22, "y"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x41200000    # 10.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    aput v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mMzInitY:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 357
    .local v15, "dragYPHolder":Landroid/animation/PropertyValuesHolder;
    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_3

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 359
    .local v16, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    const/16 v24, 0x1

    aput-object v16, v23, v24

    const/16 v24, 0x2

    aput-object v14, v23, v24

    const/16 v24, 0x3

    aput-object v15, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v22

    const-wide/16 v24, 0x14a

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 360
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 364
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/MzDragState;->mRecoverAnimNfc:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v4, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 323
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 324
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 351
    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 357
    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 393
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-virtual {v0}, Lcom/android/server/wm/MzDragState;->endDragLw()V

    .line 385
    iput-object v2, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragAnimator:Landroid/animation/ObjectAnimator;

    .line 386
    iput-object v2, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/MzDragState;->mIsDragAnimating:Z

    .line 388
    iput-object v2, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 389
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 397
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/MzDragState;->mIsDragAnimating:Z

    .line 380
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 412
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mAnimType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    invoke-virtual {v2}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->getScale()F

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState$DragAnimator;->mDragShapeHolder:Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;

    invoke-virtual {v1}, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    goto :goto_1
.end method
