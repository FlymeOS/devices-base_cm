.class public interface abstract Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
.super Ljava/lang/Object;
.source "IWeatherServiceProviderChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$NoOp;,
        Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWeatherServiceProviderChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
