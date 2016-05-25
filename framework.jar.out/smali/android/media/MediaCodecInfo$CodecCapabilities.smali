.class public final Landroid/media/MediaCodecInfo$CodecCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecCapabilities"
.end annotation


# static fields
.field public static final COLOR_Format12bitRGB444:I = 0x3

.field public static final COLOR_Format16bitARGB1555:I = 0x5

.field public static final COLOR_Format16bitARGB4444:I = 0x4

.field public static final COLOR_Format16bitBGR565:I = 0x7

.field public static final COLOR_Format16bitRGB565:I = 0x6

.field public static final COLOR_Format18BitBGR666:I = 0x29

.field public static final COLOR_Format18bitARGB1665:I = 0x9

.field public static final COLOR_Format18bitRGB666:I = 0x8

.field public static final COLOR_Format19bitARGB1666:I = 0xa

.field public static final COLOR_Format24BitABGR6666:I = 0x2b

.field public static final COLOR_Format24BitARGB6666:I = 0x2a

.field public static final COLOR_Format24bitARGB1887:I = 0xd

.field public static final COLOR_Format24bitBGR888:I = 0xc

.field public static final COLOR_Format24bitRGB888:I = 0xb

.field public static final COLOR_Format25bitARGB1888:I = 0xe

.field public static final COLOR_Format32bitARGB8888:I = 0x10

.field public static final COLOR_Format32bitBGRA8888:I = 0xf

.field public static final COLOR_Format8bitRGB332:I = 0x2

.field public static final COLOR_FormatCbYCrY:I = 0x1b

.field public static final COLOR_FormatCrYCbY:I = 0x1c

.field public static final COLOR_FormatL16:I = 0x24

.field public static final COLOR_FormatL2:I = 0x21

.field public static final COLOR_FormatL24:I = 0x25

.field public static final COLOR_FormatL32:I = 0x26

.field public static final COLOR_FormatL4:I = 0x22

.field public static final COLOR_FormatL8:I = 0x23

.field public static final COLOR_FormatMonochrome:I = 0x1

.field public static final COLOR_FormatRawBayer10bit:I = 0x1f

.field public static final COLOR_FormatRawBayer8bit:I = 0x1e

.field public static final COLOR_FormatRawBayer8bitcompressed:I = 0x20

.field public static final COLOR_FormatSurface:I = 0x7f000789

.field public static final COLOR_FormatYCbYCr:I = 0x19

.field public static final COLOR_FormatYCrYCb:I = 0x1a

.field public static final COLOR_FormatYUV411PackedPlanar:I = 0x12

.field public static final COLOR_FormatYUV411Planar:I = 0x11

.field public static final COLOR_FormatYUV420Flexible:I = 0x7f420888

.field public static final COLOR_FormatYUV420PackedPlanar:I = 0x14

.field public static final COLOR_FormatYUV420PackedSemiPlanar:I = 0x27

.field public static final COLOR_FormatYUV420Planar:I = 0x13

.field public static final COLOR_FormatYUV420SemiPlanar:I = 0x15

.field public static final COLOR_FormatYUV422PackedPlanar:I = 0x17

.field public static final COLOR_FormatYUV422PackedSemiPlanar:I = 0x28

.field public static final COLOR_FormatYUV422Planar:I = 0x16

.field public static final COLOR_FormatYUV422SemiPlanar:I = 0x18

.field public static final COLOR_FormatYUV444Interleaved:I = 0x1d

.field public static final COLOR_QCOM_FormatYUV420SemiPlanar:I = 0x7fa30c00

.field public static final COLOR_TI_FormatYUV420PackedSemiPlanar:I = 0x7f000100

.field public static final FEATURE_AdaptivePlayback:Ljava/lang/String; = "adaptive-playback"

.field public static final FEATURE_SecurePlayback:Ljava/lang/String; = "secure-playback"

.field public static final FEATURE_TunneledPlayback:Ljava/lang/String; = "tunneled-playback"

.field private static final TAG:Ljava/lang/String; = "CodecCapabilities"

.field private static final decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field public colorFormats:[I

.field private mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private mCapabilitiesInfo:Landroid/media/MediaFormat;

.field private mDefaultFormat:Landroid/media/MediaFormat;

.field private mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

.field mError:I

.field private mFlagsRequired:I

.field private mFlagsSupported:I

.field private mFlagsVerified:I

.field private mMime:Ljava/lang/String;

.field private mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field public profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "adaptive-playback"

    invoke-direct {v1, v2, v3, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "secure-playback"

    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "tunneled-playback"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 9
    .param p1, "profLevs"    # [Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .param p2, "colFmts"    # [I
    .param p3, "encoder"    # Z
    .param p4, "flags"    # I
    .param p5, "defaultFormat"    # Landroid/media/MediaFormat;
    .param p6, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-virtual {p6}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v5

    .line 454
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 455
    iput-object p2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 456
    iput p4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    .line 457
    iput-object p5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    .line 458
    iput-object p6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    .line 459
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const-string/jumbo v8, "mime"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    .line 461
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "audio/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 462
    invoke-static {p6, p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v7

    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 463
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v7, v8}, Landroid/media/MediaCodecInfo$AudioCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    .line 467
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 468
    invoke-static {p6, p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v7

    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    .line 469
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v7, v8}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    .line 472
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v1, v0, v2

    .line 473
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "feature-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 475
    .local v6, "yesNo":Ljava/lang/Integer;
    if-nez v6, :cond_3

    .line 472
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "arr$":[Landroid/media/MediaCodecInfo$Feature;
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v6    # "yesNo":Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "video/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 465
    invoke-static {p6, p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    goto :goto_0

    .line 478
    .restart local v0    # "arr$":[Landroid/media/MediaCodecInfo$Feature;
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .restart local v2    # "i$":I
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v6    # "yesNo":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_4

    .line 479
    iget v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    iget v8, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v7, v8

    iput v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    .line 481
    :cond_4
    iget v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iget v8, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v7, v8

    iput v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    .line 482
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    .line 485
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "yesNo":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "profLevs"    # [Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .param p2, "colFmts"    # [I
    .param p3, "encoder"    # Z
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/MediaCodecInfo$CodecProfileLevel;",
            "[IZI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p5, "defaultFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "capabilitiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5, p5}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6, p6}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 446
    return-void
.end method

.method private checkFeature(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 287
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 288
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v5, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    iget v5, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 292
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_0
    return v4

    .line 287
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 8
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "profile"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 423
    new-instance v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v7}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 424
    .local v7, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iput p1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 425
    iput p2, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 426
    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    .line 427
    .local v5, "defaultFormat":Landroid/media/MediaFormat;
    const-string/jumbo v1, "mime"

    invoke-virtual {v5, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    new-array v1, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v7, v1, v4

    new-array v2, v4, [I

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 432
    .local v0, "ret":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    if-eqz v1, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 435
    .end local v0    # "ret":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :cond_0
    return-object v0
.end method

.method private getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    goto :goto_0
.end method

.method private isAudio()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEncoder()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideo()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 7

    .prologue
    .line 406
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    return-object v0
.end method

.method public getDefaultFormat()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-object v0
.end method

.method public final isFeatureRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 260
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isFeatureSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 250
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isFormatSupported(Landroid/media/MediaFormat;)Z
    .locals 11
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 314
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v4

    .line 315
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "mime"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 318
    .local v5, "mime":Ljava/lang/String;
    if-eqz v5, :cond_1

    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v7

    .line 323
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 324
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "feature-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 325
    .local v6, "yesNo":Ljava/lang/Integer;
    if-nez v6, :cond_3

    .line 323
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 328
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v8, :cond_4

    iget-object v9, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    .line 333
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v6    # "yesNo":Ljava/lang/Integer;
    :cond_5
    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-virtual {v9, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 336
    :cond_6
    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v9, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 339
    :cond_7
    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v9, :cond_8

    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-virtual {v9, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_8
    move v7, v8

    .line 342
    goto :goto_0
.end method

.method public isRegular()Z
    .locals 5

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 299
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-boolean v4, v1, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    const/4 v4, 0x0

    .line 303
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :goto_1
    return v4

    .line 298
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public validFeatures()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    .line 272
    .local v0, "features":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 273
    .local v2, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 274
    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return-object v2
.end method
