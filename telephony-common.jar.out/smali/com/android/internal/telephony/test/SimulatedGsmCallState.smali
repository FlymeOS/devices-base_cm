.class Lcom/android/internal/telephony/test/SimulatedGsmCallState;
.super Landroid/os/Handler;
.source "SimulatedGsmCallState.java"


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final MAX_CALLS:I = 0x7


# instance fields
.field private mAutoProgressConnecting:Z

.field mCalls:[Lcom/android/internal/telephony/test/CallInfo;

.field private mNextDialFailImmediately:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/test/CallInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    .line 154
    return-void
.end method

.method private countActiveLines()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 767
    const/4 v4, 0x0

    .line 768
    .local v4, "hasMpty":Z
    const/4 v3, 0x0

    .line 769
    .local v3, "hasHeld":Z
    const/4 v1, 0x0

    .line 770
    .local v1, "hasActive":Z
    const/4 v2, 0x0

    .line 771
    .local v2, "hasConnecting":Z
    const/4 v5, 0x0

    .line 772
    .local v5, "hasRinging":Z
    const/4 v7, 0x0

    .line 774
    .local v7, "mptyIsHeld":Z
    const/4 v6, 0x0

    .end local v1    # "hasActive":Z
    .end local v2    # "hasConnecting":Z
    .end local v3    # "hasHeld":Z
    .end local v4    # "hasMpty":Z
    .end local v5    # "hasRinging":Z
    .local v6, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v9, v9

    if-ge v6, v9, :cond_7

    .line 775
    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v9, v6

    .line 777
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    .line 778
    if-nez v4, :cond_3

    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v9, :cond_3

    .line 779
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_2

    const/4 v7, 0x1

    .line 792
    :cond_0
    :goto_1
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    or-int/2addr v4, v9

    .line 793
    .local v4, "hasMpty":Z
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_5

    move v9, v10

    :goto_2
    or-int/2addr v3, v9

    .line 794
    .local v3, "hasHeld":Z
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_6

    move v9, v10

    :goto_3
    or-int/2addr v1, v9

    .line 795
    .local v1, "hasActive":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v9

    or-int/2addr v2, v9

    .line 796
    .local v2, "hasConnecting":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v9

    or-int/2addr v5, v9

    .line 774
    .end local v1    # "hasActive":Z
    .end local v2    # "hasConnecting":Z
    .end local v3    # "hasHeld":Z
    .end local v4    # "hasMpty":Z
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 779
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 780
    :cond_3
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    .line 781
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_4

    .line 783
    const-string/jumbo v9, "ModelInterpreter"

    const-string/jumbo v10, "Invalid state"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    .line 785
    :cond_4
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-nez v9, :cond_0

    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    .line 786
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v12, :cond_0

    .line 788
    const-string/jumbo v9, "ModelInterpreter"

    const-string/jumbo v10, "Invalid state"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    .restart local v4    # "hasMpty":Z
    :cond_5
    move v9, v11

    .line 793
    goto :goto_2

    .restart local v3    # "hasHeld":Z
    :cond_6
    move v9, v11

    .line 794
    goto :goto_3

    .line 800
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    .end local v3    # "hasHeld":Z
    .end local v4    # "hasMpty":Z
    :cond_7
    const/4 v8, 0x0

    .line 802
    .local v8, "ret":I
    if-eqz v3, :cond_8

    const/4 v8, 0x1

    .line 803
    :cond_8
    if-eqz v1, :cond_9

    add-int/lit8 v8, v8, 0x1

    .line 804
    :cond_9
    if-eqz v2, :cond_a

    add-int/lit8 v8, v8, 0x1

    .line 805
    :cond_a
    if-eqz v5, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 807
    :cond_b
    return v8
.end method


# virtual methods
.method public conference()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 608
    const/4 v1, 0x0

    .line 611
    .local v1, "countCalls":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 612
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 614
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 615
    add-int/lit8 v1, v1, 0x1

    .line 617
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    return v4

    .line 611
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 623
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 625
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    .line 626
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 627
    if-lez v1, :cond_2

    .line 628
    iput-boolean v5, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 622
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 633
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    return v5
.end method

.method public explicitCallTransfer()Z
    .locals 4

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 641
    .local v1, "countCalls":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 642
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 644
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 645
    add-int/lit8 v1, v1, 0x1

    .line 647
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    const/4 v3, 0x0

    return v3

    .line 641
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v3

    return v3
.end method

.method public getClccLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 755
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v1

    .line 757
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 758
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return-object v2
.end method

.method public getDriverCalls()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 735
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    .line 737
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 740
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    move-result-object v1

    .line 741
    .local v1, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v1    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    const-string/jumbo v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SC< getDriverCalls "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    .line 160
    return-void

    .line 166
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnswer()Z
    .locals 4

    .prologue
    .line 359
    monitor-enter p0

    .line 360
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .line 363
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    .line 364
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    .line 365
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 360
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    monitor-exit p0

    .line 372
    const/4 v2, 0x0

    return v2

    .line 359
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onChld(CC)Z
    .locals 5
    .param p1, "c0"    # C
    .param p2, "c1"    # C

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 394
    const/4 v0, 0x0

    .line 396
    .local v0, "callIndex":I
    if-eqz p2, :cond_1

    .line 397
    add-int/lit8 v0, p2, -0x31

    .line 399
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 400
    :cond_0
    return v3

    .line 404
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 440
    const/4 v1, 0x0

    .line 444
    :goto_0
    return v1

    .line 406
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v1

    .local v1, "ret":Z
    goto :goto_0

    .line 409
    .end local v1    # "ret":Z
    :pswitch_1
    if-gtz p2, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 412
    .end local v1    # "ret":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 413
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 415
    .end local v1    # "ret":Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v4, v2, v0

    .line 416
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 421
    .end local v1    # "ret":Z
    :pswitch_2
    if-gtz p2, :cond_4

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v1

    .local v1, "ret":Z
    goto :goto_0

    .line 424
    .end local v1    # "ret":Z
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->separateCall(I)Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 428
    .end local v1    # "ret":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->conference()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 431
    .end local v1    # "ret":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->explicitCallTransfer()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 436
    .end local v1    # "ret":Z
    :pswitch_5
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDial(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 660
    const/4 v1, -0x1

    .line 662
    .local v1, "freeSlot":I
    const-string/jumbo v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SC> dial \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    if-eqz v4, :cond_0

    .line 665
    iput-boolean v7, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    .line 667
    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (per request)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v7

    .line 671
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, "phNum":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 674
    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid ph num)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return v7

    .line 679
    :cond_1
    const-string/jumbo v4, "*99"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 680
    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial ignored (gprs)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return v8

    .line 687
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v4

    if-le v4, v8, :cond_3

    .line 688
    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    return v7

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "ex":Lcom/android/internal/telephony/test/InvalidStateEx;
    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v7

    .line 696
    .end local v0    # "ex":Lcom/android/internal/telephony/test/InvalidStateEx;
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_8

    .line 697
    if-gez v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-nez v4, :cond_4

    .line 698
    move v1, v2

    .line 701
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 706
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_6

    .line 708
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 696
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_7
    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return v7

    .line 712
    :cond_8
    if-gez v1, :cond_9

    .line 713
    const-string/jumbo v4, "GSM"

    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v7

    .line 717
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    invoke-static {v3}, Lcom/android/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v5

    aput-object v5, v4, v1

    .line 719
    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v4, :cond_a

    .line 721
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    invoke-virtual {p0, v8, v4}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 722
    const-wide/16 v6, 0x1f4

    .line 720
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    :cond_a
    const-string/jumbo v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SC< dial (slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v8
.end method

.method public onHangup()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 382
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    .line 383
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    .line 384
    const/4 v1, 0x1

    .line 379
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return v1
.end method

.method public progressConnectingCallState()V
    .locals 6

    .prologue
    .line 220
    monitor-enter p0

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .line 224
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 225
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 227
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v2, :cond_0

    .line 229
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 230
    const-wide/16 v4, 0x1f4

    .line 228
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    :goto_1
    monitor-exit p0

    .line 219
    return-void

    .line 233
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 234
    :try_start_1
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    .line 236
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 220
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 221
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public progressConnectingToActive()V
    .locals 4

    .prologue
    .line 246
    monitor-enter p0

    .line 247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .line 250
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    .line 251
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    .line 253
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    .line 245
    return-void

    .line 247
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public releaseActiveAcceptHeldOrWaiting()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, "foundHeld":Z
    const/4 v1, 0x0

    .line 482
    .local v1, "foundActive":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 483
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 485
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_0

    .line 486
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v6, v4, v3

    .line 487
    const/4 v1, 0x1

    .line 482
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-nez v1, :cond_4

    .line 494
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 495
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 497
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_3

    .line 498
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_2

    .line 499
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_3

    .line 501
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v6, v4, v3

    .line 502
    const/4 v1, 0x1

    .line 494
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 507
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 508
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 510
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_5

    .line 511
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 512
    const/4 v2, 0x1

    .line 507
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 516
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_6
    if-eqz v2, :cond_7

    .line 517
    return v7

    .line 520
    :cond_7
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 521
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 523
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 524
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 525
    return v7

    .line 520
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 529
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_9
    return v7
.end method

.method public releaseHeldOrUDUB()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 449
    const/4 v1, 0x0

    .line 451
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 454
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    const/4 v1, 0x1

    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    .line 461
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    if-nez v1, :cond_3

    .line 462
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 463
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 465
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    .line 466
    const/4 v1, 0x1

    .line 467
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    .line 462
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public separateCall(I)Z
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 570
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v6, p1

    .line 572
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v6

    if-eq v6, v9, :cond_1

    .line 573
    :cond_0
    return v8

    .line 576
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v6, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 577
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 579
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 580
    const/4 v2, 0x0

    .local v2, "countHeld":I
    const/4 v5, 0x0

    .line 582
    .local v5, "lastHeld":I
    if-eq v4, p1, :cond_2

    .line 583
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v6, v4

    .line 585
    .local v1, "cb":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v6, v7, :cond_2

    .line 586
    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 587
    const/4 v2, 0x1

    .line 588
    move v5, v4

    .line 592
    .end local v1    # "cb":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    if-ne v2, v9, :cond_3

    .line 594
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 598
    .end local v2    # "countHeld":I
    .end local v5    # "lastHeld":I
    :cond_4
    return v9

    .line 599
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 600
    .local v3, "ex":Lcom/android/internal/telephony/test/InvalidStateEx;
    return v8
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    .line 264
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    .line 269
    return-void
.end method

.method public switchActiveAndHeldOrWaiting()Z
    .locals 5

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 537
    .local v1, "hasHeld":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 540
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_2

    .line 541
    const/4 v1, 0x1

    .line 547
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 548
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 550
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    .line 551
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_3

    .line 552
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 547
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 537
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_4

    .line 554
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    .line 555
    :cond_4
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    .line 561
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method public triggerHangupAll()Z
    .locals 5

    .prologue
    .line 340
    monitor-enter p0

    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 346
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 347
    const/4 v1, 0x1

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    .line 353
    return v1

    .line 340
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public triggerHangupBackground()Z
    .locals 5

    .prologue
    .line 318
    monitor-enter p0

    .line 319
    const/4 v1, 0x0

    .line 321
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 324
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_0

    .line 325
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    const/4 v1, 0x1

    .line 321
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    .line 330
    return v1

    .line 318
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public triggerHangupForeground()Z
    .locals 5

    .prologue
    .line 279
    monitor-enter p0

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 285
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 287
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    .line 288
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    .line 289
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 292
    const/4 v1, 0x1

    .line 284
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 299
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_4

    .line 300
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_3

    .line 301
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_5

    .line 304
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 305
    const/4 v1, 0x1

    .line 296
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    :cond_5
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_4

    goto :goto_2

    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_6
    monitor-exit p0

    .line 308
    return v1

    .line 279
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public triggerRing(Ljava/lang/String;)Z
    .locals 7
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 179
    monitor-enter p0

    .line 180
    const/4 v1, -0x1

    .line 181
    .local v1, "empty":I
    const/4 v3, 0x0

    .line 184
    .local v3, "isCallWaiting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 185
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    .line 187
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-nez v0, :cond_1

    if-gez v1, :cond_1

    .line 188
    move v1, v2

    .line 184
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    if-eqz v0, :cond_3

    .line 190
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_2

    .line 191
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_3

    .line 193
    :cond_2
    const-string/jumbo v4, "ModelInterpreter"

    .line 194
    const-string/jumbo v5, "triggerRing failed; phone already ringing"

    .line 193
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 195
    return v6

    .line 196
    :cond_3
    if-eqz v0, :cond_0

    .line 197
    const/4 v3, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    if-gez v1, :cond_5

    .line 202
    :try_start_1
    const-string/jumbo v4, "ModelInterpreter"

    const-string/jumbo v5, "triggerRing failed; all full"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 203
    return v6

    .line 206
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    .line 207
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v5}, Lcom/android/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v5

    aput-object v5, v4, v1

    .line 209
    if-eqz v3, :cond_6

    .line 210
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    .line 214
    const/4 v4, 0x1

    return v4

    .line 179
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
