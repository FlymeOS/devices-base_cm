.class public Lcom/android/server/audio/PlayerRecord$RccPlaybackState;
.super Ljava/lang/Object;
.source "PlayerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RccPlaybackState"
.end annotation


# instance fields
.field public mPositionMs:J

.field public mSpeed:F

.field public mState:I


# direct methods
.method public constructor <init>(IJF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "positionMs"    # J
    .param p4, "speed"    # F

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    .line 96
    iput-wide p2, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    .line 97
    iput p4, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mSpeed:F

    .line 94
    return-void
.end method

.method private posToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 113
    const-string/jumbo v0, "PLAYBACK_POSITION_INVALID"

    return-object v0

    .line 114
    :cond_0
    iget-wide v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    const-wide v2, -0x7fe688e67fe67d00L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 115
    const-string/jumbo v0, "PLAYBACK_POSITION_ALWAYS_UNKNOWN"

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stateToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 144
    const-string/jumbo v0, "[invalid playstate]"

    return-object v0

    .line 124
    :pswitch_0
    const-string/jumbo v0, "PLAYSTATE_NONE"

    return-object v0

    .line 126
    :pswitch_1
    const-string/jumbo v0, "PLAYSTATE_STOPPED"

    return-object v0

    .line 128
    :pswitch_2
    const-string/jumbo v0, "PLAYSTATE_PAUSED"

    return-object v0

    .line 130
    :pswitch_3
    const-string/jumbo v0, "PLAYSTATE_PLAYING"

    return-object v0

    .line 132
    :pswitch_4
    const-string/jumbo v0, "PLAYSTATE_FAST_FORWARDING"

    return-object v0

    .line 134
    :pswitch_5
    const-string/jumbo v0, "PLAYSTATE_REWINDING"

    return-object v0

    .line 136
    :pswitch_6
    const-string/jumbo v0, "PLAYSTATE_SKIPPING_FORWARDS"

    return-object v0

    .line 138
    :pswitch_7
    const-string/jumbo v0, "PLAYSTATE_SKIPPING_BACKWARDS"

    return-object v0

    .line 140
    :pswitch_8
    const-string/jumbo v0, "PLAYSTATE_BUFFERING"

    return-object v0

    .line 142
    :pswitch_9
    const-string/jumbo v0, "PLAYSTATE_ERROR"

    return-object v0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mSpeed:F

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->posToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
