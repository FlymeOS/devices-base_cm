.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppWindowAnimator"

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field deferFinalFrameCleanup:Z

.field deferThumbnailDestruction:Z

.field freezingScreen:Z

.field hasTransformation:Z

.field lastFreezeDuration:I

.field mAllAppWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field thumbnail:Landroid/view/SurfaceControl;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailForceAboveLayer:I

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field thumbnailX:I

.field thumbnailY:I

.field final transformation:Landroid/view/animation/Transformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 71
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 87
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 89
    return-void
.end method

.method private stepAnimation(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_0

    move v0, v1

    .line 238
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 219
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 220
    .local v0, "hasMoreFrames":Z
    if-nez v0, :cond_1

    .line 221
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    if-nez v2, :cond_2

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 225
    const/4 v0, 0x1

    .line 237
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    goto :goto_0

    .line 230
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 232
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_1
.end method

.method private stepThumbnailAnimation(J)V
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->clear()V

    .line 177
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, p1, p2, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 178
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 180
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 182
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 184
    .local v0, "screenAnimation":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 185
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 188
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 189
    .local v2, "tmpFloats":[F
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 193
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x5

    aget v7, v2, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 201
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 202
    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v5, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 210
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    aget v4, v2, v4

    const/4 v6, 0x3

    aget v6, v2, v6

    aget v3, v2, v3

    const/4 v7, 0x4

    aget v7, v2, v7

    invoke-virtual {v5, v4, v6, v3, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 212
    return-void

    .end local v0    # "screenAnimation":Z
    .end local v2    # "tmpFloats":[F
    :cond_1
    move v0, v4

    .line 182
    goto :goto_0

    .line 207
    .restart local v0    # "screenAnimation":Z
    .restart local v2    # "tmpFloats":[F
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 143
    :cond_1
    return-void
.end method

.method public clearThumbnail()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 151
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAnimator="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "freezingScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 352
    const-string v2, " allDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 353
    const-string v2, " animLayerAdjustment="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 354
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 358
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 359
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "animating="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "animation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v2, :cond_3

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "XForm: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 365
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 367
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "thumbnail="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 369
    const-string v2, " x="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 370
    const-string v2, " y="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 371
    const-string v2, " layer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "thumbnailAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "thumbnailTransformation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 377
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowStateAnimator;

    .line 378
    .local v1, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "App Win Anim #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 379
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;II)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 96
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 97
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 100
    :cond_0
    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 101
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 102
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 103
    .local v1, "zorder":I
    const/4 v0, 0x0

    .line 104
    .local v0, "adj":I
    if-ne v1, v5, :cond_4

    .line 105
    const/16 v0, 0x3e8

    .line 110
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eq v2, v0, :cond_2

    .line 111
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 112
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 116
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 117
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 119
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v2, :cond_3

    .line 120
    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 122
    :cond_3
    return-void

    .line 106
    :cond_4
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 107
    const/16 v0, -0x3e8

    goto :goto_0

    .line 116
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDummyAnimation()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllWindowsLocked()Z
    .locals 5

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, "isAnimating":Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 338
    .local v0, "NW":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 339
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 342
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 343
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    return v2
.end method

.method stepAnimationLocked(J)Z
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v5, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 254
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    .line 256
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_3

    .line 262
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 263
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 264
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3

    .line 265
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    .line 266
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 269
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 272
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_0

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    goto :goto_0

    .line 278
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    .line 281
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 282
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 285
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 287
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v4, :cond_6

    move v2, v3

    .line 288
    goto :goto_0

    .line 291
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v5, 0x8

    const-string v6, "AppWindowToken"

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 295
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 296
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v4, :cond_7

    .line 297
    iput v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 300
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v5, :cond_8

    .line 302
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 309
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 311
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 312
    .local v1, "numAllAppWinAnimators":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_9

    .line 313
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_b

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    :cond_a
    :goto_3
    move v2, v3

    .line 332
    goto/16 :goto_0

    .line 322
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 323
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v2, :cond_a

    .line 324
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 326
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 327
    :catch_0
    move-exception v2

    goto :goto_3

    .line 318
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method updateLayers()V
    .locals 7

    .prologue
    .line 154
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 155
    .local v0, "N":I
    iget v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 156
    .local v1, "adj":I
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 158
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 159
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 160
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, v1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 161
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    if-le v5, v6, :cond_0

    .line 162
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 166
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-nez v5, :cond_1

    .line 167
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 169
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    .end local v4    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    return-void
.end method
