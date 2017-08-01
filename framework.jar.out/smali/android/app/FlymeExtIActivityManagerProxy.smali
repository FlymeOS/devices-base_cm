.class public Landroid/app/FlymeExtIActivityManagerProxy;
.super Ljava/lang/Object;
.source "FlymeExtIActivityManagerProxy.java"

# interfaces
.implements Landroid/app/FlymeExtIActivityManager;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.FlymeExtIActivityManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public killPid(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 63
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.FlymeExtIActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    const/16 v1, 0x2714

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 67
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 61
    return-void
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 20
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 21
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.FlymeExtIActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 23
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    if-eqz p4, :cond_0

    .line 25
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    :goto_0
    const/16 v2, 0x2711

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    return-void

    .line 28
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public removeTaskNotKillProcess(Landroid/os/IBinder;I)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 39
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 40
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.FlymeExtIActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    const/16 v3, 0x2712

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 45
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    return v2

    .line 44
    .end local v2    # "result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public scrollTopActivity(Landroid/os/IBinder;[Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "event"    # [Landroid/view/MotionEvent;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 73
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.FlymeExtIActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    array-length v2, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 77
    aget-object v2, p2, v1

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    :cond_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/16 v2, 0x2715

    const/4 v3, 0x1

    invoke-interface {p1, v2, v0, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 71
    return-void
.end method

.method public shrinkProcessMemory(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.FlymeExtIActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v1, 0x2713

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    return-void
.end method
