.class public abstract Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;
.super Landroid/os/Binder;
.source "IWeatherProviderService.java"

# interfaces
.implements Lcyanogenmod/weatherservice/IWeatherProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/IWeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.weatherservice.IWeatherProviderService"

.field static final TRANSACTION_cancelOngoingRequests:I = 0x4

.field static final TRANSACTION_cancelRequest:I = 0x5

.field static final TRANSACTION_processCityNameLookupRequest:I = 0x2

.field static final TRANSACTION_processWeatherUpdateRequest:I = 0x1

.field static final TRANSACTION_setServiceClient:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string/jumbo v0, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/weatherservice/IWeatherProviderService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 49
    return-object v1

    .line 51
    :cond_0
    const-string/jumbo v1, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/weatherservice/IWeatherProviderService;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcyanogenmod/weatherservice/IWeatherProviderService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 55
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 63
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 67
    :sswitch_0
    const-string/jumbo v3, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v4

    .line 72
    :sswitch_1
    const-string/jumbo v3, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    sget-object v3, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/weather/RequestInfo;

    .line 80
    :goto_0
    invoke-virtual {p0, v1}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V

    .line 81
    return v4

    .line 78
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_0

    .line 85
    .end local v1    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_2
    const-string/jumbo v3, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    sget-object v3, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/weather/RequestInfo;

    .line 93
    :goto_1
    invoke-virtual {p0, v1}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V

    .line 94
    return v4

    .line 91
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    goto :goto_1

    .line 98
    .end local v1    # "_arg0":Lcyanogenmod/weather/RequestInfo;
    :sswitch_3
    const-string/jumbo v3, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    move-result-object v2

    .line 101
    .local v2, "_arg0":Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    invoke-virtual {p0, v2}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V

    .line 102
    return v4

    .line 106
    .end local v2    # "_arg0":Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    :sswitch_4
    const-string/jumbo v3, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->cancelOngoingRequests()V

    .line 108
    return v4

    .line 112
    :sswitch_5
    const-string/jumbo v3, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->cancelRequest(I)V

    .line 116
    return v4

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
