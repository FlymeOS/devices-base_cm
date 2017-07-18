.class public Lcyanogenmod/weather/ICMWeatherManager$NoOp;
.super Ljava/lang/Object;
.source "ICMWeatherManager.java"

# interfaces
.implements Lcyanogenmod/weather/ICMWeatherManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/ICMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelRequest(I)V
    .locals 0
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupCity(Lcyanogenmod/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method public updateWeather(Lcyanogenmod/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method
