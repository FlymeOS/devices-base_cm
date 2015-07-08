.class Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;
.super Ljava/lang/Object;
.source "MzDragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MzDragState$DragAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShapeHolder"
.end annotation


# instance fields
.field private alpha:F

.field private scale:F

.field final synthetic this$1:Lcom/android/server/wm/MzDragState$DragAnimator;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MzDragState$DragAnimator;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 453
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->this$1:Lcom/android/server/wm/MzDragState$DragAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->x:F

    .line 424
    iput v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->y:F

    .line 425
    iput v1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->scale:F

    .line 426
    iput v1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->alpha:F

    .line 454
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->alpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->scale:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 447
    iput p1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->alpha:F

    .line 448
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 441
    iput p1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->scale:F

    .line 442
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 429
    iput p1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->x:F

    .line 430
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 435
    iput p1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$ShapeHolder;->y:F

    .line 436
    return-void
.end method
