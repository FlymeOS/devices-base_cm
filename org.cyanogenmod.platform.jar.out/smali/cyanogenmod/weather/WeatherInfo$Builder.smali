.class public Lcyanogenmod/weather/WeatherInfo$Builder;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCity:Ljava/lang/String;

.field private mConditionCode:I

.field private mForecastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation
.end field

.field private mHumidity:D

.field private mTempUnit:I

.field private mTemperature:D

.field private mTimestamp:J

.field private mTodaysHighTemp:D

.field private mTodaysLowTemp:D

.field private mWindDirection:D

.field private mWindSpeed:D

.field private mWindSpeedUnit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DI)V
    .locals 4
    .param p1, "cityName"    # Ljava/lang/String;
    .param p2, "temperature"    # D
    .param p4, "tempUnit"    # I

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0xc80

    iput v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    .line 70
    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    .line 71
    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    .line 72
    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:D

    .line 73
    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:D

    .line 74
    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:D

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    invoke-direct {p0, p4}, Lcyanogenmod/weather/WeatherInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    .line 100
    iput-wide p2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTemperature:D

    .line 101
    iput p4, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTempUnit:I

    .line 89
    return-void
.end method

.method private isValidTempUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 238
    const/4 v0, 0x0

    return v0

    .line 236
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidWindSpeedUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 248
    const/4 v0, 0x0

    return v0

    .line 246
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcyanogenmod/weather/WeatherInfo;
    .locals 6

    .prologue
    .line 215
    new-instance v0, Lcyanogenmod/weather/WeatherInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/WeatherInfo;-><init>(Lcyanogenmod/weather/WeatherInfo;)V

    .line 216
    .local v0, "info":Lcyanogenmod/weather/WeatherInfo;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set0(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set1(Lcyanogenmod/weather/WeatherInfo;I)I

    .line 218
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTemperature:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set6(Lcyanogenmod/weather/WeatherInfo;D)D

    .line 219
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set5(Lcyanogenmod/weather/WeatherInfo;I)I

    .line 220
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set3(Lcyanogenmod/weather/WeatherInfo;D)D

    .line 221
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set11(Lcyanogenmod/weather/WeatherInfo;D)D

    .line 222
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set10(Lcyanogenmod/weather/WeatherInfo;D)D

    .line 223
    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set12(Lcyanogenmod/weather/WeatherInfo;I)I

    .line 224
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set7(Lcyanogenmod/weather/WeatherInfo;J)J

    .line 225
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set2(Lcyanogenmod/weather/WeatherInfo;Ljava/util/List;)Ljava/util/List;

    .line 226
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set8(Lcyanogenmod/weather/WeatherInfo;D)D

    .line 227
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set9(Lcyanogenmod/weather/WeatherInfo;D)D

    .line 228
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set4(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    return-object v0

    .line 224
    :cond_0
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    goto :goto_0
.end method

.method public setForecast(Ljava/util/List;)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;)",
            "Lcyanogenmod/weather/WeatherInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "forecasts":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherInfo$DayForecast;>;"
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Forecast list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    .line 180
    return-object p0
.end method

.method public setHumidity(D)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "humidity"    # D

    .prologue
    .line 120
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid humidity value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:D

    .line 125
    return-object p0
.end method

.method public setTimestamp(J)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    .line 111
    return-object p0
.end method

.method public setTodaysHigh(D)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "todaysHigh"    # D

    .prologue
    .line 190
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    .line 194
    return-object p0
.end method

.method public setTodaysLow(D)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "todaysLow"    # D

    .prologue
    .line 203
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    .line 207
    return-object p0
.end method

.method public setWeatherCondition(I)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "conditionCode"    # I

    .prologue
    .line 163
    invoke-static {p1}, Lcyanogenmod/weather/WeatherInfo;->-wrap0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid weather condition code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    .line 167
    return-object p0
.end method

.method public setWind(DDI)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "windSpeed"    # D
    .param p3, "windDirection"    # D
    .param p5, "windSpeedUnit"    # I

    .prologue
    .line 140
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid wind speed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid wind direction value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    invoke-direct {p0, p5}, Lcyanogenmod/weather/WeatherInfo$Builder;->isValidWindSpeedUnit(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid speed unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:D

    .line 150
    iput p5, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    .line 151
    iput-wide p3, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:D

    .line 152
    return-object p0
.end method
