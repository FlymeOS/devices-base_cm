.class public Landroid/wipower/WipowerDynamicParam;
.super Ljava/lang/Object;
.source "WipowerDynamicParam.java"


# static fields
.field private static final IREG_ADC_TO_mA_RATIO:F = 4.765625f

.field private static final LOGTAG:Ljava/lang/String; = "WipowerDynamicParam"

.field private static final LSB_MASK:I = 0xff

.field private static final MSB_MASK:I = 0xff00

.field private static final OVP_BIT:B = -0x80t

.field private static final OVP_THRESHHOLD_VAL:S = 0x53fcs

.field private static final VREG_ADC_TO_mV_RATIO:F = 95.3125f

.field private static sDebug:Z


# instance fields
.field private mAlert:B

.field private mMaxRectVoltageDyn:S

.field private mMinRectVoltageDyn:S

.field private mOptValidity:B

.field private mOutputCurrent:S

.field private mOutputVoltage:S

.field private mRectCurrent:S

.field private mRectVoltage:S

.field private mReserved1:S

.field private mReserved2:B

.field private mSetRectVoltageDyn:S

.field private mTemperature:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Landroid/wipower/WipowerDynamicParam;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 78
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 79
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 80
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 81
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 82
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 83
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 84
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 85
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 86
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 87
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 88
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 89
    return-void
.end method

.method public static IREG_ADC_TO_mA(S)S
    .locals 2
    .param p0, "adc"    # S

    .prologue
    .line 174
    int-to-float v0, p0

    const v1, 0x40988000    # 4.765625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static VREG_ADC_TO_mV(S)S
    .locals 2
    .param p0, "adc"    # S

    .prologue
    .line 170
    int-to-float v0, p0

    const v1, 0x42bea000    # 95.3125f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private static toHex(I)Ljava/lang/String;
    .locals 4
    .param p0, "num"    # I

    .prologue
    .line 96
    const-string v0, "0x%8s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsigned(B)S
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 166
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getValue()[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    const v3, 0xff00

    .line 124
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 125
    .local v0, "res":[B
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->print()V

    .line 126
    const/4 v1, 0x0

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    aput-byte v2, v0, v1

    .line 127
    const/4 v1, 0x1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    const/4 v1, 0x2

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    const/4 v1, 0x3

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    const/4 v1, 0x4

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    const/4 v1, 0x5

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    const/4 v1, 0x6

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    const/4 v1, 0x7

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    const/16 v1, 0x8

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    const/16 v1, 0x9

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    aput-byte v2, v0, v1

    .line 136
    const/16 v1, 0xa

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/16 v1, 0xb

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    const/16 v1, 0xc

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    const/16 v1, 0xd

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 140
    const/16 v1, 0xe

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 141
    const/16 v1, 0xf

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 142
    iget-byte v1, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    aput-byte v1, v0, v4

    .line 143
    aget-byte v1, v0, v4

    and-int/lit8 v1, v1, -0x80

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    iget-short v1, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    const/16 v2, 0x53fc

    if-ge v1, v2, :cond_0

    .line 144
    aget-byte v1, v0, v4

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 146
    :cond_0
    const-string v1, "WipowerDynamicParam"

    const-string v2, "mPruDynamicParam.getValue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v0
.end method

.method print()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "persist.a4wp.logging"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/wipower/WipowerDynamicParam;->sDebug:Z

    .line 105
    sget-boolean v0, Landroid/wipower/WipowerDynamicParam;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "WipowerDynamicParam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOptValidity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRectVoltage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRectCurrent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mOutputVoltage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    sget-boolean v0, Landroid/wipower/WipowerDynamicParam;->sDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "WipowerDynamicParam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOutputCurrent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTemperature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMinRectVoltageDyn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMaxRectVoltageDyn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    sget-boolean v0, Landroid/wipower/WipowerDynamicParam;->sDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "WipowerDynamicParam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSetRectVoltageDyn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAlert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mReserved1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mReserved2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    invoke-static {v2}, Landroid/wipower/WipowerDynamicParam;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    return-void
.end method

.method resetValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 152
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 153
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 154
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 155
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 156
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 157
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 158
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 159
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 160
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 161
    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 162
    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 163
    return-void
.end method

.method public setValue([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->resetValues()V

    .line 186
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mOptValidity:B

    .line 187
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 188
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectVoltage:S

    .line 189
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 190
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mRectCurrent:S

    .line 191
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 192
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputVoltage:S

    .line 193
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 194
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mOutputCurrent:S

    .line 195
    const/16 v0, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mTemperature:B

    .line 196
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 197
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMinRectVoltageDyn:S

    .line 198
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 199
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mSetRectVoltageDyn:S

    .line 200
    const/16 v0, 0xe

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 201
    iget-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mMaxRectVoltageDyn:S

    .line 203
    const/16 v0, 0x10

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mAlert:B

    .line 204
    const/16 v0, 0x11

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 205
    const/16 v0, 0x12

    aget-byte v0, p1, v0

    invoke-static {v0}, Landroid/wipower/WipowerDynamicParam;->toUnsigned(B)S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved1:S

    .line 206
    const/16 v0, 0x13

    aget-byte v0, p1, v0

    iput-byte v0, p0, Landroid/wipower/WipowerDynamicParam;->mReserved2:B

    .line 207
    const-string v0, "WipowerDynamicParam"

    const-string v1, "mPruDynamicParam.setAppValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Landroid/wipower/WipowerDynamicParam;->print()V

    .line 209
    return-void
.end method
