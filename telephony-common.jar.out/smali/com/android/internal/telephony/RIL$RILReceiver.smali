.class public Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 510
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 515
    const/4 v9, 0x0

    .line 516
    .local v9, "retryCount":I
    const-string v10, "rild"

    .line 519
    .local v10, "rilSocket":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    .line 522
    .local v11, "s":Landroid/net/LocalSocket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_2

    .line 523
    :cond_0
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v10, v15, v16
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 529
    :goto_1
    :try_start_1
    new-instance v12, Landroid/net/LocalSocket;

    invoke-direct {v12}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 530
    .end local v11    # "s":Landroid/net/LocalSocket;
    .local v12, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v6, Landroid/net/LocalSocketAddress;

    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v6, v10, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 532
    .local v6, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v12, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 565
    const/4 v9, 0x0

    .line 567
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v12, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 568
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") Connected to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v16, "qcomdsds"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 573
    const-string v13, "SUB1"

    .line 574
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 576
    .local v2, "data":[B
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/io/OutputStream;->write([B)V

    .line 577
    const-string v15, "RILJ"

    const-string v16, "Data sent!!"

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 585
    .end local v2    # "data":[B
    .end local v13    # "str":Ljava/lang/String;
    :cond_1
    :goto_2
    const/4 v7, 0x0

    .line 587
    .local v7, "length":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 592
    .local v5, "is":Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v5, v15}, Lcom/android/internal/telephony/RIL;->access$300(Ljava/io/InputStream;[B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    move-result v7

    .line 594
    if-gez v7, :cond_6

    .line 616
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_6
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") Disconnected from \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v16, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 622
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 626
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 627
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 630
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 631
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    :catch_0
    move-exception v14

    move-object v11, v12

    .line 632
    .end local v12    # "s":Landroid/net/LocalSocket;
    .restart local v11    # "s":Landroid/net/LocalSocket;
    .local v14, "tr":Ljava/lang/Throwable;
    :goto_6
    const-string v15, "RILJ"

    const-string v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 637
    return-void

    .line 525
    .end local v14    # "tr":Ljava/lang/Throwable;
    :cond_2
    :try_start_9
    sget-object v15, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v10, v15, v16
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 533
    :catch_1
    move-exception v3

    .line 535
    .local v3, "ex":Ljava/io/IOException;
    :goto_7
    if-eqz v11, :cond_3

    .line 536
    :try_start_a
    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 545
    :cond_3
    :goto_8
    const/16 v15, 0x8

    if-ne v9, v15, :cond_5

    .line 546
    :try_start_b
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket after "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " times, continuing to retry silently"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 557
    :cond_4
    :goto_9
    const-wide/16 v16, 0xfa0

    :try_start_c
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    .line 561
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 562
    goto/16 :goto_0

    .line 550
    :cond_5
    if-ltz v9, :cond_4

    const/16 v15, 0x8

    if-ge v9, v15, :cond_4

    .line 551
    :try_start_d
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket; retrying after timeout"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_9

    .line 631
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v14

    goto/16 :goto_6

    .line 578
    .end local v11    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "data":[B
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    .restart local v13    # "str":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 579
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string v15, "RILJ"

    const-string v16, "IOException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 580
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 581
    .local v4, "exc":Ljava/lang/RuntimeException;
    const-string v15, "RILJ"

    const-string v16, "Uncaught exception "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_2

    .line 599
    .end local v2    # "data":[B
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .end local v13    # "str":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "length":I
    :cond_6
    :try_start_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 600
    .local v8, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 601
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v15, v8}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    .line 606
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_3

    .line 608
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "p":Landroid/os/Parcel;
    :catch_5
    move-exception v3

    .line 609
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_10
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket closed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 611
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v14

    .line 612
    .restart local v14    # "tr":Ljava/lang/Throwable;
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_4

    .line 538
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    .end local v12    # "s":Landroid/net/LocalSocket;
    .end local v14    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "ex":Ljava/io/IOException;
    .restart local v11    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v15

    goto/16 :goto_8

    .line 558
    :catch_8
    move-exception v15

    goto/16 :goto_a

    .line 623
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v11    # "s":Landroid/net/LocalSocket;
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v12    # "s":Landroid/net/LocalSocket;
    :catch_9
    move-exception v15

    goto/16 :goto_5

    .line 533
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    :catch_a
    move-exception v3

    move-object v11, v12

    .end local v12    # "s":Landroid/net/LocalSocket;
    .restart local v11    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_7
.end method
