.class public final Landroid/nfc/NdefRecordExt;
.super Ljava/lang/Object;
.source "NdefRecordExt.java"


# static fields
.field public static final M9_DEVICE:J = 0x1L

.field public static final MX2_DEVICE:J = 0x4L

.field public static final MX3_DEVICE:J = 0x8L

.field public static final MX4_DEVICE:J = 0x18L

.field public static final MX_DEVICE:J = 0x2L

.field public static final MZ_RTD_DEVICE_CLASS:[B

.field public static final MZ_RTD_MUSIC_LOCAL:[B

.field public static final MZ_RTD_MUSIC_ONLINE:[B

.field public static final MZ_RTD_VIDEO_LOCAL:[B

.field public static final MZ_RTD_VIDEO_ONLINE:[B

.field public static final SUPPORT_MZ_NFC_P2P_FEATURE:J = 0x18L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "mz/music-online"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecordExt;->MZ_RTD_MUSIC_ONLINE:[B

    .line 39
    const-string/jumbo v0, "mz/music-local"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecordExt;->MZ_RTD_MUSIC_LOCAL:[B

    .line 41
    const-string/jumbo v0, "mz/video-online"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecordExt;->MZ_RTD_VIDEO_ONLINE:[B

    .line 43
    const-string/jumbo v0, "mz/video-local"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecordExt;->MZ_RTD_VIDEO_LOCAL:[B

    .line 48
    const-string/jumbo v0, "mz/version.profile"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecordExt;->MZ_RTD_DEVICE_CLASS:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMzDeviceClassRecord()Landroid/nfc/NdefRecord;
    .locals 12

    .prologue
    const-wide/16 v10, 0xff

    const/16 v8, 0x8

    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .local v0, "deviceClass":J
    new-array v3, v8, [B

    .line 57
    .local v3, "payload":[B
    sget-object v4, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    const-wide/16 v0, 0x8

    .line 67
    :cond_0
    :goto_0
    const/4 v4, 0x7

    and-long v6, v0, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 68
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_3

    .line 69
    rsub-int/lit8 v4, v2, 0x7

    mul-int/lit8 v5, v2, 0x8

    shr-long v6, v0, v5

    and-long/2addr v6, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v2    # "i":I
    :cond_1
    sget-object v4, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Landroid/os/BuildExt;->hasNFC()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const-wide/16 v0, 0x18

    goto :goto_0

    .line 72
    .restart local v2    # "i":I
    :cond_3
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x2

    sget-object v6, Landroid/nfc/NdefRecordExt;->MZ_RTD_DEVICE_CLASS:[B

    const/4 v7, 0x1

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/16 v9, 0x64

    aput-byte v9, v7, v8

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method
