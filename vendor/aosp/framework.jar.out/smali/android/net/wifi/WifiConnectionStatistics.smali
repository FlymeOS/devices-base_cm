.class public Landroid/net/wifi/WifiConnectionStatistics;
.super Ljava/lang/Object;
.source "WifiConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConnectionStatistics$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiConnnectionStatistics"


# instance fields
.field public num24GhzConnected:I

.field public num5GhzConnected:I

.field public numAutoJoinAttempt:I

.field public numAutoRoamAttempt:I

.field public numWifiManagerJoinAttempt:I

.field public untrustedNetworkHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiNetworkConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Landroid/net/wifi/WifiConnectionStatistics$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConnectionStatistics$1;-><init>()V

    .line 132
    sput-object v0, Landroid/net/wifi/WifiConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConnectionStatistics;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiConnectionStatistics;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public incrementOrAddUntrusted(Ljava/lang/String;II)V
    .locals 2
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "connection"    # I
    .param p3, "usage"    # I

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    .line 69
    .local v0, "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    if-eqz v0, :cond_1

    .line 70
    iget v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    .line 71
    iget v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    .line 76
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 77
    iget-object v1, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_2
    return-void

    .line 74
    .end local v0    # "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    :cond_3
    new-instance v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    invoke-direct {v0, p2, p3}, Landroid/net/wifi/WifiNetworkConnectionStatistics;-><init>(II)V

    .restart local v0    # "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Connected on: 2.4Ghz="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v4, " 5Ghz="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v4, " join="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v4, "\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v4, " roam="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v4, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "Key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "Key":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    .line 92
    .local v3, "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiNetworkConnectionStatistics;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    .end local v0    # "Key":Ljava/lang/String;
    .end local v3    # "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "Key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "Key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    .line 124
    .local v2, "num":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v3, v2, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v3, v2, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 114
    .end local v0    # "Key":Ljava/lang/String;
    .end local v2    # "num":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    :cond_0
    return-void
.end method
