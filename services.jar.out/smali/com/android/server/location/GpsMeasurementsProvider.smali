.class public abstract Lcom/android/server/location/GpsMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsMeasurementsProvider"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    const-string v0, "GpsMeasurementsProvider"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 4
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGpsMeasurementsListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 74
    const-string v1, "GpsMeasurementsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled addListener result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    .line 63
    :pswitch_0
    const/4 v0, 0x1

    .line 77
    .local v0, "status":I
    :goto_1
    new-instance v1, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;I)V

    goto :goto_0

    .line 68
    .end local v0    # "status":I
    :pswitch_1
    const/4 v0, 0x0

    .line 69
    .restart local v0    # "status":I
    goto :goto_1

    .line 71
    .end local v0    # "status":I
    :pswitch_2
    const/4 v0, 0x2

    .line 72
    .restart local v0    # "status":I
    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleGpsEnabledChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 85
    .local v0, "status":I
    :goto_0
    new-instance v1, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/GpsMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 86
    return-void

    .line 82
    .end local v0    # "status":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 2
    .param p1, "isGpsMeasurementsSupported"    # Z

    .prologue
    .line 52
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, "status":I
    :goto_0
    new-instance v1, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/GpsMeasurementsProvider;->setSupported(ZLcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 56
    return-void

    .line 52
    .end local v0    # "status":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onGpsEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->onGpsEnabledChanged(Z)V

    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 41
    new-instance v0, Lcom/android/server/location/GpsMeasurementsProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$1;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;Landroid/location/GpsMeasurementsEvent;)V

    .line 48
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<Landroid/location/IGpsMeasurementsListener;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 49
    return-void
.end method
