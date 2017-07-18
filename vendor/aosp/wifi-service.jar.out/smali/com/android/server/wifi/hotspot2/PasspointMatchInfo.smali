.class public Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
.super Ljava/lang/Object;
.source "PasspointMatchInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final IPPROTO_ESP:I = 0x32

.field private static final IPPROTO_ICMP:I = 0x1

.field private static final IPPROTO_TCP:I = 0x6

.field private static final IPPROTO_UDP:I = 0x11

.field private static final sAntScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIP4Scores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIP6Scores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPortScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

.field private final mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field private final mScanDetail:Lcom/android/server/wifi/ScanDetail;

.field private final mScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 25
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 24
    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    .line 27
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 26
    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    .line 40
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "tcpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 v2, 0x8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v2, 0x1bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 v2, 0x3e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/16 v2, 0x6bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v1, "udpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v2, 0x13c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v2, 0x1194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 18
    .param p1, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .line 92
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 96
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_7

    .line 97
    const/16 v7, 0x64

    .line 106
    .local v7, "score":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-eq v11, v12, :cond_9

    const/16 v11, 0x32

    :goto_1
    add-int/2addr v7, v11

    .line 110
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInternet()Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x14

    :goto_2
    add-int/2addr v7, v11

    .line 114
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getStationCount()I

    move-result v11

    rsub-int v11, v11, 0xc8

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelUtilization()I

    move-result v12

    rsub-int v12, v12, 0xff

    .line 114
    mul-int/2addr v11, v12

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCapacity()I

    move-result v12

    .line 114
    mul-int/2addr v11, v12

    ushr-int/lit8 v11, v11, 0x1a

    add-int/2addr v7, v11

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 120
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v7, v11

    .line 123
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    .line 125
    .local v2, "anqp":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-eqz v2, :cond_6

    .line 126
    sget-object v11, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/anqp/HSWanMetricsElement;

    .line 128
    .local v10, "wm":Lcom/android/server/wifi/anqp/HSWanMetricsElement;
    if-eqz v10, :cond_4

    .line 129
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getStatus()Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Up:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    if-ne v11, v12, :cond_3

    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->isCapped()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 130
    :cond_3
    add-int/lit16 v7, v7, -0x3e8

    .line 141
    :cond_4
    :goto_3
    sget-object v11, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;

    .line 143
    .local v6, "ipa":Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
    if-eqz v6, :cond_5

    .line 144
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->getV4Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 145
    .local v3, "as14":Ljava/lang/Integer;
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->getV6Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 146
    .local v4, "as16":Ljava/lang/Integer;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 147
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 149
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 153
    .end local v3    # "as14":Ljava/lang/Integer;
    .end local v4    # "as16":Ljava/lang/Integer;
    :cond_5
    sget-object v11, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    .line 155
    .local v5, "cce":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
    if-eqz v5, :cond_6

    .line 156
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->protoScore(Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;)I

    move-result v11

    shr-int/lit8 v11, v11, 0x3

    const/16 v12, -0xa

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 160
    .end local v5    # "cce":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
    .end local v6    # "ipa":Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
    .end local v10    # "wm":Lcom/android/server/wifi/anqp/HSWanMetricsElement;
    :cond_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScore:I

    .line 90
    return-void

    .line 99
    .end local v2    # "anqp":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .end local v7    # "score":I
    :cond_7
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_8

    .line 100
    const/4 v7, 0x0

    .restart local v7    # "score":I
    goto/16 :goto_0

    .line 103
    .end local v7    # "score":I
    :cond_8
    const/16 v7, -0x3e8

    .restart local v7    # "score":I
    goto/16 :goto_0

    .line 107
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 111
    :cond_a
    const/16 v11, -0x14

    goto/16 :goto_2

    .line 133
    .restart local v2    # "anqp":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .restart local v10    # "wm":Lcom/android/server/wifi/anqp/HSWanMetricsElement;
    :cond_b
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getDlSpeed()J

    move-result-wide v12

    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getDlLoad()I

    move-result v11

    rsub-int v11, v11, 0xff

    int-to-long v14, v11

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x8

    mul-long/2addr v12, v14

    .line 134
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getUlSpeed()J

    move-result-wide v14

    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getUlLoad()I

    move-result v11

    rsub-int v11, v11, 0xff

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const-wide/16 v16, 0x2

    mul-long v14, v14, v16

    .line 133
    add-long v8, v12, v14

    .line 135
    .local v8, "scaledSpeed":J
    int-to-long v12, v7

    const-wide/32 v14, 0xf32fdc0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    const/16 v11, 0x17

    ushr-long/2addr v14, v11

    add-long/2addr v12, v14

    long-to-int v7, v12

    goto/16 :goto_3

    .line 146
    .end local v8    # "scaledSpeed":J
    .restart local v3    # "as14":Ljava/lang/Integer;
    .restart local v4    # "as16":Ljava/lang/Integer;
    .restart local v6    # "ipa":Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 147
    :cond_d
    const/4 v11, 0x1

    goto :goto_5
.end method

.method private static protoScore(Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;)I
    .locals 9
    .param p0, "cce"    # Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    .prologue
    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, "score":I
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;->getStatusList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "tuple$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;

    .line 192
    .local v5, "tuple":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getStatus()Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    move-result-object v7

    sget-object v8, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    if-ne v7, v8, :cond_1

    .line 193
    const/4 v4, 0x1

    .line 195
    .local v4, "sign":I
    :goto_1
    const/4 v0, 0x1

    .line 196
    .local v0, "elementScore":I
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getProtocol()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 197
    const/4 v0, 0x1

    .line 209
    :cond_0
    :goto_2
    mul-int v7, v0, v4

    add-int/2addr v3, v7

    goto :goto_0

    .line 193
    .end local v0    # "elementScore":I
    .end local v4    # "sign":I
    :cond_1
    const/4 v4, -0x1

    .restart local v4    # "sign":I
    goto :goto_1

    .line 199
    .restart local v0    # "elementScore":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getProtocol()I

    move-result v7

    const/16 v8, 0x32

    if-ne v7, v8, :cond_3

    .line 200
    const/4 v0, 0x5

    goto :goto_2

    .line 203
    :cond_3
    sget-object v7, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getProtocol()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 204
    .local v2, "protoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 206
    .local v1, "portScore":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 211
    .end local v0    # "elementScore":I
    .end local v1    # "portScore":Ljava/lang/Integer;
    .end local v2    # "protoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "sign":I
    .end local v5    # "tuple":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
    :cond_5
    return v3
.end method


# virtual methods
.method public compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I
    .locals 2
    .param p1, "that"    # Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScore()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 216
    if-ne p0, p1, :cond_0

    .line 217
    const/4 v1, 0x1

    return v1

    .line 219
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 220
    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 223
    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    .line 225
    .local v0, "that":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getHomeSP()Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getHomeSP()Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 225
    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getPasspointMatch()Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getPasspointMatch()Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 225
    :cond_3
    return v1
.end method

.method public getHomeSP()Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v0
.end method

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v0

    return-object v0
.end method

.method public getPasspointMatch()Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v0
.end method

.method public getScanDetail()Lcom/android/server/wifi/ScanDetail;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScore:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->hashCode()I

    move-result v0

    .line 233
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 234
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    .line 235
    return v0

    .line 232
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0

    .line 234
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PasspointMatchInfo{, mPasspointMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ", mNetworkInfo="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, ", mHomeSP="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const/16 v1, 0x7d

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
