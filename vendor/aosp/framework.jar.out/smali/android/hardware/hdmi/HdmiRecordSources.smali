.class public final Landroid/hardware/hdmi/HdmiRecordSources;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordSources$1;,
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;,
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;,
        Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;,
        Landroid/hardware/hdmi/HdmiRecordSources$DvbData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AtscData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AribData;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;,
        Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    }
.end annotation


# static fields
.field public static final ANALOGUE_BROADCAST_TYPE_CABLE:I = 0x0

.field public static final ANALOGUE_BROADCAST_TYPE_SATELLITE:I = 0x1

.field public static final ANALOGUE_BROADCAST_TYPE_TERRESTRIAL:I = 0x2

.field public static final BROADCAST_SYSTEM_NTSC_M:I = 0x3

.field public static final BROADCAST_SYSTEM_PAL_BG:I = 0x0

.field public static final BROADCAST_SYSTEM_PAL_DK:I = 0x8

.field public static final BROADCAST_SYSTEM_PAL_I:I = 0x4

.field public static final BROADCAST_SYSTEM_PAL_M:I = 0x2

.field public static final BROADCAST_SYSTEM_PAL_OTHER_SYSTEM:I = 0x1f

.field public static final BROADCAST_SYSTEM_SECAM_BG:I = 0x6

.field public static final BROADCAST_SYSTEM_SECAM_DK:I = 0x5

.field public static final BROADCAST_SYSTEM_SECAM_L:I = 0x7

.field public static final BROADCAST_SYSTEM_SECAM_LP:I = 0x1

.field private static final CHANNEL_NUMBER_FORMAT_1_PART:I = 0x1

.field private static final CHANNEL_NUMBER_FORMAT_2_PART:I = 0x2

.field public static final DIGITAL_BROADCAST_TYPE_ARIB:I = 0x0

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_BS:I = 0x8

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_CS:I = 0x9

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_T:I = 0xa

.field public static final DIGITAL_BROADCAST_TYPE_ATSC:I = 0x1

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_CABLE:I = 0x10

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_SATELLITE:I = 0x11

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_TERRESTRIAL:I = 0x12

.field public static final DIGITAL_BROADCAST_TYPE_DVB:I = 0x2

.field public static final DIGITAL_BROADCAST_TYPE_DVB_C:I = 0x18

.field public static final DIGITAL_BROADCAST_TYPE_DVB_S:I = 0x19

.field public static final DIGITAL_BROADCAST_TYPE_DVB_S2:I = 0x1a

.field public static final DIGITAL_BROADCAST_TYPE_DVB_T:I = 0x1b

.field private static final RECORD_SOURCE_TYPE_ANALOGUE_SERVICE:I = 0x3

.field private static final RECORD_SOURCE_TYPE_DIGITAL_SERVICE:I = 0x2

.field private static final RECORD_SOURCE_TYPE_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final RECORD_SOURCE_TYPE_EXTERNAL_PLUG:I = 0x4

.field private static final RECORD_SOURCE_TYPE_OWN_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiRecordSources"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(III[BI)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # I

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->threeFieldsToSixBytes(III[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(S[BI)I
    .locals 1
    .param p0, "x0"    # S
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    move-result v0

    return v0
.end method

.method public static checkRecordSource([B)Z
    .locals 5
    .param p0, "recordSource"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 760
    aget-byte v1, p0, v3

    .line 761
    .local v1, "recordSourceType":I
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .line 762
    .local v0, "extraDataSize":I
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 774
    :cond_0
    :goto_0
    return v2

    .line 764
    :pswitch_0
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 766
    :pswitch_1
    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 768
    :pswitch_2
    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 770
    :pswitch_3
    if-eq v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 772
    :pswitch_4
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static ofAnalogue(III)Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;
    .locals 3
    .param p0, "broadcastType"    # I
    .param p1, "frequency"    # I
    .param p2, "broadcastSystem"    # I

    .prologue
    .line 583
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 585
    :cond_0
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Broadcast type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Broadcast type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_1
    if-ltz p1, :cond_2

    const v0, 0xffff

    if-le p1, v0, :cond_3

    .line 589
    :cond_2
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid frequency value[0x0000-0xFFFF]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid frequency value[0x0000-0xFFFF]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_3
    if-ltz p2, :cond_4

    const/16 v0, 0x1f

    if-le p2, v0, :cond_5

    .line 596
    :cond_4
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Broadcast system:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Broadcast system:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_5
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0
.end method

.method public static ofArib(ILandroid/hardware/hdmi/HdmiRecordSources$AribData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "aribType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$AribData;

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 415
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ARIB type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :sswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static ofAtsc(ILandroid/hardware/hdmi/HdmiRecordSources$AtscData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "atscType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$AtscData;

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 446
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ATSC type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ATSC type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :sswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ofDigitalChannelId(ILandroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "broadcastSystem"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 383
    :pswitch_0
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid broadcast type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid broadcast system value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :pswitch_1
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static ofDvb(ILandroid/hardware/hdmi/HdmiRecordSources$DvbData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "dvbType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$DvbData;

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 479
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DVB type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DVB type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :sswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public static ofExternalPhysicalAddress(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
    .locals 3
    .param p0, "physicalAddress"    # I

    .prologue
    .line 702
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 703
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid physical address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid physical address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0
.end method

.method public static ofExternalPlug(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;
    .locals 3
    .param p0, "plugNumber"    # I

    .prologue
    .line 658
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    .line 659
    :cond_0
    const-string v0, "HdmiRecordSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid plug number[1-255]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid plug number[1-255]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0
.end method

.method public static ofOwnSource()Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$1;)V

    return-object v0
.end method

.method private static shortToByteArray(S[BI)I
    .locals 2
    .param p0, "value"    # S
    .param p1, "byteArray"    # [B
    .param p2, "index"    # I

    .prologue
    .line 749
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 750
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 751
    const/4 v0, 0x2

    return v0
.end method

.method private static threeFieldsToSixBytes(III[BI)I
    .locals 2
    .param p0, "first"    # I
    .param p1, "second"    # I
    .param p2, "third"    # I
    .param p3, "data"    # [B
    .param p4, "index"    # I

    .prologue
    .line 742
    int-to-short v0, p0

    invoke-static {v0, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 743
    int-to-short v0, p1

    add-int/lit8 v1, p4, 0x2

    invoke-static {v0, p3, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 744
    int-to-short v0, p2

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 745
    const/4 v0, 0x6

    return v0
.end method
