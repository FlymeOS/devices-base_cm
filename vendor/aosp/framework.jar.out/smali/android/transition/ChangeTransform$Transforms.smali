.class Landroid/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field public final rotationX:F

.field public final rotationY:F

.field public final rotationZ:F

.field public final scaleX:F

.field public final scaleY:F

.field public final translationX:F

.field public final translationY:F

.field public final translationZ:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    .line 443
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 452
    instance-of v2, p1, Landroid/transition/ChangeTransform$Transforms;

    if-nez v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 455
    check-cast v0, Landroid/transition/ChangeTransform$Transforms;

    .line 456
    .local v0, "thatTransform":Landroid/transition/ChangeTransform$Transforms;
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public restore(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 446
    iget v1, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    iget v4, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    iget v5, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    iget v6, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    iget v7, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    iget v8, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    move-object v0, p1

    # invokes: Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V
    invoke-static/range {v0 .. v8}, Landroid/transition/ChangeTransform;->access$200(Landroid/view/View;FFFFFFFF)V

    .line 448
    return-void
.end method
