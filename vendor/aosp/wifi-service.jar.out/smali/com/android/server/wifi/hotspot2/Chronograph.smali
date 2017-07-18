.class public Lcom/android/server/wifi/hotspot2/Chronograph;
.super Ljava/lang/Thread;
.source "Chronograph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    }
.end annotation


# instance fields
.field private final mAlarmEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecalculate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    .line 33
    const-string/jumbo v0, "Chronograph"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->setName(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->setDaemon(Z)V

    .line 31
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/android/server/wifi/hotspot2/Chronograph;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;-><init>()V

    .line 127
    .local v0, "chronograph":Lcom/android/server/wifi/hotspot2/Chronograph;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->start()V

    .line 129
    new-instance v2, Lcom/android/server/wifi/hotspot2/Chronograph$1;

    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/Chronograph$1;-><init>()V

    .line 134
    const-string/jumbo v3, "3s"

    .line 129
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Lcom/android/server/wifi/hotspot2/Chronograph$2;

    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/Chronograph$2;-><init>()V

    .line 141
    const-string/jumbo v3, "7.5s"

    .line 136
    const-wide/16 v4, 0x1d4c

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, "key":Ljava/lang/Object;
    new-instance v2, Lcom/android/server/wifi/hotspot2/Chronograph$3;

    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/Chronograph$3;-><init>()V

    .line 148
    const-string/jumbo v3, "10.00s"

    .line 143
    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/Chronograph;->cancelAlarm(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Z)V

    .line 152
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->join()V

    .line 125
    return-void
.end method


# virtual methods
.method public addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "interval"    # J
    .param p3, "handler"    # Lcom/android/server/wifi/hotspot2/AlarmHandler;
    .param p4, "token"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, v4, p1

    .line 39
    .local v2, "at":J
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    monitor-enter v7

    .line 40
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;-><init>(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)V

    .line 41
    .local v1, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 42
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 44
    .restart local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    .line 48
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 49
    return-object v1

    .line 39
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    .end local v1    # "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4
.end method

.method public cancelAlarm(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    if-eq v2, v3, :cond_1

    .line 55
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Not an alarm key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    .line 60
    .local v0, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    monitor-enter v3

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->-get0(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    if-nez v1, :cond_2

    monitor-exit v3

    .line 63
    return v6

    .line 65
    :cond_2
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    .line 67
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 68
    return v7

    :cond_3
    monitor-exit v3

    .line 70
    return v6

    .line 60
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public run()V
    .locals 20

    .prologue
    .line 79
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 80
    .local v12, "now":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v9, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    const-wide/16 v10, 0x0

    .line 84
    .local v10, "nextExpiration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 87
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 89
    .local v6, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 91
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v16, v18, v12

    if-gtz v16, :cond_0

    .line 92
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 84
    .end local v6    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    .line 96
    .restart local v6    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :cond_0
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :cond_1
    monitor-exit v17

    .line 102
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "alarmEntries$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 103
    .local v2, "alarmEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "alarmEntry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    .line 104
    .local v4, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->-wrap0(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)V

    goto :goto_2

    .line 108
    .end local v2    # "alarmEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    .end local v4    # "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    .end local v5    # "alarmEntry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 111
    sub-long v14, v10, v12

    .line 112
    .local v14, "sleep":J
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v16, v14, v18

    if-lez v16, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    move/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v16, :cond_5

    :cond_4
    monitor-exit v17

    goto/16 :goto_0

    .line 114
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v18

    sub-long v14, v10, v18

    goto :goto_3

    .line 110
    :catchall_1
    move-exception v16

    monitor-exit v17

    throw v16

    .line 116
    :catch_0
    move-exception v8

    .local v8, "ie":Ljava/lang/InterruptedException;
    goto :goto_4
.end method
