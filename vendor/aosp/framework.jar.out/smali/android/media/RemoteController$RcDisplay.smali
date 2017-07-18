.class Landroid/media/RemoteController$RcDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcDisplay"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/RemoteController;)V
    .locals 1
    .param p1, "rc"    # Landroid/media/RemoteController;

    .prologue
    .line 634
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 635
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    .line 634
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 750
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 751
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 752
    return-void

    .line 755
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 756
    return-void

    .line 758
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 759
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_2

    monitor-exit v0

    .line 760
    return-void

    :cond_2
    monitor-exit v0

    .line 763
    if-nez p2, :cond_3

    .line 764
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "metadata":Landroid/os/Bundle;
    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 766
    .restart local p2    # "metadata":Landroid/os/Bundle;
    :cond_3
    if-eqz p3, :cond_4

    .line 767
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 770
    :cond_4
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 749
    return-void

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 732
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 733
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 734
    return-void

    .line 737
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 738
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_1

    monitor-exit v0

    .line 739
    return-void

    :cond_1
    monitor-exit v0

    .line 742
    new-instance v5, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 743
    .local v5, "metadata":Landroid/os/Bundle;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 744
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 731
    return-void

    .line 737
    .end local v5    # "metadata":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "genId"    # I
    .param p2, "clientMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/RemoteController;

    .line 641
    .local v10, "rc":Landroid/media/RemoteController;
    if-nez v10, :cond_0

    .line 642
    return-void

    .line 644
    :cond_0
    const/4 v9, 0x0

    .line 645
    .local v9, "isNew":Z
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 646
    :try_start_0
    invoke-static {v10}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 647
    invoke-static {v10, p1}, Landroid/media/RemoteController;->-set0(Landroid/media/RemoteController;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    const/4 v9, 0x1

    :cond_1
    monitor-exit v2

    .line 651
    if-eqz p2, :cond_2

    .line 652
    invoke-static {v10}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    move v2, v1

    move v3, p1

    move v4, v1

    move-object v5, p2

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 655
    :cond_2
    if-nez v9, :cond_3

    if-eqz p3, :cond_4

    .line 656
    :cond_3
    invoke-static {v10}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v2

    .line 657
    if-eqz p3, :cond_5

    const/4 v6, 0x1

    .line 656
    :goto_0
    const/4 v3, 0x4

    move v4, v1

    move v5, p1

    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 639
    :cond_4
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    move v6, v1

    .line 657
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 663
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 664
    return-void

    .line 666
    :cond_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    .line 667
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 666
    :goto_0
    const/4 v1, 0x5

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 661
    return-void

    :cond_1
    move v3, v2

    .line 667
    goto :goto_0
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 713
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 714
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 715
    return-void

    .line 718
    :cond_0
    if-nez p2, :cond_1

    .line 719
    return-void

    .line 721
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 722
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_2

    monitor-exit v0

    .line 723
    return-void

    :cond_2
    monitor-exit v0

    .line 726
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 712
    return-void

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setPlaybackState(IIJJF)V
    .locals 9
    .param p1, "genId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    .prologue
    .line 672
    iget-object v1, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RemoteController;

    .line 673
    .local v8, "rc":Landroid/media/RemoteController;
    if-nez v8, :cond_0

    .line 674
    return-void

    .line 684
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 685
    :try_start_0
    invoke-static {v8}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eq v2, p1, :cond_1

    monitor-exit v1

    .line 686
    return-void

    :cond_1
    monitor-exit v1

    .line 690
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 691
    .local v0, "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    invoke-static {v8}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 692
    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p1

    move-object v6, v0

    .line 691
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 671
    return-void

    .line 684
    .end local v0    # "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public setTransportControlInfo(III)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I
    .param p3, "posCapabilities"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 698
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 699
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 700
    return-void

    .line 702
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 703
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_1

    monitor-exit v0

    .line 704
    return-void

    :cond_1
    monitor-exit v0

    .line 707
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x2

    move v3, p1

    move v4, p2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap12(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 697
    return-void

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
