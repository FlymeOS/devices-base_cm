.class final Landroid/net/wifi/RttManager$ParcelableRttResults$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/RttManager$ParcelableRttResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    .local v1, "num":I
    if-nez v1, :cond_0

    .line 257
    new-instance v2, Landroid/net/wifi/RttManager$ParcelableRttResults;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    .line 279
    :goto_0
    return-object v2

    .line 260
    :cond_0
    new-array v3, v1, [Landroid/net/wifi/RttManager$RttResult;

    .line 261
    .local v3, "results":[Landroid/net/wifi/RttManager$RttResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 262
    new-instance v4, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    aput-object v4, v3, v0

    .line 263
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 264
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 265
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->requestType:I

    .line 266
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 267
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 268
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->rssi_spread:I

    .line 269
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->tx_rate:I

    .line 270
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/RttManager$RttResult;->rtt_ns:J

    .line 271
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/RttManager$RttResult;->rtt_sd_ns:J

    .line 272
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/RttManager$RttResult;->rtt_spread_ns:J

    .line 273
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distance_cm:I

    .line 274
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distance_sd_cm:I

    .line 275
    aget-object v4, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distance_spread_cm:I

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_1
    new-instance v2, Landroid/net/wifi/RttManager$ParcelableRttResults;

    invoke-direct {v2, v3}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    .line 279
    .local v2, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 283
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object v0

    return-object v0
.end method
