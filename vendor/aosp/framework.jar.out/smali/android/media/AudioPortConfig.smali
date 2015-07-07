.class public Landroid/media/AudioPortConfig;
.super Ljava/lang/Object;
.source "AudioPortConfig.java"


# static fields
.field static final CHANNEL_MASK:I = 0x2

.field static final FORMAT:I = 0x4

.field static final GAIN:I = 0x8

.field static final SAMPLE_RATE:I = 0x1


# instance fields
.field private final mChannelMask:I

.field mConfigMask:I

.field private final mFormat:I

.field private final mGain:Landroid/media/AudioGainConfig;

.field final mPort:Landroid/media/AudioPort;

.field private final mSamplingRate:I


# direct methods
.method constructor <init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V
    .locals 1
    .param p1, "port"    # Landroid/media/AudioPort;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I
    .param p5, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    .line 51
    iput p2, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    .line 52
    iput p3, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    .line 53
    iput p4, p0, Landroid/media/AudioPortConfig;->mFormat:I

    .line 54
    iput-object p5, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 56
    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    return v0
.end method

.method public format()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/media/AudioPortConfig;->mFormat:I

    return v0
.end method

.method public gain()Landroid/media/AudioGainConfig;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    return-object v0
.end method

.method public port()Landroid/media/AudioPort;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    return-object v0
.end method

.method public samplingRate()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSamplingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannelMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPortConfig;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
