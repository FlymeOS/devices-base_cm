.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    .param p2, "x1"    # Landroid/media/session/MediaSessionLegacyHelper$1;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V

    return-void
.end method


# virtual methods
.method public getNowPlayingEntries()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0}, Landroid/media/session/MediaSession$Callback;->getNowPlayingEntries()V

    .line 571
    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onFastForward()V

    .line 522
    :cond_0
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 483
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 486
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPause()V

    .line 501
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPlay()V

    .line 494
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onRewind()V

    .line 529
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 540
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    .line 543
    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 547
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    .line 550
    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToNext()V

    .line 508
    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToPrevious()V

    .line 515
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onStop()V

    .line 536
    :cond_0
    return-void
.end method

.method public setBrowsedPlayer()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0}, Landroid/media/session/MediaSession$Callback;->setBrowsedPlayer()V

    .line 557
    :cond_0
    return-void
.end method

.method public setPlayItem(IJ)V
    .locals 2
    .param p1, "scope"    # I
    .param p2, "uid"    # J

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSession$Callback;->setPlayItem(IJ)V

    .line 564
    :cond_0
    return-void
.end method
