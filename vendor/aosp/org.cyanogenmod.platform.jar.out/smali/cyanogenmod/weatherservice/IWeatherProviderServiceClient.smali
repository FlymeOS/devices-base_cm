.class public interface abstract Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
.super Ljava/lang/Object;
.source "IWeatherProviderServiceClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$NoOp;,
        Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
