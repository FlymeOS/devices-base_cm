.class public Lcom/android/server/wifi/anqp/CellularNetwork;
.super Ljava/lang/Object;
.source "CellularNetwork.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PLMNListType:I


# instance fields
.field private final mMccMnc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "plmnCount"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    .line 19
    :goto_0
    if-lez p1, :cond_2

    .line 20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v11, :cond_0

    .line 21
    new-instance v5, Ljava/net/ProtocolException;

    const-string/jumbo v6, "Truncated PLMN info"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_0
    new-array v4, v11, [B

    .line 24
    .local v4, "plmn":[B
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 26
    aget-byte v5, v4, v8

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xf00

    .line 27
    aget-byte v6, v4, v8

    and-int/lit16 v6, v6, 0xf0

    .line 26
    or-int/2addr v5, v6

    .line 28
    aget-byte v6, v4, v9

    and-int/lit8 v6, v6, 0xf

    .line 26
    or-int v0, v5, v6

    .line 30
    .local v0, "mcc":I
    aget-byte v5, v4, v10

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    .line 31
    aget-byte v6, v4, v10

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 30
    or-int v2, v5, v6

    .line 33
    .local v2, "mnc":I
    aget-byte v5, v4, v9

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v3, v5, 0xf

    .line 34
    .local v3, "n2":I
    const/16 v5, 0xf

    if-eq v3, v5, :cond_1

    .line 35
    const-string/jumbo v5, "%03x%03x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "mccMnc":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 36
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "%03x%02x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "mccMnc":Ljava/lang/String;
    goto :goto_1

    .line 16
    .end local v0    # "mcc":I
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "mnc":I
    .end local v3    # "n2":I
    .end local v4    # "plmn":[B
    :cond_2
    return-void
.end method

.method public static buildCellularNetwork(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/CellularNetwork;
    .locals 4
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 46
    .local v0, "iei":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v2, v3, 0x7f

    .line 48
    .local v2, "plmnLen":I
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    const/4 v3, 0x0

    return-object v3

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 54
    .local v1, "plmnCount":I
    new-instance v3, Lcom/android/server/wifi/anqp/CellularNetwork;

    invoke-direct {v3, v1, p0}, Lcom/android/server/wifi/anqp/CellularNetwork;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v3
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PLMN:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mccMnc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "mccMnc":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 68
    .end local v0    # "mccMnc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
