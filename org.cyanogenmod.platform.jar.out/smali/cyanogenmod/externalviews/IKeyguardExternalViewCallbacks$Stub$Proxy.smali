.class Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyguardExternalViewCallbacks.java"

# interfaces
.implements Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;
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
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 139
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public collapseNotificationPanel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    return-void

    .line 199
    :catchall_0
    move-exception v1

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    return-void

    .line 222
    :catchall_0
    move-exception v1

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v1
.end method

.method public onDetachedFromWindow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return-void

    .line 233
    :catchall_0
    move-exception v1

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw v1
.end method

.method public requestDismiss()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 163
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    return v2

    .line 160
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 162
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v3
.end method

.method public requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    :goto_0
    iget-object v3, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 187
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    return v2

    .line 180
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v3

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v3

    .line 184
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setInteractivity(Z)V
    .locals 5
    .param p1, "isInteractive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 207
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v1, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    return-void

    .line 208
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw v1
.end method

.method public slideLockscreenIn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 241
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    return-void

    .line 244
    :catchall_0
    move-exception v1

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v1
.end method
