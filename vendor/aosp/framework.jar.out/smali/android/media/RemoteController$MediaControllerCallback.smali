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
    .param p1, "this$0"    # Landroid/media/RemoteController;

    .prologue
    .line 781
    iput-object p1, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController$MediaControllerCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 789
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0, p1}, Landroid/media/RemoteController;->-wrap3(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    .line 788
    return-void
.end method

.method public onPlayItemResponse(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 812
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "MediaControllerCallback: onPlayItemResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0, p1}, Landroid/media/RemoteController;->-wrap11(Landroid/media/RemoteController;Z)V

    .line 811
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 784
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0, p1}, Landroid/media/RemoteController;->-wrap7(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    .line 783
    return-void
.end method

.method public onUpdateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 794
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "MediaControllerCallback: onUpdateFolderInfoBrowsedPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0, p1}, Landroid/media/RemoteController;->-wrap2(Landroid/media/RemoteController;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public onUpdateNowPlayingContentChange()V
    .locals 2

    .prologue
    .line 806
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "MediaControllerCallback: onUpdateNowPlayingContentChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0}, Landroid/media/RemoteController;->-wrap9(Landroid/media/RemoteController;)V

    .line 805
    return-void
.end method

.method public onUpdateNowPlayingEntries([J)V
    .locals 2
    .param p1, "playList"    # [J

    .prologue
    .line 800
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "MediaControllerCallback: onUpdateNowPlayingEntries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-static {v0, p1}, Landroid/media/RemoteController;->-wrap10(Landroid/media/RemoteController;[J)V

    .line 799
    return-void
.end method
