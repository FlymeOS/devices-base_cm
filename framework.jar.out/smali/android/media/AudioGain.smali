.class public Landroid/media/AudioGain;
.super Ljava/lang/Object;
.source "AudioGain.java"


# static fields
.field public static final MODE_CHANNELS:I = 0x2

.field public static final MODE_JOINT:I = 0x1

.field public static final MODE_RAMP:I = 0x4


# instance fields
.field private final mChannelMask:I

.field private final mDefaultValue:I

.field private final mIndex:I

.field private final mMaxValue:I

.field private final mMinValue:I

.field private final mMode:I

.field private final mRampDurationMaxMs:I

.field private final mRampDurationMinMs:I

.field private final mStepValue:I


# direct methods
.method constructor <init>(IIIIIIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "mode"    # I
    .param p3, "channelMask"    # I
    .param p4, "minValue"    # I
    .param p5, "maxValue"    # I
    .param p6, "defaultValue"    # I
    .param p7, "stepValue"    # I
    .param p8, "rampDurationMinMs"    # I
    .param p9, "rampDurationMaxMs"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/media/AudioGain;->mIndex:I

    .line 76
    iput p2, p0, Landroid/media/AudioGain;->mMode:I

    .line 77
    iput p3, p0, Landroid/media/AudioGain;->mChannelMask:I

    .line 78
    iput p4, p0, Landroid/media/AudioGain;->mMinValue:I

    .line 79
    iput p5, p0, Landroid/media/AudioGain;->mMaxValue:I

    .line 80
    iput p6, p0, Landroid/media/AudioGain;->mDefaultValue:I

    .line 81
    iput p7, p0, Landroid/media/AudioGain;->mStepValue:I

    .line 82
    iput p8, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    .line 83
    iput p9, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    .line 84
    return-void
.end method


# virtual methods
.method public buildConfig(II[II)Landroid/media/AudioGainConfig;
    .locals 7
    .param p1, "mode"    # I
    .param p2, "channelMask"    # I
    .param p3, "values"    # [I
    .param p4, "rampDurationMs"    # I

    .prologue
    .line 157
    new-instance v0, Landroid/media/AudioGainConfig;

    iget v1, p0, Landroid/media/AudioGain;->mIndex:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioGainConfig;-><init>(ILandroid/media/AudioGain;II[II)V

    return-object v0
.end method

.method public channelMask()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/media/AudioGain;->mChannelMask:I

    return v0
.end method

.method public defaultValue()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioGain;->mDefaultValue:I

    return v0
.end method

.method public maxValue()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/media/AudioGain;->mMaxValue:I

    return v0
.end method

.method public minValue()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/media/AudioGain;->mMinValue:I

    return v0
.end method

.method public mode()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/media/AudioGain;->mMode:I

    return v0
.end method

.method public rampDurationMaxMs()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    return v0
.end method

.method public rampDurationMinMs()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    return v0
.end method

.method public stepValue()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/media/AudioGain;->mStepValue:I

    return v0
.end method
