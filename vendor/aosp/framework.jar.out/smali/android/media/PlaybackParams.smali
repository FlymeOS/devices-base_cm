.class public final Landroid/media/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlaybackParams$1;
    }
.end annotation


# static fields
.field public static final AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final AUDIO_FALLBACK_MODE_MUTE:I = 0x1

.field public static final AUDIO_STRETCH_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_STRETCH_MODE_VOICE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/PlaybackParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_AUDIO_FALLBACK_MODE:I = 0x4

.field private static final SET_AUDIO_STRETCH_MODE:I = 0x8

.field private static final SET_PITCH:I = 0x2

.field private static final SET_SPEED:I = 0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mAudioStretchMode:I

.field private mPitch:F

.field private mSet:I

.field private mSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Landroid/media/PlaybackParams$1;

    invoke-direct {v0}, Landroid/media/PlaybackParams$1;-><init>()V

    .line 223
    sput-object v0, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 94
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 95
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 96
    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 97
    iput v1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 94
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 95
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 96
    iput v2, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 97
    iput v2, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 107
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 108
    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/PlaybackParams;
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 122
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioFallbackMode()I
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "audio fallback mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    return v0
.end method

.method public getAudioStretchMode()I
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "audio stretch mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    return v0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pitch not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "speed not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return v0
.end method

.method public setAudioFallbackMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioFallbackMode"    # I

    .prologue
    .line 131
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 132
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 133
    return-object p0
.end method

.method public setAudioStretchMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioStretchMode"    # I

    .prologue
    .line 155
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 156
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 157
    return-object p0
.end method

.method public setPitch(F)Landroid/media/PlaybackParams;
    .locals 2
    .param p1, "pitch"    # F

    .prologue
    .line 180
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pitch must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput p1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 184
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 185
    return-object p0
.end method

.method public setSpeed(F)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 206
    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 207
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 208
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 244
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 248
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 243
    return-void
.end method
