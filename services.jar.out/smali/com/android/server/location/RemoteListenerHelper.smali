.class abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;,
        Lcom/android/server/location/RemoteListenerHelper$LinkedListener;,
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private mIsRegistered:Z

.field private mIsSupported:Z

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper",
            "<TT",
            "Listener;",
            ">.",
            "LinkedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    .line 50
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 161
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUnderlyingListener()Landroid/os/IInterface;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    goto :goto_0

    .line 163
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :cond_0
    return-void
.end method

.method private post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    if-eqz p2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_0
    return-void
.end method

.method private tryRegister()Z
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method private tryUnregister()V
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 56
    const-string v6, "Attempted to register a \'null\' listener."

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 58
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V

    .line 59
    .local v1, "deathListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v6, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 60
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    return v4

    .line 65
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-object v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v5

    if-nez v5, :cond_1

    .line 77
    const/4 v3, 0x1

    .line 93
    .local v3, "result":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 94
    monitor-exit v6

    goto :goto_0

    .end local v3    # "result":I
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 66
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    const-string v7, "Remote listener already died."

    invoke-static {v4, v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 78
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v5, :cond_2

    .line 79
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_1

    .line 80
    .end local v3    # "result":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    const/4 v3, 0x3

    .restart local v3    # "result":I
    goto :goto_1

    .line 82
    .end local v3    # "result":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z

    move-result v5

    if-nez v5, :cond_4

    .line 85
    const/4 v3, 0x4

    .restart local v3    # "result":I
    goto :goto_1

    .line 86
    .end local v3    # "result":I
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-eqz v5, :cond_5

    .line 87
    const/4 v3, 0x0

    .restart local v3    # "result":I
    goto :goto_1

    .line 91
    .end local v3    # "result":I
    :cond_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 147
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleGpsEnabledChanged(Z)V
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method public onGpsEnabledChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->handleGpsEnabledChanged(Z)V

    .line 117
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 118
    if-nez p1, :cond_0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 120
    monitor-exit v2

    .line 132
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    monitor-exit v2

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 125
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    monitor-exit v2

    goto :goto_0

    .line 129
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v0

    .line 130
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    invoke-direct {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 131
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected abstract registerWithService()Z
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v2, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 104
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 107
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v1, :cond_1

    .line 109
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 111
    :cond_1
    return-void

    .line 107
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected setSupported(ZLcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p2, "notifier":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 153
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    .line 155
    invoke-direct {p0, p2}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract unregisterFromService()V
.end method
