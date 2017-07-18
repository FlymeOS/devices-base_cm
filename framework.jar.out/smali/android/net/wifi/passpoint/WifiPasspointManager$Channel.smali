.class public Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
.super Ljava/lang/Object;
.source "WifiPasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
    }
.end annotation


# static fields
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAnqpRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAnqpRequestLock:Ljava/lang/Object;

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;I)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .param p2, "forceRemove"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->getListener(IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->peekListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestFinish(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointInfo;)V
    .locals 0
    .param p1, "result"    # Landroid/net/wifi/passpoint/WifiPasspointInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestFinish(Landroid/net/wifi/passpoint/WifiPasspointInfo;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestStart(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "l"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 201
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;-><init>(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    .line 202
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    .line 203
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mContext:Landroid/content/Context;

    .line 199
    return-void
.end method

.method private anqpRequestFinish(Landroid/net/wifi/ScanResult;)V
    .locals 5
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 274
    const-string/jumbo v2, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "anqpRequestFinish sr.bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sr1$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 277
    .local v0, "sr1":Landroid/net/wifi/ScanResult;
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "sr1":Landroid/net/wifi/ScanResult;
    :cond_1
    monitor-exit v3

    .line 273
    return-void

    .line 275
    .end local v1    # "sr1$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private anqpRequestFinish(Landroid/net/wifi/passpoint/WifiPasspointInfo;)V
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/passpoint/WifiPasspointInfo;

    .prologue
    .line 260
    const-string/jumbo v2, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "anqpRequestFinish pi.bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v3

    .line 262
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 263
    .local v0, "sr":Landroid/net/wifi/ScanResult;
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const-string/jumbo v2, "PasspointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "find hit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v2, "PasspointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAnqpRequest.len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    monitor-exit v3

    .line 259
    return-void

    .line 261
    .end local v1    # "sr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private anqpRequestStart(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 253
    const-string/jumbo v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "anqpRequestStart sr.bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 252
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getListener(IZ)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I
    .param p2, "forceRemove"    # Z

    .prologue
    const/4 v5, 0x0

    .line 235
    const-string/jumbo v1, "PasspointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getListener() key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez p1, :cond_0

    .line 237
    return-object v5

    .line 238
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 239
    if-nez p2, :cond_1

    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    .local v0, "count":I
    const-string/jumbo v1, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    if-lez v0, :cond_1

    monitor-exit v2

    .line 244
    return-object v5

    .line 246
    .end local v0    # "count":I
    :cond_1
    :try_start_1
    const-string/jumbo v1, "PasspointManager"

    const-string/jumbo v3, "remove key"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private peekListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 225
    const-string/jumbo v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "peekListener() key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private putListener(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 212
    :cond_0
    return v1

    .line 214
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 216
    :cond_2
    :try_start_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    .line 217
    .local v0, "key":I
    if-eqz v0, :cond_2

    .line 218
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 221
    return v0

    .line 214
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
