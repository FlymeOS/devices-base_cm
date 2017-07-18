.class public final enum Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
.super Ljava/lang/Enum;
.source "RequestDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

.field public static final enum SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v1, "SPPVersion"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 18
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v1, "RedirectURI"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 19
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v1, "RequestReason"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 20
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v1, "SessionID"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 21
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v1, "SupportedVersions"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 22
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string/jumbo v1, "SupportedMOs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->$VALUES:[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->$VALUES:[Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    return-object v0
.end method
