.class Landroid/media/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4690
    iput-object p1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    .line 4691
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4692
    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4694
    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_link_notification"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4696
    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4698
    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_keys_control_ring_stream"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4700
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4704
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4709
    iget-object v3, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4710
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4715
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v5

    const/4 v6, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v4, v5, v6}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;IZ)V

    .line 4717
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    # invokes: Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;Landroid/content/ContentResolver;)V

    .line 4719
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volume_link_notification"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    move v0, v1

    .line 4721
    .local v0, "linkNotificationWithVolume":Z
    :goto_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mLinkNotificationWithVolume:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;)Z

    move-result v4

    if-eq v0, v4, :cond_1

    .line 4722
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mLinkNotificationWithVolume:Z
    invoke-static {v4, v0}, Landroid/media/AudioService;->access$8802(Landroid/media/AudioService;Z)Z

    .line 4723
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->createStreamStates()V
    invoke-static {v4}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)V

    .line 4724
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    # invokes: Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V
    invoke-static {v4, v5}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;Z)V

    .line 4726
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "volume_keys_control_ring_stream"

    const/4 v7, 0x1

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_3

    :goto_1
    # setter for: Landroid/media/AudioService;->mVolumeKeysControlRingStream:Z
    invoke-static {v4, v1}, Landroid/media/AudioService;->access$9102(Landroid/media/AudioService;Z)Z

    .line 4729
    monitor-exit v3

    .line 4730
    return-void

    .end local v0    # "linkNotificationWithVolume":Z
    :cond_2
    move v0, v2

    .line 4719
    goto :goto_0

    .restart local v0    # "linkNotificationWithVolume":Z
    :cond_3
    move v1, v2

    .line 4726
    goto :goto_1

    .line 4729
    .end local v0    # "linkNotificationWithVolume":Z
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
