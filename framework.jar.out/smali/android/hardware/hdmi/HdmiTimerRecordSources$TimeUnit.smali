.class Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeUnit"
.end annotation


# instance fields
.field protected final mHour:I

.field protected final mMinute:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    .line 192
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    .line 193
    return-void
.end method

.method protected static toBcdByte(I)B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 202
    div-int/lit8 v2, p0, 0xa

    rem-int/lit8 v1, v2, 0xa

    .line 203
    .local v1, "digitOfTen":I
    rem-int/lit8 v0, p0, 0xa

    .line 204
    .local v0, "digitOfOne":I
    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v2, v0

    int-to-byte v2, v2

    return v2
.end method


# virtual methods
.method protected toByteArray([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 196
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result v0

    aput-byte v0, p1, p2

    .line 197
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result v1

    aput-byte v1, p1, v0

    .line 198
    const/4 v0, 0x2

    return v0
.end method
