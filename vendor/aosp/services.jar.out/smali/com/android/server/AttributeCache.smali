.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Package;,
        Lcom/android/server/AttributeCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    .line 42
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 75
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 64
    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "styleable"    # [I
    .param p4, "userId"    # I

    .prologue
    const/4 v10, 0x0

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AttributeCache$Package;

    .line 101
    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    const/4 v5, 0x0

    .line 102
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v3, 0x0

    .line 103
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v6, :cond_0

    .line 104
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v5, Ljava/util/HashMap;

    .line 105
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v5, :cond_3

    .line 106
    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    check-cast v3, Lcom/android/server/AttributeCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_3

    monitor-exit p0

    .line 108
    return-object v3

    .line 114
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 115
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v7, p1, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 117
    return-object v10

    .line 119
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    .line 120
    return-object v10

    .line 122
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 123
    .restart local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 126
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_0
    if-nez v5, :cond_2

    .line 127
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_2
    :try_start_3
    new-instance v3, Lcom/android/server/AttributeCache$Entry;

    iget-object v7, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    .line 133
    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v8, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 132
    invoke-direct {v3, v7, v8}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    :try_start_4
    invoke-virtual {v5, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 139
    return-object v3

    .line 135
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v3, v4

    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_1
    monitor-exit p0

    .line 136
    return-object v10

    .line 99
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 135
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_1

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_3
    move-object v4, v3

    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    goto :goto_0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 87
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 84
    return-void

    .line 85
    .end local v0    # "changes":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
