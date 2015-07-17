.class public Lcom/android/server/wifi/WifiNetworkScoreCache;
.super Landroid/net/INetworkScoreCache$Stub;
.source "WifiNetworkScoreCache.java"


# static fields
.field public static INVALID_NETWORK_SCORE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private DBG:Z

.field private final mContext:Landroid/content/Context;

.field private final mNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x186a0

    sput v0, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    .line 40
    const-string v0, "WifiNetworkScoreCache"

    sput-object v0, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->DBG:Z

    .line 49
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;
    .locals 4
    .param p1, "network"    # Landroid/net/ScoredNetwork;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 135
    :cond_1
    iget-object v2, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_2
    iget-object v2, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v2, v2, Landroid/net/NetworkKey;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 137
    iget-object v2, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v0, v2, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    .line 138
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v1, v1, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method private buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 148
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "key":Ljava/lang/StringBuilder;
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final clearScores()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 161
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    sget-object v6, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "WifiNetworkScoreCache"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const-string v4, "  All score curves:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ScoredNetwork;

    iget-object v4, v4, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    :cond_0
    const-string v4, "  Current network scores:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 169
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 170
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;)I
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 90
    sget v2, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    .line 92
    .local v2, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    move v3, v2

    .line 107
    .end local v2    # "score":I
    .local v3, "score":I
    :goto_0
    return v3

    .line 96
    .end local v3    # "score":I
    .restart local v2    # "score":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v5

    .line 97
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    .line 98
    .local v1, "network":Landroid/net/ScoredNetwork;
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v6, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v6}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v2

    .line 100
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v4, :cond_1

    .line 101
    sget-object v4, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkScore found scored network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " score "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RSSI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    monitor-exit v5

    move v3, v2

    .line 107
    .end local v2    # "score":I
    .restart local v3    # "score":I
    goto :goto_0

    .line 106
    .end local v1    # "network":Landroid/net/ScoredNetwork;
    .end local v3    # "score":I
    .restart local v2    # "score":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;I)I
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "rssiBoost"    # I

    .prologue
    .line 112
    sget v2, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    .line 114
    .local v2, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    move v3, v2

    .line 130
    .end local v2    # "score":I
    .local v3, "score":I
    :goto_0
    return v3

    .line 118
    .end local v3    # "score":I
    .restart local v2    # "score":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v5

    .line 119
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    .line 120
    .local v1, "network":Landroid/net/ScoredNetwork;
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, v1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v6, p1, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v6, p2

    invoke-virtual {v4, v6}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v2

    .line 122
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v4, :cond_1

    .line 123
    sget-object v4, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkScore found scored network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " score "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RSSI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " boost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    monitor-exit v5

    move v3, v2

    .line 130
    .end local v2    # "score":I
    .restart local v3    # "score":I
    goto :goto_0

    .line 129
    .end local v1    # "network":Landroid/net/ScoredNetwork;
    .end local v3    # "score":I
    .restart local v2    # "score":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isScoredNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return v2

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    .line 81
    .local v1, "network":Landroid/net/ScoredNetwork;
    if-eqz v1, :cond_1

    .line 82
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 84
    .end local v1    # "network":Landroid/net/ScoredNetwork;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "network":Landroid/net/ScoredNetwork;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final updateScores(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScores list size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v4

    .line 60
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    .line 61
    .local v1, "network":Landroid/net/ScoredNetwork;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "networkKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 63
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "network":Landroid/net/ScoredNetwork;
    .end local v2    # "networkKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
