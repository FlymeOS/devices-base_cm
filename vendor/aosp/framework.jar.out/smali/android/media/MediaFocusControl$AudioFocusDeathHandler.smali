.class public Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 600
    iput-object p1, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p2, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 602
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 605
    # getter for: Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 606
    :try_start_0
    const-string v0, "MediaFocusControl"

    const-string v2, "  AudioFocus   audio focus client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v2, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    # invokes: Landroid/media/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$2100(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V

    .line 608
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
