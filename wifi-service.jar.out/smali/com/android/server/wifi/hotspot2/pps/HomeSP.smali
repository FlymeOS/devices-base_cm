.class public Lcom/android/server/wifi/hotspot2/pps/HomeSP;
.super Ljava/lang/Object;
.source "HomeSP.java"


# instance fields
.field private final mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

.field private final mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

.field private final mFQDN:Ljava/lang/String;

.field private final mFriendlyName:Ljava/lang/String;

.field private final mIconURL:Ljava/lang/String;

.field private final mMatchAllOIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMatchAnyOIs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mOtherHomePartners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoamingConsortiums:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSSIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    .locals 5
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p7, "friendlyName"    # Ljava/lang/String;
    .param p8, "iconURL"    # Ljava/lang/String;
    .param p9, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local p4, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p6, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v2, "otherPartners":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "otherPartner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "otherPartner":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v0    # "otherPartner":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    .line 58
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    .line 59
    new-instance v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    invoke-static {p2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    .line 60
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    .line 61
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    .line 62
    iput-object p6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    .line 63
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    .line 65
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    .line 50
    return-void
.end method

.method private imsiMatch(Ljava/util/List;Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;)Ljava/lang/String;
    .locals 7
    .param p2, "plmnElement"    # Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 211
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 212
    :cond_0
    return-object v6

    .line 211
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->getPlmns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    invoke-virtual {p2}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->getPlmns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "network$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/anqp/CellularNetwork;

    .line 215
    .local v3, "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mccMnc$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, "mccMnc":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 218
    return-object v0

    .line 222
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "mccMnc$iterator":Ljava/util/Iterator;
    .end local v3    # "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    :cond_4
    return-object v6
.end method

.method private imsiMatch(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "mccMnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/wifi/IMSIParameter;->matchesMccMnc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "imsi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "imsi":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    return-object v0

    .line 241
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "imsi$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private imsiMatch(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "fqdn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 226
    if-nez p1, :cond_0

    .line 227
    return-object v1

    .line 229
    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/hotspot2/Utils;->getMccMnc(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public deepEquals(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    const/4 v0, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/Utils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 270
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    .line 283
    if-ne p0, p1, :cond_0

    .line 284
    const/4 v1, 0x1

    return v1

    .line 285
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 286
    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    move-object v0, p1

    .line 289
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 290
    .local v0, "that":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getClone(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->hasDisregardPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    .line 71
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    .line 73
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    .line 74
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    .line 75
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    .line 76
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    .line 77
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    .line 78
    new-instance v9, Lcom/android/server/wifi/hotspot2/pps/Credential;

    iget-object v10, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-direct {v9, v10, p1}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Lcom/android/server/wifi/hotspot2/pps/Credential;Ljava/lang/String;)V

    .line 70
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V

    return-object v0

    .line 81
    :cond_0
    return-object p0
.end method

.method public getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    return-object v0
.end method

.method public getFQDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchAllOIs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    return-object v0
.end method

.method public getMatchAnyOIs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    return-object v0
.end method

.method public getOtherHomePartners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    return-object v0
.end method

.method public getRoamingConsortiums()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSSIDs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 7
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p3, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/SIMAccessor;",
            ")",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "anqpElementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/server/wifi/SIMAccessor;->getMatchingImsis(Lcom/android/server/wifi/IMSIParameter;)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->matchSP(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Ljava/util/List;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v3

    .line 93
    .local v3, "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v3, v4, :cond_1

    .line 94
    :cond_0
    return-object v3

    .line 98
    :cond_1
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;

    .line 97
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 100
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .end local v3    # "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_2
    return-object v3

    .line 104
    .restart local v3    # "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/anqp/NAIRealmElement;

    .line 106
    .local v2, "naiRealmElement":Lcom/android/server/wifi/anqp/NAIRealmElement;
    if-eqz v2, :cond_4

    .line 107
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/anqp/NAIRealmElement;->match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    move-result v0

    .line 110
    .local v0, "authMatch":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " match on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    const-string/jumbo v6, ": "

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    const-string/jumbo v6, ", auth "

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/AuthMatch;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    .line 115
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v4

    .line 108
    .end local v0    # "authMatch":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "authMatch":I
    goto :goto_0

    .line 117
    :cond_5
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_6

    .line 119
    return-object v3

    .line 123
    :cond_6
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .end local v3    # "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_7
    return-object v3
.end method

.method public matchSP(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Ljava/util/List;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 22
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "anqpElementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .local p3, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 133
    .local v7, "hessid":Ljava/lang/Long;
    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    move-result-wide v18

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-nez v17, :cond_1

    .line 134
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "match SSID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v17

    .line 139
    .end local v7    # "hessid":Ljava/lang/Long;
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v3, "anOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getRoamingConsortiums()[J

    move-result-object v17

    if-eqz v17, :cond_2

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getRoamingConsortiums()[J

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-wide v10, v18, v17

    .line 143
    .local v10, "oi":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 146
    .end local v10    # "oi":J
    :cond_2
    if-eqz p2, :cond_8

    .line 147
    sget-object v17, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;

    .line 149
    :goto_1
    if-eqz v12, :cond_3

    .line 150
    invoke-virtual {v12}, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;->getOIs()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_3
    const/4 v13, 0x0

    .line 158
    .local v13, "roamingMatch":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 159
    const/4 v9, 0x1

    .line 161
    .local v9, "matchesAll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "spOI$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 162
    .local v14, "spOI":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 163
    const/4 v9, 0x0

    .line 167
    .end local v14    # "spOI":J
    :cond_5
    if-eqz v9, :cond_9

    .line 168
    const/4 v13, 0x1

    .line 180
    .end local v9    # "matchesAll":Z
    .end local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_6
    if-nez v13, :cond_7

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 186
    :cond_7
    :goto_2
    if-nez p2, :cond_d

    .line 187
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v17

    .line 148
    .end local v13    # "roamingMatch":Z
    :cond_8
    const/4 v12, 0x0

    .local v12, "rcElement":Lcom/android/server/wifi/anqp/RoamingConsortiumElement;
    goto :goto_1

    .line 171
    .end local v12    # "rcElement":Lcom/android/server/wifi/anqp/RoamingConsortiumElement;
    .restart local v9    # "matchesAll":Z
    .restart local v13    # "roamingMatch":Z
    .restart local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_9
    if-nez p2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpOICount()I

    move-result v17

    if-nez v17, :cond_b

    .line 172
    :cond_a
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v17

    .line 175
    :cond_b
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v17

    .line 183
    .end local v9    # "matchesAll":Z
    .end local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_c
    const/4 v13, 0x1

    goto :goto_2

    .line 191
    :cond_d
    sget-object v17, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/anqp/DomainNameElement;

    .line 193
    .local v6, "domainNameElement":Lcom/android/server/wifi/anqp/DomainNameElement;
    if-eqz v6, :cond_10

    .line 194
    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/DomainNameElement;->getDomains()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "domain$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 195
    .local v4, "domain":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, "anLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v8

    .line 197
    .local v8, "match":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    sget-object v17, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-object/from16 v0, v17

    if-eq v8, v0, :cond_f

    .line 198
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v17

    .line 201
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    .line 202
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v17

    .line 207
    .end local v2    # "anLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "domain":Ljava/lang/String;
    .end local v5    # "domain$iterator":Ljava/util/Iterator;
    .end local v8    # "match":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    :cond_10
    if-eqz v13, :cond_11

    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    :goto_3
    return-object v17

    :cond_11
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x7d

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HomeSP{mSSIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string/jumbo v1, ", mFQDN=\'"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string/jumbo v1, ", mDomainMatcher="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string/jumbo v1, ", mRoamingConsortiums={"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    const-string/jumbo v1, ", mMatchAnyOIs={"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    const-string/jumbo v1, ", mMatchAllOIs={"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    const-string/jumbo v1, ", mCredential="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    const-string/jumbo v1, ", mFriendlyName=\'"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string/jumbo v1, ", mIconURL=\'"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
