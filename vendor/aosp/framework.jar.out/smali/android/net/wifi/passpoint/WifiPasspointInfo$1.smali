.class final Landroid/net/wifi/passpoint/WifiPasspointInfo$1;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointInfo;
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
        "Landroid/net/wifi/passpoint/WifiPasspointInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointInfo;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 457
    new-instance v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;

    invoke-direct {v5}, Landroid/net/wifi/passpoint/WifiPasspointInfo;-><init>()V

    .line 460
    .local v5, "p":Landroid/net/wifi/passpoint/WifiPasspointInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 464
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 465
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    .line 466
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 467
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;-><init>()V

    .line 468
    .local v0, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->type:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->redirectUrl:Ljava/lang/String;

    .line 470
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    if-lez v3, :cond_1

    .line 476
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    .line 477
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 478
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 482
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 483
    new-instance v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    invoke-direct {v8}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    .line 484
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    iput v3, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    .line 487
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    if-lez v3, :cond_3

    .line 489
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    .line 490
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_3

    .line 491
    new-instance v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    invoke-direct {v7}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;-><init>()V

    .line 492
    .local v7, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->encoding:I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->realm:Ljava/lang/String;

    .line 494
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 498
    .end local v1    # "i":I
    .end local v7    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    if-lez v3, :cond_4

    .line 500
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    .line 501
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_4

    .line 502
    new-instance v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    invoke-direct {v6}, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;-><init>()V

    .line 503
    .local v6, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mcc:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mnc:Ljava/lang/String;

    .line 505
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 509
    .end local v1    # "i":I
    .end local v6    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    if-lez v3, :cond_5

    .line 511
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    .line 512
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_5

    .line 513
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 516
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 519
    if-lez v3, :cond_6

    .line 520
    new-instance v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-direct {v8}, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    .line 521
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    .line 522
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkSpeed:J

    .line 523
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkSpeed:J

    .line 524
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkLoad:I

    .line 525
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkLoad:I

    .line 526
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->lmd:I

    .line 529
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 530
    if-lez v3, :cond_7

    .line 531
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    .line 532
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v3, :cond_7

    .line 533
    new-instance v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    invoke-direct {v2}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;-><init>()V

    .line 534
    .local v2, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->proto:I

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->port:I

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->status:I

    .line 537
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 541
    .end local v1    # "i":I
    .end local v2    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 542
    if-lez v3, :cond_8

    .line 543
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    .line 544
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_8

    .line 545
    sget-object v8, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    .line 547
    .local v4, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 551
    .end local v1    # "i":I
    .end local v4    # "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    :cond_8
    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 556
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointInfo;

    move-result-object v0

    return-object v0
.end method
