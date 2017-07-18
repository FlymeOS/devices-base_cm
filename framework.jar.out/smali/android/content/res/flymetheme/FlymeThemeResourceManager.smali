.class public Landroid/content/res/flymetheme/FlymeThemeResourceManager;
.super Ljava/lang/Object;
.source "FlymeThemeResourceManager.java"


# static fields
.field private static sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;


# instance fields
.field final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/flymetheme/FlymeThemeResource;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 8
    return-void
.end method

.method public static getInstance()Landroid/content/res/flymetheme/FlymeThemeResourceManager;
    .locals 2

    .prologue
    .line 13
    const-class v1, Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    invoke-direct {v0}, Landroid/content/res/flymetheme/FlymeThemeResourceManager;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 18
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->sMe:Landroid/content/res/flymetheme/FlymeThemeResourceManager;

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getFlymeThemeResource(Ljava/lang/String;)Landroid/content/res/flymetheme/FlymeThemeResource;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 24
    .local v0, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/flymetheme/FlymeThemeResource;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/flymetheme/FlymeThemeResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    .line 22
    .end local v0    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/flymetheme/FlymeThemeResource;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setFlymeThemeResource(Ljava/lang/String;Landroid/content/res/flymetheme/FlymeThemeResource;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ftr"    # Landroid/content/res/flymetheme/FlymeThemeResource;

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeResourceManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
