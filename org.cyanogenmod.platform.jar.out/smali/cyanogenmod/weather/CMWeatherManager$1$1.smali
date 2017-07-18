.class Lcyanogenmod/weather/CMWeatherManager$1$1;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/weather/CMWeatherManager$1;->onWeatherServiceProviderChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/weather/CMWeatherManager$1;

.field final synthetic val$providerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/CMWeatherManager$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/weather/CMWeatherManager$1;
    .param p2, "val$providerName"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcyanogenmod/weather/CMWeatherManager$1$1;->this$1:Lcyanogenmod/weather/CMWeatherManager$1;

    iput-object p2, p0, Lcyanogenmod/weather/CMWeatherManager$1$1;->val$providerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 310
    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager$1$1;->this$1:Lcyanogenmod/weather/CMWeatherManager$1;

    iget-object v4, v4, Lcyanogenmod/weather/CMWeatherManager$1;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    invoke-static {v4}, Lcyanogenmod/weather/CMWeatherManager;->-get2(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Set;

    move-result-object v5

    monitor-enter v5

    .line 312
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "deadListeners":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;>;"
    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager$1$1;->this$1:Lcyanogenmod/weather/CMWeatherManager$1;

    iget-object v4, v4, Lcyanogenmod/weather/CMWeatherManager$1;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    invoke-static {v4}, Lcyanogenmod/weather/CMWeatherManager;->-get2(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Set;

    move-result-object v4

    .line 313
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .local v2, "listener":Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;
    :try_start_1
    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager$1$1;->val$providerName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;->onWeatherServiceProviderChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 310
    .end local v0    # "deadListeners":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;>;"
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "listener":Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 321
    .restart local v0    # "deadListeners":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;>;"
    .restart local v3    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 322
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .line 323
    .restart local v2    # "listener":Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;
    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager$1$1;->this$1:Lcyanogenmod/weather/CMWeatherManager$1;

    iget-object v4, v4, Lcyanogenmod/weather/CMWeatherManager$1;->this$0:Lcyanogenmod/weather/CMWeatherManager;

    invoke-static {v4}, Lcyanogenmod/weather/CMWeatherManager;->-get2(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v2    # "listener":Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;
    :cond_1
    monitor-exit v5

    .line 309
    return-void
.end method
