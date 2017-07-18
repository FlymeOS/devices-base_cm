.class public Lcyanogenmod/providers/WeatherContract$WeatherColumns;
.super Ljava/lang/Object;
.source "WeatherContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/WeatherContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/WeatherContract$WeatherColumns$TempUnit;,
        Lcyanogenmod/providers/WeatherContract$WeatherColumns$WindSpeedUnit;,
        Lcyanogenmod/providers/WeatherContract$WeatherColumns$WeatherCode;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CURRENT_AND_FORECAST_WEATHER_URI:Landroid/net/Uri;

.field public static final CURRENT_CITY:Ljava/lang/String; = "city"

.field public static final CURRENT_CONDITION:Ljava/lang/String; = "condition"

.field public static final CURRENT_CONDITION_CODE:Ljava/lang/String; = "condition_code"

.field public static final CURRENT_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final CURRENT_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final CURRENT_TEMPERATURE_UNIT:Ljava/lang/String; = "temperature_unit"

.field public static final CURRENT_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final CURRENT_WEATHER_URI:Landroid/net/Uri;

.field public static final CURRENT_WIND_DIRECTION:Ljava/lang/String; = "wind_direction"

.field public static final CURRENT_WIND_SPEED:Ljava/lang/String; = "wind_speed"

.field public static final CURRENT_WIND_SPEED_UNIT:Ljava/lang/String; = "wind_speed_unit"

.field public static final FORECAST_CONDITION:Ljava/lang/String; = "forecast_condition"

.field public static final FORECAST_CONDITION_CODE:Ljava/lang/String; = "forecast_condition_code"

.field public static final FORECAST_HIGH:Ljava/lang/String; = "forecast_high"

.field public static final FORECAST_LOW:Ljava/lang/String; = "forecast_low"

.field public static final FORECAST_WEATHER_URI:Landroid/net/Uri;

.field public static final TODAYS_HIGH_TEMPERATURE:Ljava/lang/String; = "todays_high"

.field public static final TODAYS_LOW_TEMPERATURE:Ljava/lang/String; = "todays_low"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcyanogenmod/providers/WeatherContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "weather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 40
    sget-object v0, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "current_and_forecast"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    sput-object v0, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CURRENT_AND_FORECAST_WEATHER_URI:Landroid/net/Uri;

    .line 42
    sget-object v0, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    sput-object v0, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CURRENT_WEATHER_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "forecast"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    sput-object v0, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->FORECAST_WEATHER_URI:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
