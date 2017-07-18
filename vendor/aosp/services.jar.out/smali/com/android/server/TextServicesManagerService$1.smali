.class Lcom/android/server/TextServicesManagerService$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v1, p1}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 111
    if-eqz p2, :cond_0

    .line 113
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 114
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
