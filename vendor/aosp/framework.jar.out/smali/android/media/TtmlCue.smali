.class Landroid/media/TtmlCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "TtmlRenderer.java"


# instance fields
.field public mText:Ljava/lang/String;

.field public mTtmlFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "ttmlFragment"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 293
    iput-wide p1, p0, Landroid/media/TtmlCue;->mStartTimeMs:J

    .line 294
    iput-wide p3, p0, Landroid/media/TtmlCue;->mEndTimeMs:J

    .line 295
    iput-object p5, p0, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    .line 296
    iput-object p6, p0, Landroid/media/TtmlCue;->mTtmlFragment:Ljava/lang/String;

    .line 297
    return-void
.end method
