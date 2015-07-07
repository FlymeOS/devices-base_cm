.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$CallbackMessageHandler;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$Token;,
        Landroid/media/session/MediaSession$PlayItemToken;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private mActive:Z

.field private final mBinder:Landroid/media/session/ISession;

.field private mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private final mController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    .line 117
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/session/MediaSession;->mActive:Z

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "tag cannot be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_1
    new-instance v2, Landroid/media/session/MediaSession$CallbackStub;

    invoke-direct {v2, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    .line 151
    const-string/jumbo v2, "media_session"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 154
    .local v1, "manager":Landroid/media/session/MediaSessionManager;
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    invoke-virtual {v1, v2, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v2

    iput-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 155
    new-instance v2, Landroid/media/session/MediaSession$Token;

    iget-object v3, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v3}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 156
    new-instance v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v2, p1, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Remote error creating session."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$1000(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchStop()V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchNext()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPrevious()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchFastForward()V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchRewind()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/session/MediaSession;J)V
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSeekTo(J)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/session/MediaSession;Landroid/media/Rating;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/Rating;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/Rating;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchSetBrowsedPlayerCommand()V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/session/MediaSession;JI)V
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchSetPlayItemCommand(JI)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchGetNowPlayingItemsCommand()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/os/ResultReceiver;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPlay()V

    return-void
.end method

.method static synthetic access$600(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/session/MediaSession;J)V
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSkipToItem(J)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPause()V

    return-void
.end method

.method private dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 585
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 586
    return-void
.end method

.method private dispatchFastForward()V
    .locals 1

    .prologue
    .line 569
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 570
    return-void
.end method

.method private dispatchGetNowPlayingItemsCommand()V
    .locals 1

    .prologue
    .line 613
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 614
    return-void
.end method

.method private dispatchMediaButton(Landroid/content/Intent;)V
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 617
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 618
    return-void
.end method

.method private dispatchNext()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 562
    return-void
.end method

.method private dispatchPause()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 554
    return-void
.end method

.method private dispatchPlay()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 538
    return-void
.end method

.method private dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 541
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 542
    return-void
.end method

.method private dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 545
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 546
    return-void
.end method

.method private dispatchPrevious()V
    .locals 1

    .prologue
    .line 565
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 566
    return-void
.end method

.method private dispatchRate(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 581
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method private dispatchRewind()V
    .locals 1

    .prologue
    .line 573
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 574
    return-void
.end method

.method private dispatchSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 577
    const/16 v0, 0xb

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 578
    return-void
.end method

.method private dispatchSetBrowsedPlayerCommand()V
    .locals 1

    .prologue
    .line 589
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 590
    return-void
.end method

.method private dispatchSetPlayItemCommand(JI)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 593
    new-instance v0, Landroid/media/session/MediaSession$PlayItemToken;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/session/MediaSession$PlayItemToken;-><init>(Landroid/media/session/MediaSession;JI)V

    .line 594
    .local v0, "playItemToken":Landroid/media/session/MediaSession$PlayItemToken;
    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 595
    return-void
.end method

.method private dispatchSkipToItem(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 549
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 550
    return-void
.end method

.method private dispatchStop()V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    .line 558
    return-void
.end method

.method public static isActiveState(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 647
    packed-switch p0, :pswitch_data_0

    .line 657
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 655
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultCb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 625
    new-instance v0, Landroid/media/session/MediaSession$Command;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 626
    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 627
    return-void
.end method

.method private postToCallback(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 622
    return-void
.end method

.method private postToCallback(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 631
    return-void
.end method

.method private postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 634
    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 638
    :cond_0
    monitor-exit v1

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    return v0
.end method

.method public notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/media/VolumeProvider;

    .prologue
    .line 525
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eq p1, v1, :cond_1

    .line 526
    :cond_0
    const-string v1, "MediaSession"

    const-string v2, "Received update from stale volume provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-void

    .line 530
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error in notifyVolumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playItemResponse(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 470
    const-string v1, "MediaSession"

    const-string v2, "MediaSession: playItemResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->playItemResponse(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in playItemResponse."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1}, Landroid/media/session/ISession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error releasing session: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error sending event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 315
    iget-boolean v1, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-ne v1, p1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setActive(Z)V

    .line 320
    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setActive."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 173
    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 185
    iget-object v3, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 186
    if-nez p1, :cond_1

    .line 187
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    # getter for: Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;
    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v2

    const/4 v4, 0x0

    # setter for: Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;
    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 190
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 191
    monitor-exit v3

    .line 206
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    # getter for: Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;
    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v2

    const/4 v4, 0x0

    # setter for: Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;
    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 198
    :cond_2
    if-nez p2, :cond_3

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .end local p2    # "handler":Landroid/os/Handler;
    .local v0, "handler":Landroid/os/Handler;
    move-object p2, v0

    .line 201
    .end local v0    # "handler":Landroid/os/Handler;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3
    # setter for: Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 202
    new-instance v1, Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    .line 204
    .local v1, "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 205
    monitor-exit v3

    goto :goto_0

    .end local v1    # "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setExtras."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setMediaButtonReceiver."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 395
    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 397
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attributes cannot be null for local playback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToLocal."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .locals 4
    .param p1, "volumeProvider"    # Landroid/media/VolumeProvider;

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "volumeProvider may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_0
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 290
    new-instance v1, Landroid/media/session/MediaSession$1;

    invoke-direct {v1, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    invoke-virtual {p1, v1}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/media/session/ISession;->setPlaybackToRemote(II)V

    .line 300
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
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
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToRemote."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/media/session/ISession;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    .line 434
    :goto_1
    return-void

    .line 430
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueue."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueueTitle."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setLaunchPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v1, "MediaSession"

    const-string v2, "MediaSession: updateFolderInfoBrowsedPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->updateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in updateFolderInfoBrowsedPlayer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateNowPlayingContentChange()V
    .locals 3

    .prologue
    .line 509
    const-string v1, "MediaSession"

    const-string v2, "MediaSession: updateNowPlayingContentChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1}, Landroid/media/session/ISession;->updateNowPlayingContentChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in updateNowPlayingContentChange."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateNowPlayingEntries([J)V
    .locals 3
    .param p1, "playList"    # [J

    .prologue
    .line 483
    const-string v1, "MediaSession"

    const-string v2, "MediaSession: updateNowPlayingEntries"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->updateNowPlayingEntries([J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in updateNowPlayingEntries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
