.class Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRequestInfoListener.java"

# interfaces
.implements Lcyanogenmod/weather/IRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/IRequestInfoListener$Stub;
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

    .line 108
    iput-object p1, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "cyanogenmod.weather.IRequestInfoListener"

    return-object v0
.end method

.method public onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V
    .locals 5
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcyanogenmod/weather/RequestInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    .local p3, "weatherLocation":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 158
    iget-object v1, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-void

    .line 154
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    throw v1
.end method

.method public onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    .locals 5
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "status"    # I
    .param p3, "weatherInfo"    # Lcyanogenmod/weather/WeatherInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "cyanogenmod.weather.IRequestInfoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    if-eqz p3, :cond_1

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcyanogenmod/weather/WeatherInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    :goto_1
    iget-object v1, p0, Lcyanogenmod/weather/IRequestInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    return-void

    .line 128
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw v1

    .line 136
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
