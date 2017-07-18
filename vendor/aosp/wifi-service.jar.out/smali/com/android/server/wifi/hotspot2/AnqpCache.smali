.class public Lcom/android/server/wifi/hotspot2/AnqpCache;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    }
.end annotation


# static fields
.field private static final CACHE_RECHECK:J = 0xea60L

.field private static final STANDARD_ESS:Z = true


# instance fields
.field private final mANQPCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;",
            "Lcom/android/server/wifi/hotspot2/ANQPData;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSweep:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    .line 21
    return-void
.end method


# virtual methods
.method public clear(ZZ)V
    .locals 14
    .param p1, "all"    # Z
    .param p2, "debug"    # Z

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 161
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 162
    if-eqz p1, :cond_1

    .line 163
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 164
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v8

    .line 159
    return-void

    .line 166
    :cond_1
    :try_start_1
    iget-wide v10, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    cmp-long v7, v4, v10

    if-lez v7, :cond_0

    .line 167
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 161
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 173
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    .line 174
    .local v2, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    if-eqz p2, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Retired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 179
    .end local v2    # "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    :cond_5
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last sweep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ago."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anqpData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .line 187
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0    # "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    return-void
.end method

.method public getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;
    .locals 5
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    const/4 v2, 0x0

    .line 151
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .line 152
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    monitor-exit v3

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/ANQPData;->isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :goto_0
    return-object v0

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    move-object v0, v2

    .line 156
    goto :goto_0
.end method

.method public initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z
    .locals 9
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 119
    invoke-static {p1, v5}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .line 121
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .line 123
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 125
    return v5

    .line 128
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string/jumbo v4, "BSSID %012x already in cache: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 130
    return v8

    .line 121
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .line 142
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 143
    :try_start_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    .line 144
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 136
    return-void

    .line 142
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
