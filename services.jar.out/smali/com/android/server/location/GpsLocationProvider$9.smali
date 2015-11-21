.class Lcom/android/server/location/GpsLocationProvider$9;
.super Lcom/android/server/location/GpsNavigationMessageProvider;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsNavigationMessageProvider;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isAvailableInPlatform()Z
    .locals 1

    .prologue
    .line 851
    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$1600()Z

    move-result v0

    return v0
.end method

.method protected isGpsEnabled()Z
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected registerWithService()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromService()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)Z

    .line 862
    return-void
.end method
