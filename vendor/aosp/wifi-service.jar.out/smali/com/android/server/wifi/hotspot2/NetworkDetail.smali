.class public Lcom/android/server/wifi/hotspot2/NetworkDetail;
.super Ljava/lang/Object;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;,
        Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    }
.end annotation


# static fields
.field private static final ANQP_DOMID_BIT:I = 0x4

.field private static final DBG:Z = true

.field private static final EID_BSSLoad:I = 0xb

.field private static final EID_ExtendedCaps:I = 0x7f

.field private static final EID_HT_OPERATION:I = 0x3d

.field private static final EID_Interworking:I = 0x6b

.field private static final EID_RoamingConsortium:I = 0x6f

.field private static final EID_SSID:I = 0x0

.field private static final EID_VHT_OPERATION:I = 0xc0

.field private static final EID_VSA:I = 0xdd

.field private static final IE:Ljava/lang/String; = "ie=000477696e670b052a00cf611e6b091e0a016104086212056f0a0e530111112222222229dd07506f9a10143a01"

.field private static final IE2:Ljava/lang/String; = "ie=000f4578616d706c65204e6574776f726b010882848b960c1218240301012a010432043048606c30140100000fac040100000fac040100000fac0100007f04000000806b091e07010203040506076c027f006f1001531122331020304050010203040506dd05506f9a1000"

.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field private static final SSID_UTF8_BIT:J = 0x1000000000000L

.field private static final TAG:Ljava/lang/String; = "NetworkDetail:"

.field private static final VDBG:Z


# instance fields
.field private final m80211McRTTResponder:Z

.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnqpDomainID:I

.field private final mAnqpOICount:I

.field private final mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field private final mBSSID:J

.field private final mCapacity:I

.field private final mCenterfreq0:I

.field private final mCenterfreq1:I

.field private final mChannelUtilization:I

.field private final mChannelWidth:I

.field private final mExtendedCapabilities:Ljava/lang/Long;

.field private final mHESSID:J

.field private final mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field private final mInternet:Z

.field private final mPrimaryFreq:I

.field private final mRoamingConsortiums:[J

.field private final mSSID:Ljava/lang/String;

.field private final mStationCount:I

.field private final mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field private final mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    .line 416
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    .line 417
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    .line 418
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    .line 419
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    .line 420
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    .line 421
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 422
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    .line 423
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 424
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 425
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 426
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    .line 427
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    .line 428
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    .line 429
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    .line 430
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    .line 431
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 432
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    .line 433
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 434
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    .line 435
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    .line 414
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 52
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "infoElements"    # Ljava/lang/String;
    .param p4, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p3, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-nez p2, :cond_0

    .line 128
    new-instance v47, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v48, "Null information element string"

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 130
    :cond_0
    const/16 v47, 0x3d

    move-object/from16 v0, p2

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v38

    .line 131
    .local v38, "separator":I
    if-gez v38, :cond_1

    .line 132
    new-instance v47, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v48, "No element separator"

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 135
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v48

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    .line 137
    add-int/lit8 v47, v38, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v47

    .line 138
    sget-object v48, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 137
    invoke-virtual/range {v47 .. v48}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 140
    .local v15, "data":Ljava/nio/ByteBuffer;
    const/16 v39, 0x0

    .line 141
    .local v39, "ssid":Ljava/lang/String;
    const/16 v40, 0x0

    .line 142
    .local v40, "ssidOctets":[B
    const/16 v41, 0x0

    .line 143
    .local v41, "stationCount":I
    const/4 v14, 0x0

    .line 144
    .local v14, "channelUtilization":I
    const/4 v9, 0x0

    .line 146
    .local v9, "capacity":I
    const/4 v8, 0x0

    .line 147
    .local v8, "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    const/16 v28, 0x0

    .line 148
    .local v28, "internet":Z
    const/16 v43, 0x0

    .line 149
    .local v43, "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    const/16 v44, 0x0

    .line 150
    .local v44, "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    const-wide/16 v24, 0x0

    .line 152
    .local v24, "hessid":J
    const/4 v7, 0x0

    .line 153
    .local v7, "anqpOICount":I
    const/16 v36, 0x0

    .line 155
    .local v36, "roamingConsortiums":[J
    const/16 v27, 0x0

    .line 156
    .local v27, "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    const/4 v6, 0x0

    .line 158
    .local v6, "anqpDomainID":I
    const/16 v23, 0x0

    .line 160
    .local v23, "extendedCapabilities":Ljava/lang/Long;
    const/16 v37, 0x0

    .line 161
    .local v37, "secondChanelOffset":I
    const/4 v13, 0x0

    .line 162
    .local v13, "channelMode":I
    const/4 v11, 0x0

    .line 163
    .local v11, "centerFreqIndex1":I
    const/4 v12, 0x0

    .line 164
    .local v12, "centerFreqIndex2":I
    const/4 v4, 0x0

    .line 166
    .local v4, "RTTResponder":Z
    const/16 v22, 0x0

    .line 169
    .end local v8    # "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .end local v23    # "extendedCapabilities":Ljava/lang/Long;
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .end local v36    # "roamingConsortiums":[J
    .end local v40    # "ssidOctets":[B
    .end local v43    # "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .end local v44    # "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .local v22, "exception":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_12

    .line 170
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 171
    .local v19, "eid":I
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 173
    .local v21, "elementLength":I
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v47

    move/from16 v0, v21

    move/from16 v1, v47

    if-le v0, v1, :cond_3

    .line 174
    new-instance v47, Ljava/lang/IllegalArgumentException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "Element length "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    .line 175
    const-string/jumbo v49, " exceeds payload length "

    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    .line 175
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v49

    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    .line 176
    const-string/jumbo v49, " @ "

    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    .line 176
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v49

    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v47
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v19    # "eid":I
    .end local v21    # "elementLength":I
    :catch_0
    move-exception v18

    .line 316
    .local v18, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "Caught "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez v40, :cond_11

    .line 318
    new-instance v47, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v48, "Malformed IE string (no SSID)"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v47

    .line 178
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "eid":I
    .restart local v21    # "elementLength":I
    :cond_3
    if-nez v19, :cond_4

    if-nez v21, :cond_4

    if-nez v40, :cond_2

    .line 185
    :cond_4
    sparse-switch v19, :sswitch_data_0

    .line 310
    :try_start_1
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v47

    add-int v47, v47, v21

    move/from16 v0, v47

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 187
    :sswitch_0
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v40, v0

    .line 188
    .local v40, "ssidOctets":[B
    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 191
    .end local v40    # "ssidOctets":[B
    :sswitch_1
    const/16 v47, 0x5

    move/from16 v0, v21

    move/from16 v1, v47

    if-eq v0, v1, :cond_5

    .line 192
    new-instance v47, Ljava/lang/IllegalArgumentException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "BSS Load element length is not 5: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 195
    :cond_5
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v47

    const v48, 0xffff

    and-int v41, v47, v48

    .line 196
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v14, v0, 0xff

    .line 197
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v47

    const v48, 0xffff

    and-int v9, v47, v48

    .line 198
    goto/16 :goto_0

    .line 200
    :sswitch_2
    move/from16 v0, v21

    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 201
    .local v20, "element":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    move-result v35

    .line 202
    .local v35, "primary_channel":I
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    and-int/lit8 v37, v47, 0x3

    .line 203
    goto/16 :goto_0

    .line 205
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    .end local v35    # "primary_channel":I
    :sswitch_3
    move/from16 v0, v21

    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 206
    .restart local v20    # "element":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v13, v0, 0xff

    .line 207
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v11, v0, 0xff

    .line 208
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v12, v0, 0xff

    .line 209
    goto/16 :goto_0

    .line 211
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    :sswitch_4
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v5, v0, 0xff

    .line 212
    .local v5, "anOptions":I
    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v47

    and-int/lit8 v48, v5, 0xf

    aget-object v8, v47, v48
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .local v8, "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    and-int/lit8 v47, v5, 0x10

    if-eqz v47, :cond_9

    const/16 v28, 0x1

    .line 215
    :goto_1
    const/16 v47, 0x3

    move/from16 v0, v21

    move/from16 v1, v47

    if-eq v0, v1, :cond_6

    const/16 v47, 0x9

    move/from16 v0, v21

    move/from16 v1, v47

    if-ne v0, v1, :cond_a

    .line 217
    :cond_6
    :try_start_2
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v45

    .line 218
    .local v45, "vinfo":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v45 .. v45}, Ljava/nio/ByteBuffer;->position()I

    move-result v47

    add-int/lit8 v47, v47, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 220
    new-instance v46, Lcom/android/server/wifi/anqp/VenueNameElement;

    sget-object v47, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    .line 222
    .local v46, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/anqp/VenueNameElement;->getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v43

    .line 223
    .local v43, "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/anqp/VenueNameElement;->getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    move-result-object v44

    .line 224
    .local v44, "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    .end local v43    # "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .end local v44    # "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .end local v45    # "vinfo":Ljava/nio/ByteBuffer;
    .end local v46    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_7
    :goto_2
    const/16 v47, 0x7

    move/from16 v0, v21

    move/from16 v1, v47

    if-eq v0, v1, :cond_8

    const/16 v47, 0x9

    move/from16 v0, v21

    move/from16 v1, v47

    if-ne v0, v1, :cond_2

    .line 233
    :cond_8
    :try_start_3
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v48, 0x6

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v24

    goto/16 :goto_0

    .line 213
    :cond_9
    const/16 v28, 0x0

    goto :goto_1

    .line 228
    :cond_a
    const/16 v47, 0x1

    move/from16 v0, v21

    move/from16 v1, v47

    if-eq v0, v1, :cond_7

    const/16 v47, 0x7

    move/from16 v0, v21

    move/from16 v1, v47

    if-eq v0, v1, :cond_7

    .line 229
    new-instance v47, Ljava/lang/IllegalArgumentException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "Bad Interworking element length: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 237
    .end local v5    # "anOptions":I
    .end local v8    # "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    :sswitch_5
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v7, v0, 0xff

    .line 239
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    .line 240
    .local v29, "oi12Length":I
    and-int/lit8 v30, v29, 0xf

    .line 241
    .local v30, "oi1Length":I
    ushr-int/lit8 v47, v29, 0x4

    and-int/lit8 v31, v47, 0xf

    .line 242
    .local v31, "oi2Length":I
    add-int/lit8 v47, v21, -0x2

    sub-int v47, v47, v30

    sub-int v32, v47, v31

    .line 243
    .local v32, "oi3Length":I
    const/16 v33, 0x0

    .line 244
    .local v33, "oiCount":I
    if-lez v30, :cond_b

    .line 245
    const/16 v33, 0x1

    .line 246
    if-lez v31, :cond_b

    .line 247
    add-int/lit8 v33, v33, 0x1

    .line 248
    if-lez v32, :cond_b

    .line 249
    add-int/lit8 v33, v33, 0x1

    .line 253
    :cond_b
    move/from16 v0, v33

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .line 254
    .local v36, "roamingConsortiums":[J
    if-lez v30, :cond_c

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v47, v0

    if-lez v47, :cond_c

    .line 256
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v47

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v48

    .line 255
    const/16 v47, 0x0

    aput-wide v48, v36, v47

    .line 258
    :cond_c
    if-lez v31, :cond_d

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_d

    .line 260
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v47

    move/from16 v1, v31

    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v48

    .line 259
    const/16 v47, 0x1

    aput-wide v48, v36, v47

    .line 262
    :cond_d
    if-lez v32, :cond_2

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v47, v0

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_2

    .line 264
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v48

    .line 263
    const/16 v47, 0x2

    aput-wide v48, v36, v47

    goto/16 :goto_0

    .line 268
    .end local v29    # "oi12Length":I
    .end local v30    # "oi1Length":I
    .end local v31    # "oi2Length":I
    .end local v32    # "oi3Length":I
    .end local v33    # "oiCount":I
    .end local v36    # "roamingConsortiums":[J
    :sswitch_6
    move/from16 v0, v21

    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 269
    .restart local v20    # "element":Ljava/nio/ByteBuffer;
    const/16 v47, 0x5

    move/from16 v0, v21

    move/from16 v1, v47

    if-lt v0, v1, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v47

    const v48, 0x109a6f50

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_2

    .line 270
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 271
    .local v26, "hsConf":I
    shr-int/lit8 v47, v26, 0x4

    and-int/lit8 v47, v47, 0xf

    packed-switch v47, :pswitch_data_0

    .line 279
    sget-object v27, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 282
    .local v27, "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :goto_3
    and-int/lit8 v47, v26, 0x4

    if-eqz v47, :cond_2

    .line 283
    const/16 v47, 0x7

    move/from16 v0, v21

    move/from16 v1, v47

    if-ge v0, v1, :cond_e

    .line 284
    new-instance v47, Ljava/lang/IllegalArgumentException;

    .line 285
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "HS20 indication element too short: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 284
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 273
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :pswitch_0
    sget-object v27, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .restart local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    goto :goto_3

    .line 276
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :pswitch_1
    sget-object v27, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .restart local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    goto :goto_3

    .line 287
    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v47

    const v48, 0xffff

    and-int v6, v47, v48

    goto/16 :goto_0

    .line 292
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    .end local v26    # "hsConf":I
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :sswitch_7
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 294
    .restart local v20    # "element":Ljava/nio/ByteBuffer;
    sget-object v47, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v47

    move/from16 v1, v21

    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 299
    .local v23, "extendedCapabilities":Ljava/lang/Long;
    const/16 v47, 0x9

    move/from16 v0, v21

    move/from16 v1, v47

    if-ge v0, v1, :cond_f

    .line 300
    const/4 v4, 0x0

    .line 301
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    move-result v47

    add-int v47, v47, v21

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 305
    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    move-result v47

    add-int/lit8 v47, v47, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v47

    and-int/lit8 v47, v47, 0x40

    if-eqz v47, :cond_10

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 320
    .end local v19    # "eid":I
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    .end local v21    # "elementLength":I
    .end local v23    # "extendedCapabilities":Ljava/lang/Long;
    .restart local v18    # "e":Ljava/lang/RuntimeException;
    :cond_11
    move-object/from16 v22, v18

    .line 323
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "exception":Ljava/lang/RuntimeException;
    :cond_12
    if-eqz v40, :cond_16

    .line 324
    if-eqz v23, :cond_14

    .line 325
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    const-wide/high16 v50, 0x1000000000000L

    and-long v48, v48, v50

    const-wide/16 v50, 0x0

    cmp-long v47, v48, v50

    if-eqz v47, :cond_13

    const/16 v42, 0x1

    .line 335
    .local v42, "strictUTF8":Z
    :goto_4
    sget-object v47, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v47 .. v47}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v17

    .line 337
    .local v17, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_4
    invoke-static/range {v40 .. v40}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v47

    move-object/from16 v0, v17

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v16

    .line 338
    .local v16, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v39

    .line 344
    .end local v16    # "decoded":Ljava/nio/CharBuffer;
    .end local v39    # "ssid":Ljava/lang/String;
    :goto_5
    if-nez v39, :cond_16

    .line 345
    if-eqz v42, :cond_15

    if-eqz v22, :cond_15

    .line 346
    new-instance v47, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v48, "Failed to decode SSID in dubious IE string"

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 325
    .end local v17    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v42    # "strictUTF8":Z
    .restart local v39    # "ssid":Ljava/lang/String;
    :cond_13
    const/16 v42, 0x0

    .restart local v42    # "strictUTF8":Z
    goto :goto_4

    .line 324
    .end local v42    # "strictUTF8":Z
    :cond_14
    const/16 v42, 0x0

    .restart local v42    # "strictUTF8":Z
    goto :goto_4

    .line 340
    .restart local v17    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :catch_1
    move-exception v10

    .line 341
    .local v10, "cce":Ljava/nio/charset/CharacterCodingException;
    const/16 v39, 0x0

    goto :goto_5

    .line 349
    .end local v10    # "cce":Ljava/nio/charset/CharacterCodingException;
    .end local v39    # "ssid":Ljava/lang/String;
    :cond_15
    new-instance v39, Ljava/lang/String;

    sget-object v47, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 354
    .end local v17    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v42    # "strictUTF8":Z
    :cond_16
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    .line 355
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    .line 356
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    .line 357
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    .line 358
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    .line 359
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 360
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    .line 361
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 362
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 363
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    .line 364
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    .line 365
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    .line 366
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    .line 367
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    .line 368
    invoke-static/range {p3 .. p3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseANQPLines(Ljava/util/List;)Ljava/util/Map;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    .line 370
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    .line 372
    if-eqz v13, :cond_18

    .line 374
    add-int/lit8 v47, v13, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 375
    add-int/lit8 v47, v11, -0x24

    mul-int/lit8 v47, v47, 0x5

    move/from16 v0, v47

    add-int/lit16 v0, v0, 0x143c

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 376
    const/16 v47, 0x1

    move/from16 v0, v47

    if-le v13, v0, :cond_17

    .line 377
    add-int/lit8 v47, v12, -0x24

    mul-int/lit8 v47, v47, 0x5

    move/from16 v0, v47

    add-int/lit16 v0, v0, 0x143c

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    .line 399
    :goto_6
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    .line 125
    return-void

    .line 379
    :cond_17
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    goto :goto_6

    .line 383
    :cond_18
    if-eqz v37, :cond_1b

    .line 384
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    .line 385
    const/16 v47, 0x1

    move/from16 v0, v37

    move/from16 v1, v47

    if-ne v0, v1, :cond_19

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, 0x14

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 397
    :goto_7
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    goto :goto_6

    .line 387
    :cond_19
    const/16 v47, 0x3

    move/from16 v0, v37

    move/from16 v1, v47

    if-ne v0, v1, :cond_1a

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, -0x14

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    goto :goto_7

    .line 390
    :cond_1a
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 391
    const-string/jumbo v47, "NetworkDetail:"

    const-string/jumbo v48, "Error on secondChanelOffset"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 394
    :cond_1b
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    .line 395
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    goto :goto_7

    .line 225
    .restart local v5    # "anOptions":I
    .restart local v8    # "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .restart local v19    # "eid":I
    .restart local v21    # "elementLength":I
    .restart local v22    # "exception":Ljava/lang/RuntimeException;
    .restart local v39    # "ssid":Ljava/lang/String;
    :catch_2
    move-exception v34

    .local v34, "pe":Ljava/net/ProtocolException;
    goto/16 :goto_2

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x3d -> :sswitch_2
        0x6b -> :sswitch_4
        0x6f -> :sswitch_5
        0x7f -> :sswitch_7
        0xc0 -> :sswitch_3
        0xdd -> :sswitch_6
    .end sparse-switch

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "plLength"    # I

    .prologue
    .line 408
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 409
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 410
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 411
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 629
    new-instance v1, Landroid/net/wifi/ScanResult;

    invoke-direct {v1}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 630
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    const-string/jumbo v2, "wing"

    iput-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 631
    const-string/jumbo v2, "610408"

    iput-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 632
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, "ie=000f4578616d706c65204e6574776f726b010882848b960c1218240301012a010432043048606c30140100000fac040100000fac040100000fac0100007f04000000806b091e07010203040506076c027f006f1001531122331020304050010203040506dd05506f9a1000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 633
    .local v0, "nwkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 628
    return-void
.end method

.method private static parseMac(Ljava/lang/String;)J
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 444
    const-wide/16 v2, 0x0

    .line 445
    .local v2, "mac":J
    const/4 v0, 0x0

    .line 446
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 447
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v10}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v4

    .line 448
    .local v4, "nibble":I
    if-ltz v4, :cond_0

    .line 449
    const/4 v5, 0x4

    shl-long v6, v2, v5

    int-to-long v8, v4

    or-long v2, v6, v8

    .line 450
    add-int/lit8 v0, v0, 0x1

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v4    # "nibble":I
    :cond_1
    const/16 v5, 0xc

    if-lt v0, v5, :cond_2

    and-int/lit8 v5, v0, 0x1

    if-ne v5, v10, :cond_3

    .line 454
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad MAC address: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 456
    :cond_3
    return-wide v2
.end method

.method public static toMACString(J)Ljava/lang/String;
    .locals 12
    .param p0, "mac"    # J

    .prologue
    const/4 v10, 0x0

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 608
    .local v0, "first":Z
    const/4 v1, 0x5

    .local v1, "n":I
    :goto_0
    if-ltz v1, :cond_1

    .line 609
    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 614
    :goto_1
    const-string/jumbo v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    mul-int/lit8 v5, v1, 0x8

    ushr-long v6, p0, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 612
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 616
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 566
    if-ne p0, p1, :cond_0

    .line 567
    return v1

    .line 569
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 570
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 573
    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 575
    .local v0, "that":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    return-object v0
.end method

.method public getAnqpDomainID()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    return v0
.end method

.method public getAnqpOICount()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    return v0
.end method

.method public getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    return-object v0
.end method

.method public getBSSID()J
    .locals 2

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    return-wide v0
.end method

.method public getBSSIDString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    return v0
.end method

.method public getCenterfreq0()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    return v0
.end method

.method public getCenterfreq1()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    return v0
.end method

.method public getChannelUtilization()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    return v0
.end method

.method public getExtendedCapabilities()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    return-object v0
.end method

.method public getHESSID()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    return-wide v0
.end method

.method public getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    return-object v0
.end method

.method public getRoamingConsortiums()[J
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getStationCount()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    return v0
.end method

.method public getTrimmedSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    return-object v1

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getVenueGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    return-object v0
.end method

.method public getVenueType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    return-object v0
.end method

.method public has80211uInfo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 460
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInterworking()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public is80211McResponderSupport()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    return v0
.end method

.method public isInternet()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    return v0
.end method

.method public isInterworking()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSID_UTF8()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 561
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/high16 v4, 0x1000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 596
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 597
    const-string/jumbo v0, "\'%s\':%012x (%012x)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_0
    return-object v0

    .line 598
    :cond_0
    const-string/jumbo v0, "\'%s\':%012x"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 585
    const-string/jumbo v0, "NetworkInfo{mSSID=\'%s\', mHESSID=%x, mBSSID=%x, mStationCount=%d, mChannelUtilization=%d, mCapacity=%d, mAnt=%s, mInternet=%s, mVenueGroup=%s, mVenueType=%s, mHSRelease=%s, mAnqpDomainID=%d, mAnqpOICount=%d, mRoamingConsortiums=%s}"

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    .line 589
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 590
    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 591
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 592
    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString([J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 585
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
