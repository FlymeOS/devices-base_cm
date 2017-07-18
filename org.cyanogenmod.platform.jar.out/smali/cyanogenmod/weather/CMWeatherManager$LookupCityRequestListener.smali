.class public interface abstract Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/CMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LookupCityRequestListener"
.end annotation


# virtual methods
.method public abstract onLookupCityRequestCompleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation
.end method
