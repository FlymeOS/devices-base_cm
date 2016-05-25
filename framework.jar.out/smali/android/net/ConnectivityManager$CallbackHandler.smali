.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# instance fields
.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p4, "refCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "cm"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroid/net/ConnectivityManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2205
    .local p3, "callbackMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    .line 2206
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2207
    iput-object p3, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    .line 2208
    iput-object p4, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2209
    iput-object p5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCm:Landroid/net/ConnectivityManager;

    .line 2210
    return-void
.end method

.method private getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 2
    .param p1, "req"    # Landroid/net/NetworkRequest;

    .prologue
    .line 2339
    iget-object v1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2340
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    monitor-exit v1

    return-object v0

    .line 2341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "c"    # Ljava/lang/Class;

    .prologue
    .line 2336
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2214
    const-string v7, "ConnectivityManager.CallbackHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CM callback handler got msg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2333
    :goto_0
    return-void

    .line 2217
    :pswitch_0
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2219
    .local v6, "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2220
    .local v1, "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_0

    .line 2221
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    goto :goto_0

    .line 2223
    :cond_0
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for PRECHECK message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2228
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_1
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2230
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2231
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_1

    .line 2232
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    goto :goto_0

    .line 2234
    :cond_1
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for AVAILABLE message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2239
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_2
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2241
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2242
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_2

    .line 2243
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7, v8}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    goto :goto_0

    .line 2246
    :cond_2
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for LOSING message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2251
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_3
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2254
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2255
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_3

    .line 2256
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    goto/16 :goto_0

    .line 2258
    :cond_3
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for LOST message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2263
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_4
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2265
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    .line 2266
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2267
    :try_start_0
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v1, v0

    .line 2268
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2269
    if-eqz v1, :cond_4

    .line 2270
    invoke-virtual {v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    goto/16 :goto_0

    .line 2268
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2272
    :cond_4
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for UNAVAIL message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2277
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_5
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2279
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2280
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_5

    .line 2281
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Network;

    .line 2282
    .local v4, "network":Landroid/net/Network;
    const-class v7, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 2285
    .local v2, "cap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v4, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto/16 :goto_0

    .line 2287
    .end local v2    # "cap":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    :cond_5
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for CAP_CHANGED message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2292
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_6
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2294
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2295
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_6

    .line 2296
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Network;

    .line 2297
    .restart local v4    # "network":Landroid/net/Network;
    const-class v7, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 2300
    .local v3, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v1, v4, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 2302
    .end local v3    # "lp":Landroid/net/LinkProperties;
    .end local v4    # "network":Landroid/net/Network;
    :cond_6
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for IP_CHANGED message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2307
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_7
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkRequest;

    .line 2308
    .local v5, "req":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    .line 2309
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2310
    :try_start_2
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v1, v0

    .line 2311
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2312
    if-eqz v1, :cond_8

    .line 2313
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v8

    .line 2314
    :try_start_3
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_7

    .line 2315
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 2317
    :cond_7
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 2311
    :catchall_2
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 2319
    :cond_8
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for CANCELED message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2324
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v5    # "req":Landroid/net/NetworkRequest;
    :pswitch_8
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "Listener quiting"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 2329
    :pswitch_9
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkCapabilities;

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V
    invoke-static {v8, v7, v9}, Landroid/net/ConnectivityManager;->access$200(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    goto/16 :goto_0

    .line 2215
    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
