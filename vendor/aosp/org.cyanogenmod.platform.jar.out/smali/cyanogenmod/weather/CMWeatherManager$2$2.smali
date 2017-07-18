.class Lcyanogenmod/weather/CMWeatherManager$2$2;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/weather/CMWeatherManager$2;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/weather/CMWeatherManager$2;

.field final synthetic val$listener:Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

.field final synthetic val$status:I

.field final synthetic val$weatherLocations:Ljava/util/List;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/CMWeatherManager$2;Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;ILjava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/weather/CMWeatherManager$2;
    .param p2, "val$listener"    # Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;
    .param p3, "val$status"    # I

    .prologue
    .line 356
    .local p4, "val$weatherLocations":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherLocation;>;"
    iput-object p1, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->this$1:Lcyanogenmod/weather/CMWeatherManager$2;

    iput-object p2, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$listener:Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    iput p3, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$status:I

    iput-object p4, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$weatherLocations:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$listener:Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    iget v1, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$status:I

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager$2$2;->val$weatherLocations:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;->onLookupCityRequestCompleted(ILjava/util/List;)V

    .line 358
    return-void
.end method
