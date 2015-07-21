.class public abstract Lcom/android/server/location/GeoFencerBase;
.super Ljava/lang/Object;
.source "GeoFencerBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeoFencerBase"


# instance fields
.field private mGeoFences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Landroid/location/GeoFenceParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    .line 48
    return-void
.end method


# virtual methods
.method public add(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;
    .param p9, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Landroid/location/GeoFenceParams;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Landroid/location/GeoFenceParams;-><init>(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/GeoFencerBase;->add(Landroid/location/GeoFenceParams;)V

    .line 55
    return-void
.end method

.method public add(Landroid/location/GeoFenceParams;)V
    .locals 3
    .param p1, "geoFence"    # Landroid/location/GeoFenceParams;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/location/GeoFencerBase;->start(Landroid/location/GeoFenceParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v1

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :cond_0
    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 64
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  GeoFences:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 138
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .local v0, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/PendingIntent;Landroid/location/GeoFenceParams;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GeoFenceParams;

    invoke-virtual {v2, p1, p2}, Landroid/location/GeoFenceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v0    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/PendingIntent;Landroid/location/GeoFenceParams;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getAllGeoFences()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/location/GeoFenceParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getGeoFence(Landroid/app/PendingIntent;)Landroid/location/GeoFenceParams;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    return-object v0
.end method

.method public getNumbOfGeoFences()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasCaller(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 102
    .local v0, "alert":Landroid/location/GeoFenceParams;
    iget v2, v0, Landroid/location/GeoFenceParams;->mUid:I

    if-ne v2, p1, :cond_0

    .line 103
    const/4 v2, 0x1

    .line 106
    .end local v0    # "alert":Landroid/location/GeoFenceParams;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GeoFencerBase;->remove(Landroid/app/PendingIntent;Z)V

    .line 70
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Z)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "localOnly"    # Z

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "geoFence":Landroid/location/GeoFenceParams;
    iget-object v3, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v3

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/location/GeoFenceParams;

    move-object v1, v0

    .line 77
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v1, :cond_0

    .line 80
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/location/GeoFencerBase;->stop(Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v3

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :cond_0
    return-void

    .line 77
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 83
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public removeCaller(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "removedFences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v4, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 112
    .local v0, "alert":Landroid/location/GeoFenceParams;
    iget v4, v0, Landroid/location/GeoFenceParams;->mUid:I

    if-ne v4, p1, :cond_0

    .line 113
    if-nez v3, :cond_1

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "removedFences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .restart local v3    # "removedFences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_1
    iget-object v4, v0, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v0    # "alert":Landroid/location/GeoFenceParams;
    :cond_2
    if-eqz v3, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 121
    iget-object v4, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 124
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method protected abstract start(Landroid/location/GeoFenceParams;)Z
.end method

.method protected abstract stop(Landroid/app/PendingIntent;)Z
.end method

.method public transferService(Lcom/android/server/location/GeoFencerBase;)V
    .locals 3
    .param p1, "geofencer"    # Lcom/android/server/location/GeoFencerBase;

    .prologue
    .line 127
    iget-object v2, p1, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 128
    .local v0, "alert":Landroid/location/GeoFenceParams;
    iget-object v2, v0, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2}, Lcom/android/server/location/GeoFencerBase;->stop(Landroid/app/PendingIntent;)Z

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/location/GeoFencerBase;->add(Landroid/location/GeoFenceParams;)V

    goto :goto_0

    .line 131
    .end local v0    # "alert":Landroid/location/GeoFenceParams;
    :cond_0
    return-void
.end method
