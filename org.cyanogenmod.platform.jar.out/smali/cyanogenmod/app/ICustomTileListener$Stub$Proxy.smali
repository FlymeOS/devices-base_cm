.class Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICustomTileListener.java"

# interfaces
.implements Lcyanogenmod/app/ICustomTileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ICustomTileListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 92
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string/jumbo v0, "cyanogenmod.app.ICustomTileListener"

    return-object v0
.end method

.method public onCustomTilePosted(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    .locals 5
    .param p1, "customTileHolder"    # Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 121
    iget-object v1, p0, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    return-void

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw v1
.end method

.method public onCustomTileRemoved(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    .locals 5
    .param p1, "customTileHolder"    # Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 133
    iget-object v1, p0, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 135
    :catchall_0
    move-exception v1

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    throw v1
.end method

.method public onListenerConnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    return-void

    .line 111
    :catchall_0
    move-exception v1

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw v1
.end method
