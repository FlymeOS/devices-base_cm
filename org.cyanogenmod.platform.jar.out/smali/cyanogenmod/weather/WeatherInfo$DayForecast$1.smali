.class final Lcyanogenmod/weather/WeatherInfo$DayForecast$1;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo$DayForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/weather/WeatherInfo$DayForecast;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 548
    new-instance v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/weather/WeatherInfo$DayForecast;-><init>(Landroid/os/Parcel;Lcyanogenmod/weather/WeatherInfo$DayForecast;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcyanogenmod/weather/WeatherInfo$DayForecast$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/weather/WeatherInfo$DayForecast;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/weather/WeatherInfo$DayForecast;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 553
    new-array v0, p1, [Lcyanogenmod/weather/WeatherInfo$DayForecast;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcyanogenmod/weather/WeatherInfo$DayForecast$1;->newArray(I)[Lcyanogenmod/weather/WeatherInfo$DayForecast;

    move-result-object v0

    return-object v0
.end method
