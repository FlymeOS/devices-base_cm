.class public Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/ServiceRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLocationLookupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    .line 124
    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mLocationLookupList:Ljava/util/List;

    .line 122
    return-void
.end method

.method public constructor <init>(Lcyanogenmod/weather/WeatherInfo;)V
    .locals 2
    .param p1, "weatherInfo"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "WeatherInfo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Weather location list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mLocationLookupList:Ljava/util/List;

    .line 142
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/weatherservice/ServiceRequestResult;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcyanogenmod/weatherservice/ServiceRequestResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>(Lcyanogenmod/weatherservice/ServiceRequestResult;)V

    .line 156
    .local v0, "result":Lcyanogenmod/weatherservice/ServiceRequestResult;
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    invoke-static {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->-set2(Lcyanogenmod/weatherservice/ServiceRequestResult;Lcyanogenmod/weather/WeatherInfo;)Lcyanogenmod/weather/WeatherInfo;

    .line 157
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;->mLocationLookupList:Ljava/util/List;

    invoke-static {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->-set1(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/util/List;)Ljava/util/List;

    .line 158
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->-set0(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    return-object v0
.end method
