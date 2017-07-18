.class public Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo$DayForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mConditionCode:I

.field mHigh:D

.field mLow:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "conditionCode"    # I

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-wide v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mLow:D

    .line 445
    iput-wide v0, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mHigh:D

    .line 455
    invoke-static {p1}, Lcyanogenmod/weather/WeatherInfo;->-wrap0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid weather condition code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mConditionCode:I

    .line 454
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/weather/WeatherInfo$DayForecast;
    .locals 4

    .prologue
    .line 494
    new-instance v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/WeatherInfo$DayForecast;-><init>(Lcyanogenmod/weather/WeatherInfo$DayForecast;)V

    .line 495
    .local v0, "forecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mLow:D

    iput-wide v2, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mLow:D

    .line 496
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mHigh:D

    iput-wide v2, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mHigh:D

    .line 497
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mConditionCode:I

    iput v1, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mConditionCode:I

    .line 498
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;->mKey:Ljava/lang/String;

    .line 499
    return-object v0
.end method

.method public setHigh(D)Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
    .locals 3
    .param p1, "high"    # D

    .prologue
    .line 467
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid high forecast temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mHigh:D

    .line 471
    return-object p0
.end method

.method public setLow(D)Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;
    .locals 3
    .param p1, "low"    # D

    .prologue
    .line 480
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid low forecast temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$DayForecast$Builder;->mLow:D

    .line 484
    return-object p0
.end method
