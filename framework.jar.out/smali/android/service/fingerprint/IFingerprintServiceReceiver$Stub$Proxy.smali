.class Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/service/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;
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
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 108
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "android.service.fingerprint.IFingerprintServiceReceiver"

    return-object v0
.end method

.method public onAcquired(I)V
    .locals 5
    .param p1, "acquiredInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 134
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v1, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onEnrollResult(II)V
    .locals 5
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v1, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onError(I)V
    .locals 5
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v1, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onProcessed(I)V
    .locals 5
    .param p1, "fingerprintId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 146
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v1, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onRemoved(I)V
    .locals 5
    .param p1, "fingerprintId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onStateChanged(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v1, p0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
