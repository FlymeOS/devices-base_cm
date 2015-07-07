.class final Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;
.super Landroid/service/trust/ITrustAgentService$Stub;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustAgentServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method private constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/service/trust/ITrustAgentService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p2, "x1"    # Landroid/service/trust/TrustAgentService$1;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;)V

    return-void
.end method


# virtual methods
.method public onTrustTimeout()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .locals 4
    .param p1, "successful"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    return-void

    :cond_0
    move v0, v2

    .line 289
    goto :goto_0
.end method

.method public setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .prologue
    .line 299
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # setter for: Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-static {v1, p1}, Landroid/service/trust/TrustAgentService;->access$102(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)Landroid/service/trust/ITrustAgentServiceCallback;

    .line 303
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mManagingTrust:Z
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$500(Landroid/service/trust/TrustAgentService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v1

    iget-object v3, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mManagingTrust:Z
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->access$500(Landroid/service/trust/TrustAgentService;)Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$600(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$600(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 312
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    const/4 v3, 0x0

    # setter for: Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    invoke-static {v1, v3}, Landroid/service/trust/TrustAgentService;->access$602(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 314
    :cond_1
    monitor-exit v2

    .line 315
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v3, "calling setManagingTrust()"

    # invokes: Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/service/trust/TrustAgentService;->access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setTrustAgentFeaturesEnabled(Landroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "features"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 319
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 321
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 322
    return-void
.end method
