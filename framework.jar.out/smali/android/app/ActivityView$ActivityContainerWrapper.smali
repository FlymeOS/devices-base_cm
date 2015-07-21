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
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    .line 360
    iput-object p1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z

    .line 362
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 363
    return-void
.end method


# virtual methods
.method attachToDisplay(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v0, p1}, Landroid/app/IActivityContainer;->attachToDisplay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method checkEmbeddedAllowed(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->checkEmbeddedAllowed(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityView: Unable to startActivity from Intent. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method checkEmbeddedAllowedIntentSender(Landroid/content/IIntentSender;)V
    .locals 4
    .param p1, "intentSender"    # Landroid/content/IIntentSender;

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->checkEmbeddedAllowedIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityView: Unable to startActivity from IntentSender. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 448
    invoke-virtual {p0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 453
    return-void

    .line 451
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getDisplayId()I
    .locals 2

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1}, Landroid/app/IActivityContainer;->getDisplayId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 416
    :goto_0
    return v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method injectEvent(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->injectEvent(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 424
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method release()V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-boolean v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 433
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v0}, Landroid/app/IActivityContainer;->release()V

    .line 434
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mOpened:Z

    .line 439
    :cond_0
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 435
    :catch_0
    move-exception v0

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
    .line 374
    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V

    .line 375
    return-void
.end method

.method startActivity(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityView: Unable to startActivity. "

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
    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerWrapper;->mIActivityContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1, p1}, Landroid/app/IActivityContainer;->startActivityIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityView: Unable to startActivity from IntentSender. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
