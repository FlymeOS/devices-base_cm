.class Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;
.super Landroid/os/AsyncTask;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TdlsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;)Ljava/lang/Integer;
    .locals 15
    .param p1, "params"    # [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    .prologue
    .line 1300
    const/4 v12, 0x0

    aget-object v7, p1, v12

    .line 1301
    .local v7, "param":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iget-object v12, v7, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1302
    .local v10, "remoteIpAddress":Ljava/lang/String;
    iget-boolean v2, v7, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    .line 1305
    .local v2, "enable":Z
    const/4 v6, 0x0

    .line 1307
    .local v6, "macAddress":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1310
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    const-string/jumbo v13, "/proc/net/arp"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1315
    .local v4, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1316
    const-string/jumbo v12, "[ ]+"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1317
    .local v11, "tokens":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x6

    if-lt v12, v13, :cond_0

    .line 1323
    const/4 v12, 0x0

    aget-object v3, v11, v12

    .line 1324
    .local v3, "ip":Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v5, v11, v12

    .line 1326
    .local v5, "mac":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1327
    move-object v6, v5

    .line 1332
    .end local v3    # "ip":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    .end local v6    # "macAddress":Ljava/lang/String;
    .end local v11    # "tokens":[Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_4

    .line 1333
    const-string/jumbo v12, "WifiService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Did not find remoteAddress {"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "} in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1334
    const-string/jumbo v14, "/proc/net/arp"

    .line 1333
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1345
    :goto_0
    if-eqz v9, :cond_2

    .line 1346
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    move-object v8, v9

    .line 1354
    .end local v4    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    return-object v12

    .line 1336
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_3
    iget-object v12, p0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v12, v6, v2}, Lcom/android/server/wifi/WifiServiceImpl;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1339
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .line 1340
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    const-string/jumbo v12, "WifiService"

    const-string/jumbo v13, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1345
    if-eqz v8, :cond_3

    .line 1346
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1349
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1341
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "macAddress":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 1342
    .end local v6    # "macAddress":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string/jumbo v12, "WifiService"

    const-string/jumbo v13, "Could not read /proc/net/arp to lookup mac address"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1345
    if-eqz v8, :cond_3

    .line 1346
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 1349
    :catch_4
    move-exception v1

    goto :goto_2

    .line 1343
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 1345
    :goto_5
    if-eqz v8, :cond_5

    .line 1346
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1343
    :cond_5
    :goto_6
    throw v12

    .line 1349
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1343
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1339
    .restart local v6    # "macAddress":Ljava/lang/String;
    .local v8, "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 1341
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "macAddress":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1297
    check-cast p1, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->doInBackground([Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
