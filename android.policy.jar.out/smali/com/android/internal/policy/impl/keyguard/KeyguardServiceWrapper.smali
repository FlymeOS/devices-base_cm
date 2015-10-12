.class public Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

.field private mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "KeyguardServiceWrapper"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 44
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    .line 45
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDismissable()Z
    .locals 3

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isDismissable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->isInputRestrictedExtended()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->isSecureExtended()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->isShowingExtended()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 3

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isShowingAndNotOccluded()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 3
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->keyguardDone(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityDrawn()V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDreamingStarted()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDreamingStopped()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->setCurrentUser(I)V

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOccluded(Z)I
    .locals 3
    .param p1, "isOccluded"    # Z

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showAssistant()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
