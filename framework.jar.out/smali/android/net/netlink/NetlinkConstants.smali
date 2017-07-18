.class public Landroid/net/netlink/NetlinkConstants;
.super Ljava/lang/Object;
.source "NetlinkConstants.java"


# static fields
.field public static final NLA_ALIGNTO:I = 0x4

.field public static final NLMSG_DONE:S = 0x3s

.field public static final NLMSG_ERROR:S = 0x2s

.field public static final NLMSG_MAX_RESERVED:S = 0xfs

.field public static final NLMSG_NOOP:S = 0x1s

.field public static final NLMSG_OVERRUN:S = 0x4s

.field public static final RTM_DELADDR:S = 0x15s

.field public static final RTM_DELLINK:S = 0x11s

.field public static final RTM_DELNEIGH:S = 0x1ds

.field public static final RTM_DELROUTE:S = 0x19s

.field public static final RTM_DELRULE:S = 0x21s

.field public static final RTM_GETADDR:S = 0x16s

.field public static final RTM_GETLINK:S = 0x12s

.field public static final RTM_GETNEIGH:S = 0x1es

.field public static final RTM_GETROUTE:S = 0x1as

.field public static final RTM_GETRULE:S = 0x22s

.field public static final RTM_NEWADDR:S = 0x14s

.field public static final RTM_NEWLINK:S = 0x10s

.field public static final RTM_NEWNDUSEROPT:S = 0x44s

.field public static final RTM_NEWNEIGH:S = 0x1cs

.field public static final RTM_NEWROUTE:S = 0x18s

.field public static final RTM_NEWRULE:S = 0x20s

.field public static final RTM_SETLINK:S = 0x13s


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alignedLengthOf(I)I
    .locals 1
    .param p0, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    if-gtz p0, :cond_0

    return v0

    .line 47
    :cond_0
    add-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static final alignedLengthOf(S)I
    .locals 2
    .param p0, "length"    # S

    .prologue
    .line 41
    const v1, 0xffff

    and-int v0, p0, v1

    .line 42
    .local v0, "intLength":I
    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    return v1
.end method

.method public static hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 63
    if-nez p0, :cond_0

    const-string/jumbo v0, "(null)"

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 64
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 58
    if-nez p0, :cond_0

    const-string/jumbo v0, "(null)"

    return-object v0

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForAddressFamily(I)Ljava/lang/String;
    .locals 1
    .param p0, "family"    # I

    .prologue
    .line 51
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "AF_INET"

    return-object v0

    .line 52
    :cond_0
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "AF_INET6"

    return-object v0

    .line 53
    :cond_1
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "AF_NETLINK"

    return-object v0

    .line 54
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForNlMsgType(S)Ljava/lang/String;
    .locals 2
    .param p0, "nlm_type"    # S

    .prologue
    .line 94
    sparse-switch p0, :sswitch_data_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown RTM type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :sswitch_0
    const-string/jumbo v0, "NLMSG_NOOP"

    return-object v0

    .line 96
    :sswitch_1
    const-string/jumbo v0, "NLMSG_ERROR"

    return-object v0

    .line 97
    :sswitch_2
    const-string/jumbo v0, "NLMSG_DONE"

    return-object v0

    .line 98
    :sswitch_3
    const-string/jumbo v0, "NLMSG_OVERRUN"

    return-object v0

    .line 99
    :sswitch_4
    const-string/jumbo v0, "RTM_NEWLINK"

    return-object v0

    .line 100
    :sswitch_5
    const-string/jumbo v0, "RTM_DELLINK"

    return-object v0

    .line 101
    :sswitch_6
    const-string/jumbo v0, "RTM_GETLINK"

    return-object v0

    .line 102
    :sswitch_7
    const-string/jumbo v0, "RTM_SETLINK"

    return-object v0

    .line 103
    :sswitch_8
    const-string/jumbo v0, "RTM_NEWADDR"

    return-object v0

    .line 104
    :sswitch_9
    const-string/jumbo v0, "RTM_DELADDR"

    return-object v0

    .line 105
    :sswitch_a
    const-string/jumbo v0, "RTM_GETADDR"

    return-object v0

    .line 106
    :sswitch_b
    const-string/jumbo v0, "RTM_NEWROUTE"

    return-object v0

    .line 107
    :sswitch_c
    const-string/jumbo v0, "RTM_DELROUTE"

    return-object v0

    .line 108
    :sswitch_d
    const-string/jumbo v0, "RTM_GETROUTE"

    return-object v0

    .line 109
    :sswitch_e
    const-string/jumbo v0, "RTM_NEWNEIGH"

    return-object v0

    .line 110
    :sswitch_f
    const-string/jumbo v0, "RTM_DELNEIGH"

    return-object v0

    .line 111
    :sswitch_10
    const-string/jumbo v0, "RTM_GETNEIGH"

    return-object v0

    .line 112
    :sswitch_11
    const-string/jumbo v0, "RTM_NEWRULE"

    return-object v0

    .line 113
    :sswitch_12
    const-string/jumbo v0, "RTM_DELRULE"

    return-object v0

    .line 114
    :sswitch_13
    const-string/jumbo v0, "RTM_GETRULE"

    return-object v0

    .line 115
    :sswitch_14
    const-string/jumbo v0, "RTM_NEWNDUSEROPT"

    return-object v0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1c -> :sswitch_e
        0x1d -> :sswitch_f
        0x1e -> :sswitch_10
        0x20 -> :sswitch_11
        0x21 -> :sswitch_12
        0x22 -> :sswitch_13
        0x44 -> :sswitch_14
    .end sparse-switch
.end method
