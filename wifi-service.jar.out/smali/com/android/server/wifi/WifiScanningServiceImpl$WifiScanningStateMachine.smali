.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
.implements Lcom/android/server/wifi/WifiNative$ScanEventHandler;
.implements Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiScanningStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

.field private final mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

.field private final mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    .line 224
    const-string v0, "WifiScanningService"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 219
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    .line 220
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    .line 221
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    .line 226
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setLogRecSize(I)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setLogOnlyTransitions(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 235
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number of clients : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 456
    return-void
.end method

.method public onChangesFound([Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 273
    const-string v0, "WifiScanningService"

    const-string v1, "onWifiChangesFound event received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const v0, 0x27104

    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 275
    return-void
.end method

.method public onFullScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 251
    const-string v0, "WifiScanningService"

    const-string v1, "Full scanresult received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const v0, 0x27101

    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 253
    return-void
.end method

.method public onHotlistApFound([Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 267
    const-string v0, "WifiScanningService"

    const-string v1, "HotlistApFound event received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const v0, 0x27102

    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 269
    return-void
.end method

.method public onScanPaused()V
    .locals 1

    .prologue
    .line 257
    const v0, 0x27108

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    .line 258
    return-void
.end method

.method public onScanRestarted()V
    .locals 1

    .prologue
    .line 262
    const v0, 0x27109

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    .line 263
    return-void
.end method

.method public onScanResultsAvailable()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "WifiScanningService"

    const-string v1, "onScanResultAvailable event received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const v0, 0x27100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    .line 241
    return-void
.end method

.method public onSingleScanComplete()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "WifiScanningService"

    const-string v1, "onSingleScanComplete event received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const v0, 0x27100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    .line 247
    return-void
.end method
