.class final Lcyanogenmod/weather/WeatherLocation$1;
.super Ljava/lang/Object;
.source "WeatherLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherLocation;
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
        "Lcyanogenmod/weather/WeatherLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/weather/WeatherLocation;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 212
    new-instance v0, Lcyanogenmod/weather/WeatherLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/weather/WeatherLocation;-><init>(Landroid/os/Parcel;Lcyanogenmod/weather/WeatherLocation;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcyanogenmod/weather/WeatherLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/weather/WeatherLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/weather/WeatherLocation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 217
    new-array v0, p1, [Lcyanogenmod/weather/WeatherLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcyanogenmod/weather/WeatherLocation$1;->newArray(I)[Lcyanogenmod/weather/WeatherLocation;

    move-result-object v0

    return-object v0
.end method
