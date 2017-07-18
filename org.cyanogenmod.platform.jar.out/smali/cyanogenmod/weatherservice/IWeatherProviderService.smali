.class public interface abstract Lcyanogenmod/weatherservice/IWeatherProviderService;
.super Ljava/lang/Object;
.source "IWeatherProviderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/IWeatherProviderService$NoOp;,
        Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelOngoingRequests()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
