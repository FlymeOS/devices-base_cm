.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final ALIGNMENT_END:I = 0xca

.field static final ALIGNMENT_LEFT:I = 0xcb

.field static final ALIGNMENT_MIDDLE:I = 0xc8

.field static final ALIGNMENT_RIGHT:I = 0xcc

.field static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field mAlignment:I

.field mAutoLinePosition:Z

.field mId:Ljava/lang/String;

.field mLinePosition:Ljava/lang/Integer;

.field mLines:[[Landroid/media/TextTrackCueSpan;

.field mPauseOnExit:Z

.field mRegion:Landroid/media/TextTrackRegion;

.field mRegionId:Ljava/lang/String;

.field mSize:I

.field mSnapToLines:Z

.field mStrings:[Ljava/lang/String;

.field mTextPosition:I

.field mWritingDirection:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 405
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 406
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 408
    iput v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 409
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 411
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 412
    const/16 v0, 0x32

    iput v0, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 413
    iput v2, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 414
    const/16 v0, 0xc8

    iput v0, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 415
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 416
    iput-object v1, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 405
    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 14
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 481
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    if-nez v6, :cond_0

    .line 482
    const-string/jumbo v6, "null"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :goto_0
    return-object p1

    .line 484
    :cond_0
    const-string/jumbo v6, "["

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/4 v0, 0x1

    .line 486
    .local v0, "first":Z
    iget-object v8, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const/4 v6, 0x0

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_6

    aget-object v5, v8, v7

    .line 487
    .local v5, "spans":[Landroid/media/TextTrackCueSpan;
    if-nez v0, :cond_1

    .line 488
    const-string/jumbo v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_1
    if-nez v5, :cond_2

    .line 491
    const-string/jumbo v6, "null"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :goto_2
    const/4 v0, 0x0

    .line 486
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 493
    :cond_2
    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/4 v1, 0x1

    .line 495
    .local v1, "innerFirst":Z
    const-wide/16 v2, -0x1

    .line 496
    .local v2, "lastTimestamp":J
    const/4 v6, 0x0

    array-length v10, v5

    :goto_3
    if-ge v6, v10, :cond_5

    aget-object v4, v5, v6

    .line 497
    .local v4, "span":Landroid/media/TextTrackCueSpan;
    if-nez v1, :cond_3

    .line 498
    const-string/jumbo v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_3
    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v11, v12, v2

    if-eqz v11, :cond_4

    .line 501
    const-string/jumbo v11, "<"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 503
    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 502
    invoke-static {v12, v13}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    .line 501
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 504
    const-string/jumbo v12, ">"

    .line 501
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-wide v2, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 507
    :cond_4
    iget-object v11, v4, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/4 v1, 0x0

    .line 496
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 510
    .end local v4    # "span":Landroid/media/TextTrackCueSpan;
    :cond_5
    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 514
    .end local v1    # "innerFirst":Z
    .end local v2    # "lastTimestamp":J
    .end local v5    # "spans":[Landroid/media/TextTrackCueSpan;
    :cond_6
    const-string/jumbo v6, "]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 457
    iget-object v2, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 458
    const-string/jumbo v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :goto_0
    return-object p1

    .line 460
    :cond_0
    const-string/jumbo v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/4 v0, 0x1

    .line 462
    .local v0, "first":Z
    iget-object v3, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 463
    .local v1, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 464
    const-string/jumbo v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_1
    if-nez v1, :cond_2

    .line 467
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :goto_2
    const/4 v0, 0x0

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_2
    const-string/jumbo v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string/jumbo v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 475
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 421
    instance-of v5, p1, Landroid/media/TextTrackCue;

    if-nez v5, :cond_0

    .line 422
    return v7

    .line 424
    :cond_0
    if-ne p0, p1, :cond_1

    .line 425
    const/4 v5, 0x1

    return v5

    .line 429
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/media/TextTrackCue;

    move-object v1, v0

    .line 430
    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v5, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 431
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v5, v6, :cond_5

    .line 432
    iget v5, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v6, v1, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v5, v6, :cond_5

    .line 433
    iget-object v5, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 430
    if-eqz v5, :cond_5

    .line 434
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v5, v6, :cond_5

    .line 435
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v5, v6, :cond_5

    .line 436
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-nez v5, :cond_3

    .line 437
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 438
    :cond_2
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v5, :cond_5

    iget-object v5, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v5, :cond_5

    .line 439
    :cond_3
    iget v5, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v6, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v5, v6, :cond_5

    .line 440
    iget v5, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v6, v1, Landroid/media/TextTrackCue;->mSize:I

    if-ne v5, v6, :cond_5

    .line 441
    iget v5, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v6, v1, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v5, v6, :cond_5

    .line 442
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v5, v5

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v6, v6

    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    .line 443
    .local v4, "res":Z
    :goto_0
    if-eqz v4, :cond_7

    .line 444
    const/4 v3, 0x0

    .local v3, "line":I
    :goto_1
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 445
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v5, v5, v3

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v6, v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_6

    .line 446
    return v7

    .line 442
    .end local v3    # "line":I
    .end local v4    # "res":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 430
    .end local v4    # "res":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 444
    .restart local v3    # "line":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    .end local v3    # "line":I
    :cond_7
    return v4

    .line 451
    .end local v1    # "cue":Landroid/media/TextTrackCue;
    .end local v4    # "res":Z
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/IncompatibleClassChangeError;
    return v7
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTime(J)V
    .locals 13
    .param p1, "timeMs"    # J

    .prologue
    const/4 v3, 0x0

    .line 555
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v7, v6

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 556
    .local v0, "line":[Landroid/media/TextTrackCueSpan;
    array-length v8, v0

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v1, v0, v4

    .line 557
    .local v1, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v10, v1, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, p1, v10

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v1, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 556
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_0
    move v2, v3

    .line 557
    goto :goto_2

    .line 555
    .end local v1    # "span":Landroid/media/TextTrackCueSpan;
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 554
    .end local v0    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    const-string/jumbo v2, " --> "

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    iget-wide v2, p0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    const-string/jumbo v2, " {id:\""

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 525
    const-string/jumbo v2, "\", pauseOnExit:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 525
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    const-string/jumbo v2, ", direction:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "horizontal"

    .line 522
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    const-string/jumbo v2, ", regionId:\""

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 532
    const-string/jumbo v2, "\", snapToLines:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 532
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    const-string/jumbo v2, ", linePosition:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 533
    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "auto"

    .line 522
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    const-string/jumbo v2, ", textPosition:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    const-string/jumbo v2, ", size:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    const-string/jumbo v2, ", alignment:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xca

    if-ne v1, v3, :cond_4

    const-string/jumbo v1, "end"

    .line 522
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    const-string/jumbo v2, ", text:"

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 528
    :cond_0
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x66

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "vertical_lr"

    goto :goto_0

    .line 529
    :cond_1
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x65

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, "vertical_rl"

    goto/16 :goto_0

    .line 530
    :cond_2
    const-string/jumbo v1, "INVALID"

    goto/16 :goto_0

    .line 534
    :cond_3
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto :goto_1

    .line 539
    :cond_4
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcb

    if-ne v1, v3, :cond_5

    const-string/jumbo v1, "left"

    goto :goto_2

    .line 540
    :cond_5
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    const-string/jumbo v1, "middle"

    goto :goto_2

    .line 541
    :cond_6
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_7

    const-string/jumbo v1, "right"

    goto :goto_2

    .line 542
    :cond_7
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_8

    const-string/jumbo v1, "start"

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "INVALID"

    goto :goto_2
.end method
