.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 233
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 236
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 384
    :goto_0
    :pswitch_0
    return-void

    .line 238
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAdapterAttached()V
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V

    goto :goto_0

    .line 242
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_0

    .line 245
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 247
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 249
    .local v3, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 250
    .local v4, "id":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 251
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v6, 0x1

    .line 252
    .local v6, "isIncoming":Z
    :goto_1
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v7, 0x1

    .line 253
    .local v7, "isUnknown":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    const-string v1, "Enqueueing pre-init request %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v2, v17

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v17

    new-instance v1, Landroid/telecom/ConnectionService$2$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_3
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 251
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 252
    .restart local v6    # "isIncoming":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 267
    .restart local v7    # "isUnknown":Z
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    invoke-static/range {v2 .. v7}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 275
    .end local v3    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 280
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 288
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 289
    .local v10, "callId":Ljava/lang/String;
    iget v0, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v16, v0

    .line 290
    .local v16, "videoState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move/from16 v0, v16

    # invokes: Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V
    invoke-static {v1, v10, v0}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v10    # "callId":Ljava/lang/String;
    .end local v16    # "videoState":I
    :catchall_1
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 297
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 311
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 312
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/AudioState;

    .line 313
    .local v9, "audioState":Landroid/telecom/AudioState;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    invoke-static {v1, v10, v9}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 315
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v9    # "audioState":Landroid/telecom/AudioState;
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_2
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 320
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    # invokes: Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    invoke-static {v2, v1, v0}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 323
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 328
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 329
    .restart local v10    # "callId":Ljava/lang/String;
    iget v13, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 330
    .local v13, "lchStatus":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->setLocalCallHold(Ljava/lang/String;I)V
    invoke-static {v1, v10, v13}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 332
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v10    # "callId":Ljava/lang/String;
    .end local v13    # "lchStatus":I
    :catchall_3
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 337
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->setActiveSubscription(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 342
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 343
    .local v11, "callId1":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 344
    .local v12, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v11, v12}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 346
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v11    # "callId1":Ljava/lang/String;
    .end local v12    # "callId2":Ljava/lang/String;
    :catchall_4
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 351
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$2100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 362
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 363
    .restart local v10    # "callId":Ljava/lang/String;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v15, 0x1

    .line 364
    .local v15, "proceed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    invoke-static {v1, v10, v15}, Landroid/telecom/ConnectionService;->access$2200(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 366
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 363
    .end local v15    # "proceed":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    .line 366
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_5
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 371
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 373
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 374
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v14, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 375
    .local v14, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->deflect(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v10, v14}, Landroid/telecom/ConnectionService;->access$2300(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 377
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v10    # "callId":Ljava/lang/String;
    .end local v14    # "number":Ljava/lang/String;
    :catchall_6
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_12
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method
