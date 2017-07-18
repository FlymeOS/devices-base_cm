.class public Lcom/android/server/wifi/anqp/HSWanMetricsElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSWanMetricsElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;
    }
.end annotation


# instance fields
.field private final mCapped:Z

.field private final mDlLoad:I

.field private final mDlSpeed:J

.field private final mLMD:I

.field private final mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

.field private final mSymmetric:Z

.field private final mUlLoad:I

.field private final mUlSpeed:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    .line 32
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    .line 33
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad WAN metrics length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 37
    .local v0, "status":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->values()[Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    move-result-object v1

    and-int/lit8 v4, v0, 0x3

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    .line 38
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mSymmetric:Z

    .line 39
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mCapped:Z

    .line 40
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlSpeed:J

    .line 41
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlSpeed:J

    .line 42
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlLoad:I

    .line 43
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlLoad:I

    .line 44
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mLMD:I

    .line 29
    return-void

    :cond_1
    move v1, v3

    .line 38
    goto :goto_0

    :cond_2
    move v2, v3

    .line 39
    goto :goto_1
.end method


# virtual methods
.method public getDlLoad()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlLoad:I

    return v0
.end method

.method public getDlSpeed()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlSpeed:J

    return-wide v0
.end method

.method public getLMD()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mLMD:I

    return v0
.end method

.method public getStatus()Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    return-object v0
.end method

.method public getUlLoad()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlLoad:I

    return v0
.end method

.method public getUlSpeed()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlSpeed:J

    return-wide v0
.end method

.method public isCapped()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mCapped:Z

    return v0
.end method

.method public isSymmetric()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mSymmetric:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 81
    const-string/jumbo v0, "HSWanMetrics{mStatus=%s, mSymmetric=%s, mCapped=%s, mDlSpeed=%d, mUlSpeed=%d, mDlLoad=%f, mUlLoad=%f, mLMD=%d}"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mSymmetric:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mCapped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 84
    iget-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 85
    iget v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlLoad:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 86
    iget v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlLoad:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 87
    iget v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mLMD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
