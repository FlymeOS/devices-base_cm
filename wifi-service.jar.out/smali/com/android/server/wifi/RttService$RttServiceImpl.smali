.class Lcom/android/server/wifi/RttService$RttServiceImpl;
.super Landroid/net/wifi/IRttManager$Stub;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27300

.field private static final CMD_DRIVER_LOADED:I = 0x27300

.field private static final CMD_DRIVER_UNLOADED:I = 0x27301

.field private static final CMD_ISSUE_NEXT_REQUEST:I = 0x27302

.field private static final CMD_RTT_RESPONSE:I = 0x27303


# instance fields
.field private mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

.field final synthetic this$0:Lcom/android/server/wifi/RttService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService;)V
    .locals 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->this$0:Lcom/android/server/wifi/RttService;

    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    .line 210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    .line 393
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$2;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 110
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/RttService;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->this$0:Lcom/android/server/wifi/RttService;

    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    .line 210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    .line 393
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$2;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 113
    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .locals 4

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    .line 404
    .restart local v0    # "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "RttService"

    const-string v2, "Issued next RTT request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 415
    :goto_1
    return-object v1

    .line 408
    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    const/4 v2, -0x1

    const-string v3, "Failed to start"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    const-string v1, "RttService"

    const-string v2, "No more requests left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v1, 0x0

    goto :goto_1
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27202

    iput v2, v1, Landroid/os/Message;->what:I

    .line 379
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 380
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 361
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 362
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27203

    iput v1, v0, Landroid/os/Message;->what:I

    .line 364
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 365
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 368
    .restart local v0    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiRttService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    .line 123
    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    .line 125
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/RttService$RttServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$1;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "wifi_scan_available"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->start()V

    .line 141
    return-void
.end method
