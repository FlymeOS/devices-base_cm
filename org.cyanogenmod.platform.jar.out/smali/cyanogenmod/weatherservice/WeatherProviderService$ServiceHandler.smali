.class Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;
.super Landroid/os/Handler;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/WeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_CANCEL_REQUEST:I = 0x3

.field public static final MSG_ON_NEW_REQUEST:I = 0x2

.field public static final MSG_SET_CLIENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcyanogenmod/weatherservice/WeatherProviderService;


# direct methods
.method public constructor <init>(Lcyanogenmod/weatherservice/WeatherProviderService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/weatherservice/WeatherProviderService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 139
    iput-object p1, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    .line 140
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 147
    return-void

    .line 150
    :pswitch_0
    iget-object v3, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    invoke-static {v3, v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->-set0(Lcyanogenmod/weatherservice/WeatherProviderService;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .line 151
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get0(Lcyanogenmod/weatherservice/WeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-virtual {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->onConnected()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-virtual {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->onDisconnected()V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 160
    .local v0, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz v0, :cond_1

    .line 161
    new-instance v1, Lcyanogenmod/weatherservice/ServiceRequest;

    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get0(Lcyanogenmod/weatherservice/WeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcyanogenmod/weatherservice/ServiceRequest;-><init>(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V

    .line 162
    .local v1, "request":Lcyanogenmod/weatherservice/ServiceRequest;
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 163
    :try_start_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lcyanogenmod/weatherservice/WeatherProviderService;->-get2(Lcyanogenmod/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 165
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-virtual {v2, v1}, Lcyanogenmod/weatherservice/WeatherProviderService;->onRequestSubmitted(Lcyanogenmod/weatherservice/ServiceRequest;)V

    .line 167
    .end local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :cond_1
    return-void

    .line 162
    .restart local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 170
    .end local v0    # "info":Lcyanogenmod/weather/RequestInfo;
    .end local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcyanogenmod/weatherservice/ServiceRequest;

    .line 171
    .restart local v1    # "request":Lcyanogenmod/weatherservice/ServiceRequest;
    iget-object v2, p0, Lcyanogenmod/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lcyanogenmod/weatherservice/WeatherProviderService;

    invoke-virtual {v2, v1}, Lcyanogenmod/weatherservice/WeatherProviderService;->onRequestCancelled(Lcyanogenmod/weatherservice/ServiceRequest;)V

    .line 172
    return-void

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
