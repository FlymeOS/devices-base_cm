.class Lcom/android/server/net/DnsServerRepository;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"


# static fields
.field public static final NUM_CURRENT_SERVERS:I = 0x3

.field public static final NUM_SERVERS:I = 0xc

.field public static final TAG:Ljava/lang/String; = "DnsServerRepository"


# instance fields
.field private mAllServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    .line 276
    return-void
.end method

.method private declared-synchronized updateCurrentServers()Z
    .locals 10

    .prologue
    monitor-enter p0

    .line 337
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 338
    .local v4, "now":J
    const/4 v0, 0x0

    .line 341
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .end local v0    # "changed":Z
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 342
    const/16 v7, 0xc

    if-ge v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/DnsServerEntry;

    iget-wide v8, v7, Lcom/android/server/net/DnsServerEntry;->expiry:J

    cmp-long v7, v8, v4

    if-gez v7, :cond_1

    .line 343
    :cond_0
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/net/DnsServerEntry;

    .line 344
    .local v6, "removed":Lcom/android/server/net/DnsServerEntry;
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 341
    .local v0, "changed":Z
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 354
    .end local v0    # "changed":Z
    .end local v6    # "removed":Lcom/android/server/net/DnsServerEntry;
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/DnsServerEntry;

    .line 355
    .local v1, "entry":Lcom/android/server/net/DnsServerEntry;
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 356
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v8, v1, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    or-int/2addr v0, v7

    .restart local v0    # "changed":Z
    goto :goto_1

    .end local v0    # "changed":Z
    .end local v1    # "entry":Lcom/android/server/net/DnsServerEntry;
    :cond_2
    monitor-exit p0

    .line 361
    return v0

    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized updateExistingEntry(Ljava/net/InetAddress;J)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "expiry"    # J

    .prologue
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/DnsServerEntry;

    .line 329
    .local v0, "existing":Lcom/android/server/net/DnsServerEntry;
    if-eqz v0, :cond_0

    .line 330
    iput-wide p2, v0, Lcom/android/server/net/DnsServerEntry;->expiry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 333
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .end local v0    # "existing":Lcom/android/server/net/DnsServerEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addServers(J[Ljava/lang/String;)Z
    .locals 11
    .param p1, "lifetime"    # J
    .param p3, "addresses"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 296
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 297
    .local v6, "now":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p1

    add-long v4, v6, v8

    .line 301
    .local v4, "expiry":J
    const/4 v8, 0x0

    array-length v9, p3

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v1, p3, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .local v1, "addressString":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 309
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_2
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/net/DnsServerRepository;->updateExistingEntry(Ljava/net/InetAddress;J)Z

    move-result v10

    if-nez v10, :cond_0

    .line 312
    cmp-long v10, v4, v6

    if-lez v10, :cond_0

    .line 313
    new-instance v2, Lcom/android/server/net/DnsServerEntry;

    invoke-direct {v2, v0, v4, v5}, Lcom/android/server/net/DnsServerEntry;-><init>(Ljava/net/InetAddress;J)V

    .line 314
    .local v2, "entry":Lcom/android/server/net/DnsServerEntry;
    iget-object v10, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v10, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "entry":Lcom/android/server/net/DnsServerEntry;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 321
    .end local v1    # "addressString":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 324
    invoke-direct {p0}, Lcom/android/server/net/DnsServerRepository;->updateCurrentServers()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    monitor-exit p0

    return v8

    .end local v4    # "expiry":J
    .end local v6    # "now":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setDnsServersOn(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 283
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
