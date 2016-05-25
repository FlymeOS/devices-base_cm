.class public Landroid/net/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 82
    return-void
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 110
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 111
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 137
    return-object p0
.end method

.method public build()Landroid/net/NetworkRequest;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 93
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 94
    new-instance v1, Landroid/net/NetworkRequest;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    return-object v1
.end method

.method public removeCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 121
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 122
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    .prologue
    .line 147
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    .line 148
    return-object p0
.end method

.method public setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "downKbps"    # I

    .prologue
    .line 162
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 163
    return-object p0
.end method

.method public setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "upKbps"    # I

    .prologue
    .line 155
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 156
    return-object p0
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 182
    return-object p0
.end method
