.class Lcyanogenmod/weather/CMWeatherManager$2$1;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/weather/CMWeatherManager$2;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/weather/CMWeatherManager$2;

.field final synthetic val$listener:Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

.field final synthetic val$status:I

.field final synthetic val$weatherInfo:Lcyanogenmod/weather/WeatherInfo;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/CMWeatherManager$2;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;ILcyanogenmod/weather/WeatherInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/weather/CMWeatherManager$2;
    .param p2, "val$listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;
    .param p3, "val$status"    # I
    .param p4, "val$weatherInfo"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    .line 340
    iput-object p1, p0, Lcyanogenmod/weather/CMWeatherManager$2$1;->this$1:Lcyanogenmod/weather/CMWeatherManager$2;

    iput-object p2, p0, Lcyanogenmod/weather/CMWeatherManager$2$1;->val$listener:Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    iput p3, p0, Lcyanogenmod/weather/CMWeatherManager$2$1;->val$status:I

    iput-object p4, p0, Lcyanogenmod/weather/CMWeatherManager$2$1;->val$weatherInfo:Lcyanogenmod/weather/WeatherInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager$2$1;->val$listener:Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    iget v1, p0, Lcyanogenmod/weather/CMWeatherManager$2$1;->val$status:I

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager$2$1;->val$weatherInfo:Lcyanogenmod/weather/WeatherInfo;

    invoke-interface {v0, v1, v2}, Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;->onWeatherRequestCompleted(ILcyanogenmod/weather/WeatherInfo;)V

    .line 342
    return-void
.end method
