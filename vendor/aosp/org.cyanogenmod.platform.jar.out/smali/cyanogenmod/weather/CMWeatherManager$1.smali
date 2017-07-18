.class Lcyanogenmod/weather/CMWeatherManager$1;
.super Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$Stub;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/CMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/weather/CMWeatherManager;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/CMWeatherManager;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/weather/CMWeatherManager;

    .prologue
    .line 304
    iput-object p1, p0, Lcyanogenmod/weather/CMWeatherManager$1;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    invoke-direct {p0}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeatherServiceProviderChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager$1;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    invoke-static {v0}, Lcyanogenmod/weather/CMWeatherManager;->-get0(Lcyanogenmod/weather/CMWeatherManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$1$1;

    invoke-direct {v1, p0, p1}, Lcyanogenmod/weather/CMWeatherManager$1$1;-><init>(Lcyanogenmod/weather/CMWeatherManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method
