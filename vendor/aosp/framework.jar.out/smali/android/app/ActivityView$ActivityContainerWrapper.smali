.class Landroid/app/ActivityView$ActivityContainerWrapper;
.super Ljava/lang/Object;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityContainerWrapper"
.end annotation


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mIActivityContainer:Landroid/app/IActivityContainer;

.field mOpened:Z


# direct methods
.method constructor <init>(Landroid/app/IActivityContainer;)V
    .locals 2
    .param p1, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    .line 446
    iput-object p1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z

    .line 448
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 445
    return-void
.end method


# virtual methods
.method attachToDisplay(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->attachToDisplay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 514
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 516
    invoke-virtual {p0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 511
    return-void

    .line 518
    :catchall_0
    move-exception v0

    .line 519
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 518
    throw v0
.end method

.method getDisplayId()I
    .locals 2

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1}, Landroid/app/IActivityContainer;->getDisplayId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method injectEvent(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->injectEvent(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method release()V
    .locals 3

    .prologue
    .line 497
    iget-object v2, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    .line 498
    :try_start_0
    iget-boolean v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 501
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1}, Landroid/app/IActivityContainer;->release()V

    .line 502
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v2

    .line 496
    return-void

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 503
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setSurface(Landroid/view/Surface;III)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V

    .line 459
    return-void
.end method

.method startActivity(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityView: Unable to startActivity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startActivityIntentSender(Landroid/content/IIntentSender;)I
    .locals 4
    .param p1, "intentSender"    # Landroid/content/IIntentSender;

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->startActivityIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityView: Unable to startActivity from IntentSender. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
