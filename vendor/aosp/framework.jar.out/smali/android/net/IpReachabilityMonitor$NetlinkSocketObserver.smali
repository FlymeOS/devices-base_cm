.class final Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpReachabilityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetlinkSocketObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkSocketObserver"


# instance fields
.field private mSocket:Landroid/net/netlink/NetlinkSocket;

.field final synthetic this$0:Landroid/net/IpReachabilityMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    return-void
.end method

.method private constructor <init>(Landroid/net/IpReachabilityMonitor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/IpReachabilityMonitor;

    .prologue
    .line 337
    iput-object p1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/IpReachabilityMonitor;Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/IpReachabilityMonitor;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/IpReachabilityMonitor;)V

    return-void
.end method

.method private clearNetlinkSocket()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkSocket;->close()V

    .line 374
    :cond_0
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .locals 10
    .param p1, "neighMsg"    # Landroid/net/netlink/RtNetlinkNeighborMessage;
    .param p2, "whenMs"    # J

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    move-result-object v3

    .line 444
    .local v3, "ndMsg":Landroid/net/netlink/StructNdMsg;
    if-eqz v3, :cond_0

    iget v6, v3, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    iget-object v7, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v7}, Landroid/net/IpReachabilityMonitor;->-get0(Landroid/net/IpReachabilityMonitor;)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 445
    :cond_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    move-result-object v0

    .line 449
    .local v0, "destination":Ljava/net/InetAddress;
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v6, v0}, Landroid/net/IpReachabilityMonitor;->-wrap0(Landroid/net/IpReachabilityMonitor;Ljava/net/InetAddress;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 450
    return-void

    .line 453
    :cond_2
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v6

    iget-short v2, v6, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 454
    .local v2, "msgType":S
    iget-short v4, v3, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 455
    .local v4, "nudState":S
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NeighborEvent{elapsedMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 456
    const-string/jumbo v7, ", "

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 457
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 457
    const-string/jumbo v7, ", "

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    const-string/jumbo v7, "["

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    move-result-object v7

    invoke-static {v7}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v7

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    const-string/jumbo v7, "], "

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 459
    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    move-result-object v7

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 459
    const-string/jumbo v7, ", "

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 460
    invoke-static {v4}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v7

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 461
    const-string/jumbo v7, "}"

    .line 455
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "eventMsg":Ljava/lang/String;
    const-string/jumbo v6, "NetlinkSocketObserver"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 470
    :try_start_0
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->-get1(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 472
    const/16 v6, 0x1d

    if-ne v2, v6, :cond_5

    .line 473
    const/4 v5, 0x0

    .line 475
    :goto_0
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->-get1(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v7

    .line 479
    const/16 v6, 0x20

    if-ne v4, v6, :cond_4

    .line 480
    const-string/jumbo v6, "NetlinkSocketObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ALERT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v6, v1}, Landroid/net/IpReachabilityMonitor;->-wrap2(Landroid/net/IpReachabilityMonitor;Ljava/lang/String;)V

    .line 442
    :cond_4
    return-void

    .line 474
    :cond_5
    move v5, v4

    .local v5, "value":S
    goto :goto_0

    .line 469
    .end local v5    # "value":S
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 8
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "whenMs"    # J

    .prologue
    .line 412
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_1

    .line 413
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 414
    .local v1, "position":I
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v0

    .line 415
    .local v0, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v3

    if-nez v3, :cond_2

    .line 416
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 417
    const-string/jumbo v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unparsable netlink msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .end local v1    # "position":I
    :cond_1
    :goto_1
    return-void

    .line 421
    .restart local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .restart local v1    # "position":I
    :cond_2
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v3

    iget v2, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 422
    .local v2, "srcPortId":I
    if-eqz v2, :cond_3

    .line 423
    const-string/jumbo v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-kernel source portId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v2, -0x1

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    :cond_3
    instance-of v3, v0, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v3, :cond_4

    .line 428
    const-string/jumbo v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "netlink error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_4
    instance-of v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    if-nez v3, :cond_5

    .line 432
    const-string/jumbo v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-rtnetlink neighbor msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_5
    check-cast v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    invoke-direct {p0, v0, p2, p3}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    goto/16 :goto_0
.end method

.method private recvKernelReply()Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 400
    :try_start_0
    iget-object v2, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/system/ErrnoException;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_0

    .line 405
    throw v0

    .line 401
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 408
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private setupNetlinkSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    .line 383
    new-instance v1, Landroid/net/netlink/NetlinkSocket;

    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-direct {v1, v2}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V

    iput-object v1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    .line 385
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    .line 386
    sget v1, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    const/4 v2, 0x0

    .line 385
    invoke-direct {v0, v2, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    .line 387
    .local v0, "listenAddr":Landroid/system/NetlinkSocketAddress;
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v1, v0}, Landroid/net/netlink/NetlinkSocket;->bind(Landroid/system/NetlinkSocketAddress;)V

    .line 381
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 344
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    const/4 v7, 0x1

    invoke-static {v3, v7}, Landroid/net/IpReachabilityMonitor;->-set0(Landroid/net/IpReachabilityMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 347
    :try_start_1
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->setupNetlinkSocket()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-wrap1(Landroid/net/IpReachabilityMonitor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :try_start_2
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->recvKernelReply()Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 361
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 362
    .local v4, "whenMs":J
    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0, v0, v4, v5}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 344
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "whenMs":J
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NetlinkSocketObserver"

    const-string/jumbo v6, "Failed to suitably initialize a netlink socket"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/net/IpReachabilityMonitor;->-set0(Landroid/net/IpReachabilityMonitor;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v6

    throw v3

    .line 357
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 358
    .local v1, "e":Landroid/system/ErrnoException;
    const-string/jumbo v3, "NetlinkSocketObserver"

    const-string/jumbo v6, "ErrnoException: "

    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_1
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    .line 370
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_4
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/net/IpReachabilityMonitor;->-set0(Landroid/net/IpReachabilityMonitor;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v6

    .line 342
    return-void

    .line 370
    :catchall_2
    move-exception v3

    monitor-exit v6

    throw v3
.end method
