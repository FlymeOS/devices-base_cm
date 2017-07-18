.class Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
.super Ljava/lang/Object;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Label"
.end annotation


# instance fields
.field private final mMatch:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

.field private final mSubDomains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    .locals 1
    .param p1, "labelString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getSubLabel(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V
    .locals 0
    .param p1, "labels"    # Ljava/util/Iterator;
    .param p2, "match"    # Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V
    .locals 1
    .param p1, "match"    # Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mMatch:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    .line 27
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    .line 25
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;)V
    .locals 0
    .param p1, "match"    # Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;-><init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    return-void
.end method

.method private addDomain(Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V
    .locals 4
    .param p2, "match"    # Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "labels":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "labelName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    new-instance v1, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;-><init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    .line 34
    .local v1, "subLabel":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-direct {v1, p1, p2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    .line 30
    .end local v1    # "subLabel":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    new-instance v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-direct {v3, p2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;-><init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getSubLabel(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    .locals 1
    .param p1, "labelString"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    return-object v0
.end method

.method private toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 51
    const-string/jumbo v2, ".{"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-direct {v2, p1}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 56
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;>;"
    :cond_0
    const/16 v2, 0x7d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 58
    :cond_1
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mMatch:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public getMatch()Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->mMatch:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->toString(Ljava/lang/StringBuilder;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
