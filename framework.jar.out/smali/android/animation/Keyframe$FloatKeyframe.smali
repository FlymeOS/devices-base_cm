.class Landroid/animation/Keyframe$FloatKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatKeyframe"
.end annotation


# instance fields
.field mValue:F


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 358
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 359
    iput p1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 360
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    .line 361
    return-void
.end method

.method constructor <init>(FF)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # F

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 352
    iput p1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 353
    iput p2, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 354
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    .line 356
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$FloatKeyframe;
    .locals 3

    .prologue
    .line 380
    iget-boolean v1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 383
    .local v0, "kfClone":Landroid/animation/Keyframe$FloatKeyframe;
    :goto_0
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    iget-boolean v1, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValueWasSetOnStart:Z

    iput-boolean v1, v0, Landroid/animation/Keyframe$FloatKeyframe;->mValueWasSetOnStart:Z

    .line 385
    return-object v0

    .line 380
    .end local v0    # "kfClone":Landroid/animation/Keyframe$FloatKeyframe;
    :cond_0
    new-instance v0, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/animation/Keyframe$FloatKeyframe;-><init>(F)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->clone()Landroid/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/animation/Keyframe$FloatKeyframe;->clone()Landroid/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 372
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 373
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    .line 376
    :cond_0
    return-void
.end method
