.class Lcyanogenmod/app/BaseLiveLockManagerService$1;
.super Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;
.source "BaseLiveLockManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/BaseLiveLockManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/app/BaseLiveLockManagerService;


# direct methods
.method constructor <init>(Lcyanogenmod/app/BaseLiveLockManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/app/BaseLiveLockManagerService;

    .prologue
    .line 178
    iput-object p1, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-direct {p0}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLiveLockScreen(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 191
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcyanogenmod/app/BaseLiveLockManagerService;->cancelLiveLockScreen(Ljava/lang/String;II)V

    .line 189
    return-void
.end method

.method public enqueueLiveLockScreen(Ljava/lang/String;ILcyanogenmod/app/LiveLockScreenInfo;[II)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;
    .param p4, "idReceived"    # [I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 183
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1, p3}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforceSamePackageOrSystem(Ljava/lang/String;Lcyanogenmod/app/LiveLockScreenInfo;)V

    .line 184
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcyanogenmod/app/BaseLiveLockManagerService;->enqueueLiveLockScreen(Ljava/lang/String;ILcyanogenmod/app/LiveLockScreenInfo;[II)V

    .line 181
    return-void
.end method

.method public getCurrentLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 197
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->getCurrentLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 209
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->getLiveLockScreenEnabled()Z

    move-result v0

    return v0
.end method

.method public registerChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforcePrivateAccessPermission()V

    .line 216
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1}, Lcyanogenmod/app/BaseLiveLockManagerService;->registerChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    return v0
.end method

.method public unregisterChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforcePrivateAccessPermission()V

    .line 223
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1}, Lcyanogenmod/app/BaseLiveLockManagerService;->unregisterChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    return v0
.end method

.method public updateDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 1
    .param p1, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lcyanogenmod/app/BaseLiveLockManagerService;->enforcePrivateAccessPermission()V

    .line 203
    iget-object v0, p0, Lcyanogenmod/app/BaseLiveLockManagerService$1;->this$0:Lcyanogenmod/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1}, Lcyanogenmod/app/BaseLiveLockManagerService;->updateDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V

    .line 201
    return-void
.end method
