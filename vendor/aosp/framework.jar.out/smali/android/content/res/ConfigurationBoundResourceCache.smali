.class public Landroid/content/res/ConfigurationBoundResourceCache;
.super Ljava/lang/Object;
.source "ConfigurationBoundResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ConstantState",
            "<TT;>;>;>;>;"
        }
    .end annotation
.end field

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 39
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    .line 40
    iput-object p1, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mResources:Landroid/content/res/Resources;

    .line 41
    return-void
.end method

.method private onConfigurationChangeInt(Landroid/util/LongSparseArray;I)V
    .locals 5
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ConstantState",
            "<TT;>;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    .local p1, "themeCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 128
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 129
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 130
    .local v3, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    .line 131
    .local v0, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 128
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 136
    .end local v0    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    const/4 v4, 0x0

    .line 77
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/res/Resources$Theme;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "themeKey":Ljava/lang/String;
    :goto_0
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v5, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 82
    .local v2, "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    if-nez v2, :cond_2

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    :goto_1
    return-object v4

    .line 77
    .end local v1    # "themeKey":Ljava/lang/String;
    .end local v2    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 85
    .restart local v1    # "themeKey":Ljava/lang/String;
    .restart local v2    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 86
    .local v3, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    .line 91
    .local v0, "entry":Landroid/content/res/ConstantState;
    if-eqz v0, :cond_3

    .line 92
    iget-object v4, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v4, p3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 86
    .end local v0    # "entry":Landroid/content/res/ConstantState;
    .end local v2    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 94
    .restart local v0    # "entry":Landroid/content/res/ConstantState;
    .restart local v2    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    .restart local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;"
    :cond_3
    monitor-enter p0

    .line 97
    :try_start_3
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 98
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public onConfigurationChange(I)V
    .locals 4
    .param p1, "configChanges"    # I

    .prologue
    .line 111
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v3, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 113
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 115
    iget-object v3, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 116
    .local v2, "themeCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    invoke-direct {p0, v2, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChangeInt(Landroid/util/LongSparseArray;I)V

    .line 117
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 113
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 121
    .end local v2    # "themeCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    :cond_1
    monitor-exit p0

    .line 122
    return-void

    .line 121
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public put(JLandroid/content/res/Resources$Theme;Landroid/content/res/ConstantState;)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "Landroid/content/res/ConstantState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    .local p4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    if-nez p4, :cond_0

    .line 65
    :goto_0
    return-void

    .line 55
    :cond_0
    if-nez p3, :cond_2

    const-string v0, ""

    .line 57
    .local v0, "themeKey":Ljava/lang/String;
    :goto_1
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v2, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 59
    .local v1, "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    if-nez v1, :cond_1

    .line 60
    new-instance v1, Landroid/util/LongSparseArray;

    .end local v1    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 61
    .restart local v1    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    iget-object v2, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 64
    monitor-exit p0

    goto :goto_0

    .end local v1    # "themedCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/content/res/ConstantState<TT;>;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 55
    .end local v0    # "themeKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Landroid/content/res/Resources$Theme;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
