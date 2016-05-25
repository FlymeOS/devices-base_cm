.class public final Landroid/media/session/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;,
        Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_MUTE:I = -0x63

.field private static final TAG:Ljava/lang/String; = "SessionManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;",
            "Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/media/session/ISessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    .line 56
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 76
    const-string/jumbo v1, "media_session"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    .line 78
    return-void
.end method

.method static synthetic access$200(Landroid/media/session/MediaSessionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSessionManager;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 160
    return-void
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V
    .locals 5
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    if-nez p4, :cond_1

    .line 207
    new-instance p4, Landroid/os/Handler;

    .end local p4    # "handler":Landroid/os/Handler;
    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    .line 209
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 211
    const-string v2, "SessionManager"

    const-string v4, "Attempted to add session listener twice, ignoring."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v3

    .line 222
    :goto_0
    return-void

    .line 214
    :cond_2
    new-instance v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-direct {v1, p0, p1, p4}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;-><init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    # getter for: Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$000(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v4

    invoke-interface {v2, v4, p2, p3}, Landroid/media/session/ISessionManager;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    .line 217
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 218
    .restart local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "SessionManager"

    const-string v4, "Error in addOnActiveSessionsChangedListener."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    .locals 1
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 182
    return-void
.end method

.method public createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 2
    .param p1, "cbStub"    # Landroid/media/session/MediaSession$CallbackStub;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v0

    return-object v0
.end method

.method public dispatchAdjustVolume(III)V
    .locals 3
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->dispatchAdjustVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to send adjust volume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 269
    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to send key event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 8
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    :try_start_0
    iget-object v6, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v6, p1, p2}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 131
    .local v5, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 132
    new-instance v1, Landroid/media/session/MediaController;

    iget-object v7, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v1, v7, v6}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    .line 134
    .local v1, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v1    # "controller":Landroid/media/session/MediaController;
    .end local v4    # "i":I
    .end local v5    # "size":I
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "SessionManager"

    const-string v7, "Failed to get active sessions: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public isGlobalPriorityActive()Z
    .locals 3

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1}, Landroid/media/session/ISessionManager;->isGlobalPriorityActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to check if the global priority is active."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_0
    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 235
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    if-eqz v1, :cond_1

    .line 238
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    # getter for: Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$000(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 244
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v4, "Error in removeOnActiveSessionsChangedListener."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 3
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Error in setRemoteVolumeController."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
