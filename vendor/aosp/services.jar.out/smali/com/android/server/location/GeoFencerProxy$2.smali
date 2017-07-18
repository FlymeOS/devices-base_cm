.class Lcom/android/server/location/GeoFencerProxy$2;
.super Landroid/location/IGeoFenceListener$Stub;
.source "GeoFencerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeoFencerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeoFencerProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeoFencerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GeoFencerProxy;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy$2;->this$0:Lcom/android/server/location/GeoFencerProxy;

    invoke-direct {p0}, Landroid/location/IGeoFenceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public geoFenceExpired(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy$2;->this$0:Lcom/android/server/location/GeoFencerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "geoFenceExpired - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/location/GeoFencerProxy;->-wrap0(Lcom/android/server/location/GeoFencerProxy;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy$2;->this$0:Lcom/android/server/location/GeoFencerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/GeoFencerProxy;->remove(Landroid/app/PendingIntent;Z)V

    .line 68
    return-void
.end method
