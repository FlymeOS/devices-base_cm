.class public Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;
.super Ljava/lang/Object;
.source "PlayerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RemotePlaybackState"
.end annotation


# instance fields
.field mRccId:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I


# direct methods
.method protected constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "vol"    # I
    .param p3, "volMax"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 187
    iput p2, p0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 188
    iput p3, p0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 189
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 185
    return-void
.end method
