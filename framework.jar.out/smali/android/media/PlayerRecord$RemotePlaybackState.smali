.class public Landroid/media/PlayerRecord$RemotePlaybackState;
.super Ljava/lang/Object;
.source "PlayerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerRecord;
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
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p1, p0, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 184
    iput p2, p0, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 185
    iput p3, p0, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 187
    return-void
.end method
