.class Landroid/media/RemoteController$MediaControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor <init>(Landroid/media/RemoteController;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/RemoteController;
    .param p2, "x1"    # Landroid/media/RemoteController$1;

    .prologue
    .line 782
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 790
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    invoke-static {v0, p1}, Landroid/media/RemoteController;->access$900(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    .line 791
    return-void
.end method

.method public onPlayItemResponse(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 813
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onPlayItemResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-virtual {v0, p1}, Landroid/media/RemoteController;->onSetPlayItemResponse(Z)V

    .line 815
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 785
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    invoke-static {v0, p1}, Landroid/media/RemoteController;->access$800(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    .line 786
    return-void
.end method

.method public onUpdateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 795
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onUpdateFolderInfoBrowsedPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-virtual {v0, p1}, Landroid/media/RemoteController;->onFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public onUpdateNowPlayingContentChange()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onUpdateNowPlayingContentChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-virtual {v0}, Landroid/media/RemoteController;->onNowPlayingContentChange()V

    .line 809
    return-void
.end method

.method public onUpdateNowPlayingEntries([J)V
    .locals 2
    .param p1, "playList"    # [J

    .prologue
    .line 801
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onUpdateNowPlayingEntries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-virtual {v0, p1}, Landroid/media/RemoteController;->onNowPlayingEntriesUpdate([J)V

    .line 803
    return-void
.end method
