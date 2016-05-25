.class final Lcom/android/server/hdmi/HdmiUtils;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# static fields
.field private static final ADDRESS_TO_TYPE:[I

.field private static final DEFAULT_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xf

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TV"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Recorder_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Recorder_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Tuner_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Playback_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AudioSystem"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Tuner_2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Tuner_3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Playback_2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Recorder_3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Tuner_4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Playback_3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Reserved_1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Reserved_2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Secondary_TV"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    return-void

    .line 32
    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x4
        0x5
        0x3
        0x3
        0x4
        0x1
        0x3
        0x4
        0x2
        0x2
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asImmutableList([I)Ljava/util/List;
    .locals 6
    .param p0, "is"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 165
    .local v4, "type":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v4    # "type":I
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .locals 3
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p1, "expectedAddress"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 137
    .local v0, "src":I
    if-eq v0, p1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source [Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    .line 141
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 8
    .param p0, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p1, "newPowerStatus"    # I

    .prologue
    .line 290
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    return-object v0
.end method

.method static getDefaultDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # I

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static getTypeFromAddress(I)I
    .locals 1
    .param p0, "address"    # I

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    aget v0, v0, p0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static isAffectingActiveRoutingPath(II)Z
    .locals 4
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xc

    if-gt v0, v3, :cond_0

    .line 243
    shr-int v3, p1, v0

    and-int/lit8 v2, v3, 0xf

    .line 244
    .local v2, "nibble":I
    if-eqz v2, :cond_1

    .line 245
    const v3, 0xfff0

    shl-int v1, v3, v0

    .line 246
    .local v1, "mask":I
    and-int/2addr p1, v1

    .line 250
    .end local v1    # "mask":I
    .end local v2    # "nibble":I
    :cond_0
    if-nez p1, :cond_2

    .line 251
    const/4 v3, 0x1

    .line 253
    :goto_1
    return v3

    .line 242
    .restart local v2    # "nibble":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 253
    .end local v2    # "nibble":I
    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v3

    goto :goto_1
.end method

.method static isInActiveRoutingPath(II)Z
    .locals 4
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    .prologue
    .line 270
    const/16 v0, 0xc

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 271
    shr-int v3, p0, v0

    and-int/lit8 v1, v3, 0xf

    .line 272
    .local v1, "nibbleActive":I
    if-nez v1, :cond_1

    .line 283
    .end local v1    # "nibbleActive":I
    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 275
    .restart local v1    # "nibbleActive":I
    :cond_1
    shr-int v3, p1, v0

    and-int/lit8 v2, v3, 0xf

    .line 276
    .local v2, "nibbleNew":I
    if-eqz v2, :cond_0

    .line 279
    if-eq v1, v2, :cond_2

    .line 280
    const/4 v3, 0x0

    goto :goto_1

    .line 270
    :cond_2
    add-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method static isValidAddress(I)Z
    .locals 1
    .param p0, "address"    # I

    .prologue
    .line 79
    if-ltz p0, :cond_0

    const/16 v0, 0xe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static languageToInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "normalized":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method static mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 213
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    aget-byte v2, v2, v1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-object v1
.end method

.method static threeBytesToInt([B)I
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 198
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([B)I
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 177
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static twoBytesToInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 188
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static verifyAddressType(II)V
    .locals 4
    .param p0, "logicalAddress"    # I
    .param p1, "deviceType"    # I

    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    .line 121
    .local v0, "actualDeviceType":I
    if-eq v0, p1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device type missmatch:[Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    return-void
.end method
