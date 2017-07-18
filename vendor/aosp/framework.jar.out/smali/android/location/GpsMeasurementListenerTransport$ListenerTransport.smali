.class Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;
.super Landroid/location/IGpsMeasurementsListener$Stub;
.source "GpsMeasurementListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurementListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GpsMeasurementListenerTransport;


# direct methods
.method private constructor <init>(Landroid/location/GpsMeasurementListenerTransport;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/GpsMeasurementListenerTransport;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;->this$0:Landroid/location/GpsMeasurementListenerTransport;

    invoke-direct {p0}, Landroid/location/IGpsMeasurementsListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GpsMeasurementListenerTransport;Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/GpsMeasurementListenerTransport;

    .prologue
    invoke-direct {p0, p1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;-><init>(Landroid/location/GpsMeasurementListenerTransport;)V

    return-void
.end method


# virtual methods
.method public onGpsMeasurementsReceived(Landroid/location/GpsMeasurementsEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 54
    new-instance v0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$1;-><init>(Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;Landroid/location/GpsMeasurementsEvent;)V

    .line 60
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GpsMeasurementsEvent$Listener;>;"
    iget-object v1, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;->this$0:Landroid/location/GpsMeasurementListenerTransport;

    invoke-virtual {v1, v0}, Landroid/location/GpsMeasurementListenerTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 52
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$2;

    invoke-direct {v0, p0, p1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$2;-><init>(Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;I)V

    .line 72
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GpsMeasurementsEvent$Listener;>;"
    iget-object v1, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;->this$0:Landroid/location/GpsMeasurementListenerTransport;

    invoke-virtual {v1, v0}, Landroid/location/GpsMeasurementListenerTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 64
    return-void
.end method
