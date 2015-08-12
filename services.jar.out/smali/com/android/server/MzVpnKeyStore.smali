.class public Lcom/android/server/MzVpnKeyStore;
.super Ljava/lang/Object;
.source "MzVpnKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MzVpnKeyStore$1;,
        Lcom/android/server/MzVpnKeyStore$HashMapForRTI;,
        Lcom/android/server/MzVpnKeyStore$Element;
    }
.end annotation


# static fields
.field private static final KEY_STORE_PATH:Ljava/lang/String; = "/data/system/vpn_keystore"

.field private static final TAG:Ljava/lang/String; = "MzVpnKeyStore"

.field private static final VPN_DEFAULT_KEY:Ljava/lang/String; = "vpn_default_key"

.field private static sMe:Lcom/android/server/MzVpnKeyStore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStorePath:Ljava/lang/String;

.field private mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/MzVpnKeyStore$HashMapForRTI",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MzVpnKeyStore$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/MzVpnKeyStore;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->getStorePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "construct mStorePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->loadVpnMap()V

    .line 56
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/MzVpnKeyStore;->sMe:Lcom/android/server/MzVpnKeyStore;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/server/MzVpnKeyStore;

    invoke-direct {v0, p0}, Lcom/android/server/MzVpnKeyStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/MzVpnKeyStore;->sMe:Lcom/android/server/MzVpnKeyStore;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/server/MzVpnKeyStore;->sMe:Lcom/android/server/MzVpnKeyStore;

    return-object v0
.end method

.method private getStorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "/data/system/vpn_keystore"

    return-object v0
.end method

.method private loadVpnMap()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 64
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v7, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 68
    .local v6, "obj":Ljava/lang/Object;
    instance-of v10, v6, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    if-eqz v10, :cond_2

    .line 69
    const-string v10, "new version storage file"

    invoke-static {v10}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 70
    check-cast v6, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    .end local v6    # "obj":Ljava/lang/Object;
    iput-object v6, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    :goto_1
    iget-object v10, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    if-nez v10, :cond_1

    .line 94
    const-string v10, "loadVpnMap()...: mVpnMap is null"

    invoke-static {v10}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 96
    new-instance v10, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-direct {v10, v12}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    iput-object v10, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    .line 98
    :cond_1
    return-void

    .line 71
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    :cond_2
    :try_start_1
    instance-of v10, v6, Ljava/util/HashMap;

    if-eqz v10, :cond_3

    .line 72
    const-string v10, "old version storage file, we need covert it to new version"

    invoke-static {v10}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 73
    new-instance v10, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    iput-object v10, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    .line 74
    move-object v0, v6

    check-cast v0, Ljava/util/HashMap;

    move-object v8, v0

    .line 75
    .local v8, "oldVersionVpnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 76
    .local v9, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 77
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    new-instance v2, Lcom/android/server/MzVpnKeyStore$Element;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/android/server/MzVpnKeyStore$Element;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    .line 78
    .local v2, "element":Lcom/android/server/MzVpnKeyStore$Element;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iput-object v10, v2, Lcom/android/server/MzVpnKeyStore$Element;->data:[B

    .line 79
    iget-object v10, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 87
    .end local v2    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "oldVersionVpnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .end local v9    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    :cond_3
    :try_start_2
    const-string v10, "bad storage file"

    invoke-static {v10}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 89
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ClassNotFoundException\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "MzVpnKeyStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method private saveVpnMap()V
    .locals 5

    .prologue
    .line 101
    const-string v3, "saveVpnMap()..."

    invoke-static {v3}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 103
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 107
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->saveVpnMap()V

    .line 166
    const/4 v1, 0x1

    monitor-exit p0

    .line 169
    :goto_0
    return v1

    .line 168
    :cond_0
    monitor-exit p0

    .line 169
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/String;Z)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "passwordIncluded"    # Z

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "result":[B
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v3, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MzVpnKeyStore$Element;

    .line 149
    .local v0, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/MzVpnKeyStore$Element;->data:[B

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    invoke-static {p1, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 153
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    const-string v3, ""

    iput-object v3, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 154
    invoke-virtual {v1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    .line 156
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    monitor-exit p0

    .line 157
    return-object v2

    .line 156
    .end local v0    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAllKeys()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, "result":[Ljava/lang/String;
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v7}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 119
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    .line 120
    .local v6, "size":I
    if-nez v6, :cond_0

    const/4 v7, 0x0

    monitor-exit p0

    .line 128
    :goto_0
    return-object v7

    .line 121
    :cond_0
    new-array v5, v6, [Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saw key:\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-object v3, v5, v1

    move v1, v0

    .line 126
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 127
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    move-object v7, v5

    .line 128
    goto :goto_0

    .line 127
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getDefaultKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 197
    iget-object v7, p0, Lcom/android/server/MzVpnKeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vpn_default_key"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "defaultKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v1, v6

    .line 206
    .end local v1    # "defaultKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 200
    .restart local v1    # "defaultKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/MzVpnKeyStore;->getAllKeys()[Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "keys":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v7, v4

    if-lez v7, :cond_2

    .line 202
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 203
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_2
    move-object v1, v6

    .line 206
    goto :goto_0
.end method

.method public getVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "result":I
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v2, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MzVpnKeyStore$Element;

    .line 176
    .local v0, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    .line 177
    :cond_0
    monitor-exit p0

    .line 178
    return v1

    .line 177
    .end local v0    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MzVpnKeyStore$Element;

    .line 134
    .local v0, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/server/MzVpnKeyStore$Element;

    .end local v0    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/MzVpnKeyStore$Element;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    .line 139
    .restart local v0    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    :goto_0
    iput-object p2, v0, Lcom/android/server/MzVpnKeyStore$Element;->data:[B

    .line 140
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->saveVpnMap()V

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 137
    :cond_0
    iget v1, v0, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    goto :goto_0

    .line 142
    .end local v0    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vpn_default_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    return-void
.end method

.method public setVersion(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    const/4 v1, 0x0

    .line 182
    if-gtz p2, :cond_0

    .line 190
    :goto_0
    return v1

    .line 183
    :cond_0
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v2, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MzVpnKeyStore$Element;

    .line 185
    .local v0, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 189
    .end local v0    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 186
    .restart local v0    # "element":Lcom/android/server/MzVpnKeyStore$Element;
    :cond_1
    :try_start_1
    iput p2, v0, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    .line 187
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->saveVpnMap()V

    .line 189
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    const/4 v1, 0x1

    goto :goto_0
.end method
