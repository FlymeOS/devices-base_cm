.class public Lcom/android/internal/telephony/test/ModelInterpreter;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final LOG_TAG:Ljava/lang/String; = "ModelInterpreter"

.field static final MAX_CALLS:I = 0x6

.field static final PROGRESS_CALL_STATE:I = 0x1

.field static final sDefaultResponses:[[Ljava/lang/String;


# instance fields
.field private mFinalResponse:Ljava/lang/String;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mIn:Ljava/io/InputStream;

.field mLineReader:Lcom/android/internal/telephony/test/LineReader;

.field mOut:Ljava/io/OutputStream;

.field mPausedResponseCount:I

.field mPausedResponseMonitor:Ljava/lang/Object;

.field mSS:Ljava/net/ServerSocket;

.field mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 657
    const/16 v0, 0x1f

    new-array v0, v0, [[Ljava/lang/String;

    .line 658
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "E0Q0V1"

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    aput-object v1, v0, v3

    .line 659
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CMEE=2"

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    aput-object v1, v0, v4

    .line 660
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CREG=2"

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    aput-object v1, v0, v5

    .line 661
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CGREG=2"

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 662
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CCWA=1"

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 663
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+COPS=0"

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 664
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CFUN=1"

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 665
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CGMI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CGMI: Android Model AT Interpreter\r"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 666
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CGMM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CGMM: Android Model AT Interpreter\r"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 667
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CGMR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CGMR: 1.0\r"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 668
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CGSN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "000000000000000\r"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 669
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CIMI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "320720000000000\r"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 670
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CSCS=?"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CSCS: (\"HEX\",\"UCS2\")\r"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 671
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CFUN?"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CFUN: 1\r"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 672
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+COPS=3,0;+COPS?;+COPS=3,1;+COPS?;+COPS=3,2;+COPS?"

    aput-object v2, v1, v3

    .line 673
    const-string/jumbo v2, "+COPS: 0,0,\"Android\"\r+COPS: 0,1,\"Android\"\r+COPS: 0,2,\"310995\"\r"

    aput-object v2, v1, v4

    .line 672
    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 676
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CREG?"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CREG: 2,5, \"0113\", \"6614\"\r"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 677
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CGREG?"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CGREG: 2,0\r"

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 678
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CSQ"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CSQ: 16,99\r"

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 679
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CNMI?"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CNMI: 1,2,2,1,1\r"

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 680
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CLIR?"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CLIR: 1,3\r"

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 681
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "%CPVWI=2"

    aput-object v2, v1, v3

    const-string/jumbo v2, "%CPVWI: 0\r"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 682
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CUSD=1,\"#646#\""

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CUSD=0,\"You have used 23 minutes\"\r"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 683
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=176,12258,0,0,10"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,981062200050259429F6\r"

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 684
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=192,12258,0,0,15"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,0000000A2FE204000FF55501020000\r"

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 687
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=192,28474,0,0,15"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,0000005a6f3a040011f5220102011e\r"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 688
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=178,28474,1,4,30"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,437573746f6d65722043617265ffffff07818100398799f7ffffffffffff\r"

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 689
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=178,28474,2,4,30"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,566f696365204d61696cffffffffffff07918150367742f3ffffffffffff\r"

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 690
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=178,28474,3,4,30"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,4164676a6dffffffffffffffffffffff0b918188551512c221436587ff01\r"

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 691
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=178,28474,4,4,30"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,810101c1ffffffffffffffffffffffff068114455245f8ffffffffffffff\r"

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 693
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=192,28490,0,0,15"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,000000416f4a040011f5550102010d\r"

    aput-object v2, v1, v4

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 694
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "+CRSM=178,28490,1,4,13"

    aput-object v2, v1, v3

    const-string/jumbo v2, "+CRSM: 144,0,0206092143658709ffffffffff\r"

    aput-object v2, v1, v4

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 657
    sput-object v0, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "sa"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    .line 175
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 188
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ModelInterpreter"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 189
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ModelInterpreter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 192
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    .line 186
    return-void
.end method

.method private onAnswer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 449
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 450
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string/jumbo v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_0
    return-void
.end method

.method private onCHLD(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 476
    .local v1, "c1":C
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 478
    .local v0, "c0":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 479
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 482
    .end local v1    # "c1":C
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v2

    .line 484
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 485
    new-instance v3, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string/jumbo v4, "ERROR"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v3

    .line 469
    :cond_1
    return-void
.end method

.method private onCLCC()V
    .locals 4

    .prologue
    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getClccLines()Ljava/util/List;

    move-result-object v1

    .line 508
    .local v1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 509
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method private onDial(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    move-result v0

    .line 496
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 497
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string/jumbo v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_0
    return-void
.end method

.method private onHangup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 461
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 462
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string/jumbo v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_0
    const-string/jumbo v1, "NO CARRIER"

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    .line 455
    return-void
.end method

.method private onSMSSend(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 518
    const-string/jumbo v1, "> "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->print(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/LineReader;->getNextLineCtrlZ()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "pdu":Ljava/lang/String;
    const-string/jumbo v1, "+CMGS: 1"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 514
    return-void
.end method


# virtual methods
.method public pauseResponses()V
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 420
    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method print(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 623
    monitor-enter p0

    .line 625
    :try_start_0
    const-string/jumbo v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 629
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bytes":[B
    :goto_0
    monitor-exit p0

    .line 621
    return-void

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method println(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 606
    monitor-enter p0

    .line 608
    :try_start_0
    const-string/jumbo v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 612
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bytes":[B
    :goto_0
    monitor-exit p0

    .line 604
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method processLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->splitCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "commands":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_a

    .line 532
    aget-object v0, v1, v3

    .line 534
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v6, "A"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onAnswer()V

    .line 531
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    :cond_1
    const-string/jumbo v6, "H"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onHangup()V

    goto :goto_1

    .line 538
    :cond_2
    const-string/jumbo v6, "+CHLD="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 539
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCHLD(Ljava/lang/String;)V

    goto :goto_1

    .line 540
    :cond_3
    const-string/jumbo v6, "+CLCC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCLCC()V

    goto :goto_1

    .line 542
    :cond_4
    const-string/jumbo v6, "D"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 543
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onDial(Ljava/lang/String;)V

    goto :goto_1

    .line 544
    :cond_5
    const-string/jumbo v6, "+CMGS="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 545
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onSMSSend(Ljava/lang/String;)V

    goto :goto_1

    .line 547
    :cond_6
    const/4 v2, 0x0

    .line 549
    .local v2, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_8

    .line 550
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 551
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x1

    aget-object v5, v6, v7

    .line 552
    .local v5, "r":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 553
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 555
    :cond_7
    const/4 v2, 0x1

    .line 560
    .end local v5    # "r":Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_0

    .line 561
    new-instance v6, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string/jumbo v7, "ERROR"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v6

    .line 549
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 525
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "found":Z
    .end local v4    # "j":I
    :cond_a
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 294
    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    .line 303
    return-void
.end method

.method public resumeResponses()V
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    .line 434
    iget v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 429
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 201
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    if-eqz v6, :cond_1

    .line 205
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 213
    .local v5, "s":Ljava/net/Socket;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    .line 214
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    const-string/jumbo v6, "ModelInterpreter"

    const-string/jumbo v7, "New connection accepted"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v5    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/test/LineReader;

    iget-object v7, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/test/LineReader;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    .line 227
    const-string/jumbo v6, "Welcome"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 232
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    invoke-virtual {v6}, Lcom/android/internal/telephony/test/LineReader;->getNextLine()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 263
    const-string/jumbo v6, "ModelInterpreter"

    const-string/jumbo v7, "Disconnected"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    if-nez v6, :cond_0

    .line 198
    return-void

    .line 206
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v6, "ModelInterpreter"

    .line 208
    const-string/jumbo v7, "IOException on socket.accept(); stopping"

    .line 207
    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    return-void

    .line 215
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v5    # "s":Ljava/net/Socket;
    :catch_1
    move-exception v1

    .line 216
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string/jumbo v6, "ModelInterpreter"

    .line 217
    const-string/jumbo v7, "IOException on accepted socket(); re-listening"

    .line 216
    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 240
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v5    # "s":Ljava/net/Socket;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v7

    .line 241
    :goto_2
    :try_start_2
    iget v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v6, :cond_3

    .line 243
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 244
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit v7

    .line 249
    monitor-enter p0

    .line 251
    :try_start_4
    const-string/jumbo v6, "OK"

    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/test/ModelInterpreter;->processLine(Ljava/lang/String;)V

    .line 253
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/internal/telephony/test/InterpreterEx; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit p0

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 256
    :catch_3
    move-exception v3

    .line 257
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 258
    const-string/jumbo v6, "ERROR"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 249
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 254
    :catch_4
    move-exception v0

    .line 255
    .local v0, "ex":Lcom/android/internal/telephony/test/InterpreterEx;
    :try_start_6
    iget-object v6, v0, Lcom/android/internal/telephony/test/InterpreterEx;->mResult:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3
.end method

.method public sendUnsolicited(Ljava/lang/String;)V
    .locals 1
    .param p1, "unsol"    # Ljava/lang/String;

    .prologue
    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 376
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 313
    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0
    .param p1, "gsmCause"    # I

    .prologue
    .line 326
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 320
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 642
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 647
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 651
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    :goto_1
    return-void

    .line 652
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    goto :goto_1

    .line 648
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method splitCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 571
    const-string/jumbo v1, "AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string/jumbo v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 577
    new-array v1, v2, [Ljava/lang/String;

    return-object v1

    .line 580
    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 583
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 585
    return-object v0
.end method

.method public triggerHangupAll()V
    .locals 2

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v0

    .line 370
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 371
    const-string/jumbo v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    move-result v0

    .line 355
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 356
    const-string/jumbo v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    move-result v0

    .line 341
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 390
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 386
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 280
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    move-result v0

    .line 285
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 286
    const-string/jumbo v1, "RING"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 278
    return-void

    .line 280
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public triggerSsn(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 384
    return-void
.end method
