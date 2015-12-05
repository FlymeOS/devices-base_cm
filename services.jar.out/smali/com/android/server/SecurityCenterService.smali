.class public Lcom/android/server/SecurityCenterService;
.super Lmeizu/os/ISecurityCenterService$Stub;
.source "SecurityCenterService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecurityCenterService$SCHandler;,
        Lcom/android/server/SecurityCenterService$SCListener;
    }
.end annotation


# static fields
.field private static final MSG_RUN_COMMAND:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SecurityCenterService"


# instance fields
.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/SecurityCenterService$SCListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSCHandler:Lcom/android/server/SecurityCenterService$SCHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Lmeizu/os/ISecurityCenterService$Stub;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "flymed"

    const/16 v3, 0x1f4

    const-string v4, "SecurityCenterService"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/SecurityCenterService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 90
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SecurityCenterService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "SecurityCenterService"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 93
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "SecurityCenterService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    .local v7, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Lcom/android/server/SecurityCenterService$SCHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SecurityCenterService$SCHandler;-><init>(Lcom/android/server/SecurityCenterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SecurityCenterService;->mSCHandler:Lcom/android/server/SecurityCenterService$SCHandler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SecurityCenterService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecurityCenterService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SecurityCenterService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecurityCenterService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/SecurityCenterService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method private declared-synchronized onRunFinish(Ljava/lang/String;)V
    .locals 7
    .param p1, "ret"    # Ljava/lang/String;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    const-string v4, "SecurityCenterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRunFinish "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v5, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 171
    iget-object v4, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecurityCenterService$SCListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .local v0, "bl":Lcom/android/server/SecurityCenterService$SCListener;
    :try_start_2
    iget-object v4, v0, Lcom/android/server/SecurityCenterService$SCListener;->mListener:Lmeizu/os/ISecurityCenterCallback;

    invoke-interface {v4, p1}, Lmeizu/os/ISecurityCenterCallback;->onRunFinish(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "SecurityCenterService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 181
    .end local v0    # "bl":Lcom/android/server/SecurityCenterService$SCListener;
    .end local v2    # "i":I
    .end local v3    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 177
    .restart local v0    # "bl":Lcom/android/server/SecurityCenterService$SCListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 178
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "SecurityCenterService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 181
    .end local v0    # "bl":Lcom/android/server/SecurityCenterService$SCListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addSCListener(Lmeizu/os/ISecurityCenterCallback;)Z
    .locals 10
    .param p1, "listener"    # Lmeizu/os/ISecurityCenterCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "listener is null in addSCListener"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_0
    const-string v4, "SecurityCenterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSCListener:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v7, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    monitor-enter v7

    .line 129
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 130
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 131
    const-string v4, "SecurityCenterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mListeners.get(i):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {p1}, Lmeizu/os/ISecurityCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SecurityCenterService$SCListener;

    iget-object v4, v4, Lcom/android/server/SecurityCenterService$SCListener;->mListener:Lmeizu/os/ISecurityCenterCallback;

    invoke-interface {v4}, Lmeizu/os/ISecurityCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    const-string v4, "SecurityCenterService"

    const-string v6, "this listener is already added!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-exit v7

    move v4, v5

    .line 147
    :goto_1
    return v4

    .line 130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    new-instance v0, Lcom/android/server/SecurityCenterService$SCListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SecurityCenterService$SCListener;-><init>(Lcom/android/server/SecurityCenterService;Lmeizu/os/ISecurityCenterCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .local v0, "bl":Lcom/android/server/SecurityCenterService$SCListener;
    :try_start_1
    invoke-interface {p1}, Lmeizu/os/ISecurityCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 140
    iget-object v4, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v4, "SecurityCenterService"

    const-string v8, "addSCListener success"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    monitor-exit v7

    move v4, v5

    .line 147
    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "rex":Landroid/os/RemoteException;
    const-string v4, "SecurityCenterService"

    const-string v5, "Failed to link to listener death"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v7

    move v4, v6

    goto :goto_1

    .line 146
    .end local v0    # "bl":Lcom/android/server/SecurityCenterService$SCListener;
    .end local v1    # "i":I
    .end local v2    # "rex":Landroid/os/RemoteException;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public delSCListener(Lmeizu/os/ISecurityCenterCallback;)Z
    .locals 5
    .param p1, "listener"    # Lmeizu/os/ISecurityCenterCallback;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "listener is null in delSCListener"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    const-string v2, "SecurityCenterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delSCListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecurityCenterService$SCListener;

    .line 157
    .local v0, "bl":Lcom/android/server/SecurityCenterService$SCListener;
    invoke-interface {p1}, Lmeizu/os/ISecurityCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/SecurityCenterService$SCListener;->mListener:Lmeizu/os/ISecurityCenterCallback;

    invoke-interface {v4}, Lmeizu/os/ISecurityCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/SecurityCenterService;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    const-string v2, "SecurityCenterService"

    const-string v4, "delSCListener success"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "bl":Lcom/android/server/SecurityCenterService$SCListener;
    :cond_2
    monitor-exit v3

    .line 164
    const/4 v2, 0x1

    return v2

    .line 163
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "SecurityCenterService"

    const-string v1, "onDaemonConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "onEvent::"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " raw= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    if-eqz p3, :cond_0

    .line 112
    const-string v5, " cooked = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 114
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    const-string v5, "SecurityCenterService"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v5, 0x1

    return v5
.end method

.method public declared-synchronized runCommand(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "bSync"    # Z

    .prologue
    const/4 v7, 0x1

    .line 197
    monitor-enter p0

    :try_start_0
    const-string v3, "SecurityCenterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runCommand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz p3, :cond_0

    .line 201
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SecurityCenterService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "SCCMD"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :goto_0
    monitor-exit p0

    return v7

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "SecurityCenterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 206
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/SecurityCenterService;->mSCHandler:Lcom/android/server/SecurityCenterService$SCHandler;

    const/16 v4, 0x64

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 209
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "token"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "cmd"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
