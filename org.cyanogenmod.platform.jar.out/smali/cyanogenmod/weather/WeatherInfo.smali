.class public final Lcyanogenmod/weather/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/WeatherInfo$Builder;,
        Lcyanogenmod/weather/WeatherInfo$DayForecast;,
        Lcyanogenmod/weather/WeatherInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weather/WeatherInfo;",
            ">;"
        }
    .end annotation
.end field


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

.field private mKey:Ljava/lang/String;

.field private mTempUnit:I

.field private mTemperature:D

.field private mTimestamp:J

.field private mTodaysHighTemp:D

.field private mTodaysLowTemp:D

.field private mWindDirection:D

.field private mWindSpeed:D

.field private mWindSpeedUnit:I


# direct methods
.method static synthetic -set0(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    return p1
.end method

.method static synthetic -set10(Lcyanogenmod/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:D

    return-wide p1
.end method

.method static synthetic -set11(Lcyanogenmod/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:D

    return-wide p1
.end method

.method static synthetic -set12(Lcyanogenmod/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    return p1
.end method

.method static synthetic -set2(Lcyanogenmod/weather/WeatherInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set3(Lcyanogenmod/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:D

    return-wide p1
.end method

.method static synthetic -set4(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcyanogenmod/weather/WeatherInfo;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    return p1
.end method

.method static synthetic -set6(Lcyanogenmod/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:D

    return-wide p1
.end method

.method static synthetic -set7(Lcyanogenmod/weather/WeatherInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic -set8(Lcyanogenmod/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysHighTemp:D

    return-wide p1
.end method

.method static synthetic -set9(Lcyanogenmod/weather/WeatherInfo;D)D
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysLowTemp:D

    return-wide p1
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    invoke-static {p0}, Lcyanogenmod/weather/WeatherInfo;->isValidWeatherCode(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcyanogenmod/weather/WeatherInfo$1;

    invoke-direct {v0}, Lcyanogenmod/weather/WeatherInfo$1;-><init>()V

    .line 412
    sput-object v0, Lcyanogenmod/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 353
    .local v1, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v2

    .line 355
    .local v2, "parcelableVersion":I
    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:D

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:D

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:D

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:D

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysHighTemp:D

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysLowTemp:D

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .local v0, "forecastListSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    .line 370
    :goto_0
    if-lez v0, :cond_0

    .line 371
    iget-object v4, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    sget-object v3, Lcyanogenmod/weather/WeatherInfo$DayForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 377
    .end local v0    # "forecastListSize":I
    :cond_0
    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weather/WeatherInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weather/WeatherInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weather/WeatherInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weather/WeatherInfo;-><init>()V

    return-void
.end method

.method private static isValidWeatherCode(I)Z
    .locals 2
    .param p0, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 255
    if-ltz p0, :cond_0

    .line 256
    const/16 v0, 0x2c

    if-le p0, v0, :cond_1

    .line 257
    :cond_0
    const/16 v0, 0xc80

    if-eq p0, v0, :cond_1

    .line 258
    return v1

    .line 261
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 632
    if-nez p1, :cond_0

    return v3

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/weather/WeatherInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 635
    check-cast v0, Lcyanogenmod/weather/WeatherInfo;

    .line 636
    .local v0, "info":Lcyanogenmod/weather/WeatherInfo;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/weather/WeatherInfo;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 638
    .end local v0    # "info":Lcyanogenmod/weather/WeatherInfo;
    :cond_1
    return v3
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionCode()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    return v0
.end method

.method public getForecasts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHumidity()D
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:D

    return-wide v0
.end method

.method public getTemperature()D
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:D

    return-wide v0
.end method

.method public getTemperatureUnit()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTodaysHigh()D
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysHighTemp:D

    return-wide v0
.end method

.method public getTodaysLow()D
    .locals 2

    .prologue
    .line 338
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysLowTemp:D

    return-wide v0
.end method

.method public getWindDirection()D
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:D

    return-wide v0
.end method

.method public getWindSpeed()D
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:D

    return-wide v0
.end method

.method public getWindSpeedUnit()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 624
    const/16 v0, 0x1f

    .line 626
    .local v0, "prime":I
    iget-object v2, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 627
    .local v1, "result":I
    return v1

    .line 626
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    const-string/jumbo v4, " City Name: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 605
    iget-object v4, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    const-string/jumbo v4, " Condition Code: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 607
    const-string/jumbo v4, " Temperature: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 607
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:D

    .line 604
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    const-string/jumbo v4, " Temperature Unit: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 609
    const-string/jumbo v4, " Humidity: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 609
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:D

    .line 604
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 610
    const-string/jumbo v4, " Wind speed: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 610
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:D

    .line 604
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 611
    const-string/jumbo v4, " Wind direction: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 611
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:D

    .line 604
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 612
    const-string/jumbo v4, " Wind Speed Unit: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 612
    iget v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 613
    const-string/jumbo v4, " Today\'s high temp: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 613
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysHighTemp:D

    .line 604
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 614
    const-string/jumbo v4, " Today\'s low temp: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 614
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysLowTemp:D

    .line 604
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 615
    const-string/jumbo v4, " Timestamp: "

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 615
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    .line 604
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 615
    const-string/jumbo v4, " Forecasts: ["

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dayForecast$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 617
    .local v1, "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    invoke-virtual {v1}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 619
    .end local v1    # "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    :cond_0
    const-string/jumbo v3, "]}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 388
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v2

    .line 391
    .local v2, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mConditionCode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTemperature:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 395
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mTempUnit:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mHumidity:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 397
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeed:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 398
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mWindDirection:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 399
    iget v3, p0, Lcyanogenmod/weather/WeatherInfo;->mWindSpeedUnit:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysHighTemp:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 401
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTodaysLowTemp:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 402
    iget-wide v4, p0, Lcyanogenmod/weather/WeatherInfo;->mTimestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 403
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget-object v3, p0, Lcyanogenmod/weather/WeatherInfo;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dayForecast$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 405
    .local v0, "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 409
    .end local v0    # "dayForecast":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    :cond_0
    invoke-virtual {v2}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 386
    return-void
.end method
