.class public final Landroid/bluetooth/BluetoothAvrcpInfo;
.super Ljava/lang/Object;
.source "BluetoothAvrcpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAvrcpInfo$1;
    }
.end annotation


# static fields
.field public static final ALBUM_NAME:Ljava/lang/String; = "album_name"

.field public static final ALBUM_NAME_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final ARTIST_NAME:Ljava/lang/String; = "artist_name"

.field public static final ARTIST_NAME_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final ATTRIB_EQUALIZER_STATUS:B = 0x1t

.field public static final ATTRIB_REPEAT_STATUS:B = 0x2t

.field public static final ATTRIB_SCAN_STATUS:B = 0x4t

.field public static final ATTRIB_SHUFFLE_STATUS:B = 0x3t

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:I = 0x2

.field public static final BTRC_FEAT_BROWSE:I = 0x4

.field public static final BTRC_FEAT_METADATA:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothAvrcpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EQUALIZER_STATUS:Ljava/lang/String; = "equalizer_status"

.field public static final EQUALIZER_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final EQUALIZER_STATUS_OFF:B = 0x1t

.field public static final EQUALIZER_STATUS_ON:B = 0x2t

.field public static final GENRE:Ljava/lang/String; = "genre"

.field public static final GENRE_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final MEDIA_ATTRIBUTE_ALBUM_NAME:I = 0x3

.field public static final MEDIA_ATTRIBUTE_ALL:I = 0x0

.field public static final MEDIA_ATTRIBUTE_ARTIST_NAME:I = 0x2

.field public static final MEDIA_ATTRIBUTE_GENRE:I = 0x6

.field public static final MEDIA_ATTRIBUTE_PLAYING_TIME:I = 0x7

.field public static final MEDIA_ATTRIBUTE_TITLE:I = 0x1

.field public static final MEDIA_ATTRIBUTE_TOTAL_TRACK_NUMBER:I = 0x5

.field public static final MEDIA_ATTRIBUTE_TRACK_NUMBER:I = 0x4

.field public static final MEDIA_PLAYSTATUS_ALL:I = 0x8

.field public static final MEDIA_PLAYSTATUS_SONG_CUR_POS:I = 0xa

.field public static final MEDIA_PLAYSTATUS_SONG_PLAY_STATUS:I = 0xb

.field public static final MEDIA_PLAYSTATUS_SONG_TOTAL_LEN:I = 0x9

.field public static final PERMISSION_ACCESS:Ljava/lang/String; = "android.permission.ACCESS_BLUETOOTH_AVRCP_CT_DATA"

.field public static final PLAYING_TIME:Ljava/lang/String; = "playing_time"

.field public static final PLAYING_TIME_INVALID:I = 0xff

.field public static final PLAY_STATUS:Ljava/lang/String; = "play_status"

.field public static final PLAY_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final REPEAT_STATUS:Ljava/lang/String; = "repeat_status"

.field public static final REPEAT_STATUS_ALL_TRACK_REPEAT:B = 0x3t

.field public static final REPEAT_STATUS_GROUP_REPEAT:B = 0x4t

.field public static final REPEAT_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final REPEAT_STATUS_OFF:B = 0x1t

.field public static final REPEAT_STATUS_SINGLE_TRACK_REPEAT:B = 0x2t

.field public static final SCAN_STATUS:Ljava/lang/String; = "scan_status"

.field public static final SCAN_STATUS_ALL_TRACK_SCAN:B = 0x2t

.field public static final SCAN_STATUS_GROUP_SCAN:B = 0x3t

.field public static final SCAN_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final SCAN_STATUS_OFF:B = 0x1t

.field public static final SHUFFLE_STATUS:Ljava/lang/String; = "shuffle_status"

.field public static final SHUFFLE_STATUS_ALL_TRACK_SHUFFLE:B = 0x2t

.field public static final SHUFFLE_STATUS_GROUP_SHUFFLE:B = 0x3t

.field public static final SHUFFLE_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final SHUFFLE_STATUS_OFF:B = 0x1t

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final TOTAL_TRACKS:Ljava/lang/String; = "total_tracks"

.field public static final TOTAL_TRACKS_INVALID:I = 0xff

.field public static final TOTAL_TRACK_TIME:Ljava/lang/String; = "total_track_time"

.field public static final TOTAL_TRACK_TIME_INVALID:I = 0xff

.field public static final TRACK_NUM:Ljava/lang/String; = "track_num"

.field public static final TRACK_NUM_INVALID:I = 0xff


# instance fields
.field private TAG:Ljava/lang/String;

.field private numSupportedPlayerAttribValues:[B

.field private supportedPlayerAtribValues:[B

.field private supportedPlayerAttributes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAvrcpInfo$1;-><init>()V

    .line 181
    sput-object v0, Landroid/bluetooth/BluetoothAvrcpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 192
    const-string/jumbo v0, "content://com.android.bluetooth.avrcp/btavrcp_ct"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothAvrcpInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "BluetoothAvrcpInfo"

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    .line 61
    iput-object v1, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    .line 62
    iput-object v1, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v6, "BluetoothAvrcpInfo"

    iput-object v6, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->TAG:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "attribs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "numAttribVal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "attribVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 88
    .local v3, "numAttributes":Ljava/lang/Byte;
    const/4 v4, 0x0

    .local v4, "xx":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    if-ge v4, v6, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v5, 0x0

    .local v5, "zz":I
    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    if-ge v5, v6, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v5    # "zz":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [B

    iput-object v6, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    .line 100
    const/4 v5, 0x0

    .restart local v5    # "zz":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 101
    iget-object v7, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v7, v5

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [B

    iput-object v6, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    .line 105
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 106
    iget-object v7, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v7, v5

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 109
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [B

    iput-object v6, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    .line 110
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 111
    iget-object v7, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v7, v5

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 80
    :cond_4
    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 4
    .param p1, "attribIds"    # [B
    .param p2, "numValueSupported"    # [B
    .param p3, "valuesSupported"    # [B

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v2, "BluetoothAvrcpInfo"

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->TAG:Ljava/lang/String;

    .line 65
    array-length v0, p1

    .line 66
    .local v0, "numAttributes":I
    const/4 v1, 0x0

    .line 67
    .local v1, "zz":I
    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    .line 68
    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    .line 69
    array-length v2, p3

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    .line 70
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    .line 72
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v3, p2, v1

    aput-byte v3, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 75
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    aget-byte v3, p3, v1

    aput-byte v3, v2, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getNumSupportedPlayerAttributeVal(B)B
    .locals 2
    .param p1, "playerAttributeId"    # B

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "zz":I
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 141
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v1, v1, v0

    return v1

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getSupportedPlayerAttributeVlaues(B)[B
    .locals 7
    .param p1, "playerAttributeId"    # B

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "index":I
    const/4 v4, 0x0

    .line 150
    .local v4, "zz":I
    const/4 v0, 0x0

    .line 151
    .local v0, "attributeFound":Z
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 152
    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    aget-byte v5, v5, v4

    if-ne p1, v5, :cond_1

    .line 153
    const/4 v0, 0x1

    .line 159
    :cond_0
    if-eqz v0, :cond_3

    .line 160
    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v5, v5, v4

    new-array v2, v5, [B

    .line 161
    .local v2, "supportedValues":[B
    const/4 v3, 0x0

    .local v3, "xx":I
    :goto_1
    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v5, v5, v4

    if-ge v3, v5, :cond_2

    .line 162
    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    add-int v6, v3, v1

    aget-byte v5, v5, v6

    aput-byte v5, v2, v3

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    .end local v2    # "supportedValues":[B
    .end local v3    # "xx":I
    :cond_1
    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v5, v5, v4

    add-int/2addr v1, v5

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    .restart local v2    # "supportedValues":[B
    .restart local v3    # "xx":I
    :cond_2
    return-object v2

    .line 166
    .end local v2    # "supportedValues":[B
    .end local v3    # "xx":I
    :cond_3
    const/4 v5, 0x0

    new-array v5, v5, [B

    return-object v5
.end method

.method public getSupportedPlayerAttributes()[B
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    return-object v0
.end method

.method public putPlayerSettingAttributes([B[B[B)V
    .locals 4
    .param p1, "attribIds"    # [B
    .param p2, "numValueSupported"    # [B
    .param p3, "valuesSupported"    # [B

    .prologue
    .line 169
    array-length v0, p1

    .line 170
    .local v0, "numAttributes":I
    const/4 v1, 0x0

    .line 171
    .local v1, "zz":I
    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    .line 172
    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    .line 173
    array-length v2, p3

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    .line 174
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 175
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    .line 176
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v3, p2, v1

    aput-byte v3, v2, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 179
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    aget-byte v3, p3, v1

    aput-byte v3, v2, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    array-length v3, v3

    int-to-byte v0, v3

    .line 124
    .local v0, "numSuppAttributes":B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    const/4 v1, 0x0

    .local v1, "xx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 126
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAttributes:[B

    aget-byte v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    const/4 v2, 0x0

    .local v2, "zz":I
    :goto_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->numSupportedPlayerAttribValues:[B

    aget-byte v3, v3, v1

    if-ge v2, v3, :cond_0

    .line 129
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpInfo;->supportedPlayerAtribValues:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "zz":I
    :cond_1
    return-void
.end method
