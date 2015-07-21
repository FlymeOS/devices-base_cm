.class Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    .line 90
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    const-string v10, "WifiScanningService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ClientHandler got"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 129
    :pswitch_0
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v10, v10, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 130
    .local v4, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-nez v4, :cond_3

    .line 131
    const-string v10, "WifiScanningService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find client info for message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v11, -0x2

    const-string v12, "Could not find listener"

    invoke-virtual {v10, p1, v11, v12}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 161
    .end local v4    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-nez v10, :cond_1

    .line 102
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .line 103
    .local v2, "c":Lcom/android/internal/util/AsyncChannel;
    const-string v10, "WifiScanningService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New client listening to asynchronous messages: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v10, v2, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    .line 106
    .local v3, "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v10, v10, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    .end local v2    # "c":Lcom/android/internal/util/AsyncChannel;
    .end local v3    # "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_1
    const-string v10, "WifiScanningService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Client connection failure, error="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :pswitch_2
    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 113
    const-string v10, "WifiScanningService"

    const-string v11, "Send failed, client connection lost"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_1
    const-string v10, "WifiScanningService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "closing client "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v10, v10, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 119
    .restart local v4    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->cleanup()V

    goto/16 :goto_0

    .line 115
    .end local v4    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_2
    const-string v10, "WifiScanningService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Client connection lost with reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    :pswitch_3
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 125
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v10, p0, v11}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .restart local v4    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_3
    :try_start_0
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->enforceConnectivityInternalPermission()V
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/WifiScanningServiceImpl;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    const/16 v10, 0x8

    new-array v9, v10, [I

    fill-array-data v9, :array_0

    .line 153
    .local v9, "validCommands":[I
    move-object v1, v9

    .local v1, "arr$":[I
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_5

    aget v5, v1, v7

    .line 154
    .local v5, "cmd":I
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v5, v10, :cond_4

    .line 155
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$200(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v10

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 138
    .end local v1    # "arr$":[I
    .end local v5    # "cmd":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "validCommands":[I
    :catch_0
    move-exception v6

    .line 139
    .local v6, "e":Ljava/lang/SecurityException;
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v11, -0x4

    const-string v12, "Not authorized"

    invoke-virtual {v10, p1, v11, v12}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v6    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "arr$":[I
    .restart local v5    # "cmd":I
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "validCommands":[I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 160
    .end local v5    # "cmd":I
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v11, -0x3

    const-string v12, "Invalid request"

    invoke-virtual {v10, p1, v11, v12}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 143
    :array_0
    .array-data 4
        0x27000
        0x27002
        0x27003
        0x27006
        0x27007
        0x2700d
        0x2700b
        0x2700c
    .end array-data
.end method
