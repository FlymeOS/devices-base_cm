.class Landroid/media/TextTrackRegion;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# static fields
.field static final SCROLL_VALUE_NONE:I = 0x12c

.field static final SCROLL_VALUE_SCROLL_UP:I = 0x12d


# instance fields
.field mAnchorPointX:F

.field mAnchorPointY:F

.field mId:Ljava/lang/String;

.field mLines:I

.field mScrollValue:I

.field mViewportAnchorPointX:F

.field mViewportAnchorPointY:F

.field mWidth:F


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    .line 353
    iput v1, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 354
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 355
    iput v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    iput v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 356
    iput v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    iput v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 357
    const/16 v0, 0x12c

    iput v0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    .line 351
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " {id:\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    const-string/jumbo v2, "\", width:"

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    iget v2, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string/jumbo v2, ", lines:"

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    iget v2, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    const-string/jumbo v2, ", anchorPoint:("

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string/jumbo v2, ", "

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, "), viewportAnchorPoints:"

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, ", "

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    const-string/jumbo v2, "), scrollValue:"

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v3, 0x12c

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "none"

    .line 361
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    const-string/jumbo v2, "}"

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 373
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 370
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_0
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v3, 0x12d

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "scroll_up"

    goto :goto_0

    .line 371
    :cond_1
    const-string/jumbo v1, "INVALID"

    goto :goto_0
.end method
