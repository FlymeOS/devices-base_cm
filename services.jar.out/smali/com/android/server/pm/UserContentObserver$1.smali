.class Lcom/android/server/pm/UserContentObserver$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserContentObserver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserContentObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserContentObserver;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/pm/UserContentObserver$1;->this$0:Lcom/android/server/pm/UserContentObserver;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/pm/UserContentObserver$1;->this$0:Lcom/android/server/pm/UserContentObserver;

    invoke-static {v0}, Lcom/android/server/pm/UserContentObserver;->-get0(Lcom/android/server/pm/UserContentObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserContentObserver$1;->this$0:Lcom/android/server/pm/UserContentObserver;

    invoke-static {v1}, Lcom/android/server/pm/UserContentObserver;->-get1(Lcom/android/server/pm/UserContentObserver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 37
    return-void
.end method
