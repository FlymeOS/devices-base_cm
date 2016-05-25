.class public final Landroid/net/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RTN_THROW:I = 0x9

.field public static final RTN_UNICAST:I = 0x1

.field public static final RTN_UNREACHABLE:I = 0x7


# instance fields
.field private final mDestination:Landroid/net/IpPrefix;

.field private final mGateway:Ljava/net/InetAddress;

.field private final mHasGateway:Z

.field private final mInterface:Ljava/lang/String;

.field private final mIsHost:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 475
    new-instance v0, Landroid/net/RouteInfo$1;

    invoke-direct {v0}, Landroid/net/RouteInfo$1;-><init>()V

    sput-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, v0, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;I)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 3
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sparse-switch p4, :sswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown route type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :sswitch_0
    if-nez p1, :cond_0

    .line 123
    if-eqz p2, :cond_6

    .line 124
    instance-of v1, p2, Ljava/net/Inet4Address;

    if-eqz v1, :cond_5

    .line 125
    new-instance p1, Landroid/net/IpPrefix;

    .end local p1    # "destination":Landroid/net/IpPrefix;
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p1, v1, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 138
    .restart local p1    # "destination":Landroid/net/IpPrefix;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_7

    .line 140
    sget-object p2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 145
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    .line 147
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_8

    instance-of v0, p2, Ljava/net/Inet6Address;

    if-nez v0, :cond_8

    .line 151
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address family mismatch in RouteInfo constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_5
    new-instance p1, Landroid/net/IpPrefix;

    .end local p1    # "destination":Landroid/net/IpPrefix;
    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p1, v1, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .restart local p1    # "destination":Landroid/net/IpPrefix;
    goto :goto_0

    .line 131
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_7
    sget-object p2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    goto :goto_1

    .line 153
    :cond_8
    iput-object p1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    .line 154
    iput-object p2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    .line 155
    iput-object p3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    .line 156
    iput p4, p0, Landroid/net/RouteInfo;->mType:I

    .line 157
    invoke-direct {p0}, Landroid/net/RouteInfo;->isHost()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    .line 158
    return-void

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/LinkAddress;

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1, v0, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 171
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 174
    return-void

    .line 171
    :cond_0
    new-instance v0, Landroid/net/IpPrefix;

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "gateway"    # Ljava/net/InetAddress;

    .prologue
    const/4 v1, 0x0

    .line 212
    move-object v0, v1

    check-cast v0, Landroid/net/IpPrefix;

    invoke-direct {p0, v0, p1, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private isHost()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .locals 1
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .locals 3
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "gateway"    # Ljava/net/InetAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 252
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 254
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    const/16 v2, 0x20

    invoke-direct {v1, p0, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    const/16 v2, 0x80

    invoke-direct {v1, p0, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .locals 5
    .param p1, "dest"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/net/RouteInfo;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 403
    :cond_1
    return-object v0

    .line 391
    :cond_2
    const/4 v0, 0x0

    .line 393
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 394
    .local v2, "route":Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v3}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v3}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    iget-object v4, v2, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 400
    :cond_4
    invoke-virtual {v2, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    if-ne p0, p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 434
    :cond_1
    instance-of v3, p1, Landroid/net/RouteInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 436
    check-cast v0, Landroid/net/RouteInfo;

    .line 438
    .local v0, "target":Landroid/net/RouteInfo;
    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/net/RouteInfo;->mType:I

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getType()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDestination()Landroid/net/IpPrefix;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    return-object v0
.end method

.method public getDestinationLinkAddress()Landroid/net/LinkAddress;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getGateway()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Landroid/net/RouteInfo;->mType:I

    return v0
.end method

.method public hasGateway()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x29

    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    mul-int/lit8 v1, v1, 0x47

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2f

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x43

    goto :goto_1
.end method

.method public isDefaultRoute()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 321
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHostRoute()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    return v0
.end method

.method public isIPv4Default()Z
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIPv6Default()Z
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "destination"    # Ljava/net/InetAddress;

    .prologue
    .line 370
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 376
    :goto_0
    return v1

    .line 373
    :cond_0
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v1

    invoke-static {p1, v1}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 376
    .local v0, "dstNet":Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    const-string v0, ""

    .line 411
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_0
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unreachable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_1
    :goto_0
    return-object v0

    .line 414
    :cond_2
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " throw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_4
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_5
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/RouteInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 465
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 466
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 467
    .local v0, "gatewayBytes":[B
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 468
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    return-void

    .line 466
    .end local v0    # "gatewayBytes":[B
    :cond_0
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_0
.end method
