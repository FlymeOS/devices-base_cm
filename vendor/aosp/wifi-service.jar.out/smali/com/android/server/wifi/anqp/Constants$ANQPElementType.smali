.class public final enum Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ANQPElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPQueryList"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 59
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPCapabilityList"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 60
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPVenueName"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 61
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPEmergencyNumber"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 62
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPNwkAuthType"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 63
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPRoamingConsortium"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 64
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPIPAddrAvailability"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 65
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPNAIRealm"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 66
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQP3GPPNetwork"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 67
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPGeoLoc"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 68
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPCivicLoc"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 69
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPLocURI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 70
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPDomName"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 71
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPEmergencyAlert"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 72
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPTDLSCap"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 73
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPEmergencyNAI"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 74
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPNeighborReport"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 75
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPVendorSpec"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 76
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSQueryList"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 77
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSCapabilityList"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 78
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSFriendlyName"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 79
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSWANMetrics"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 80
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSConnCapability"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 81
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSNAIHomeRealmQuery"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 82
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSOperatingclass"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 83
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSOSUProviders"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 84
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSIconRequest"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 85
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSIconFile"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 57
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method
