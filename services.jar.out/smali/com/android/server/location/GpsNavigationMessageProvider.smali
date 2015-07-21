.class public abstract Lcom/android/server/location/GpsNavigationMessageProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsNavigationMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsNavigationMessageListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsNavigationMessageProvider"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    const-string v0, "GpsNavigationMessageProvider"

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
            "Landroid/location/IGpsNavigationMessageListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 75
    const-string v1, "GpsNavigationMessageProvider"

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

    .line 76
    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    .line 64
    :pswitch_0
    sget v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_READY:I

    .line 78
    .local v0, "status":I
    :goto_1
    new-instance v1, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;-><init>(Lcom/android/server/location/GpsNavigationMessageProvider;I)V

    goto :goto_0

    .line 69
    .end local v0    # "status":I
    :pswitch_1
    sget v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_NOT_SUPPORTED:I

    .line 70
    .restart local v0    # "status":I
    goto :goto_1

    .line 72
    .end local v0    # "status":I
    :pswitch_2
    sget v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_GPS_LOCATION_DISABLED:I

    .line 73
    .restart local v0    # "status":I
    goto :goto_1

    .line 62
    nop

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
    .line 83
    if-eqz p1, :cond_0

    sget v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_READY:I

    .line 86
    .local v0, "status":I
    :goto_0
    new-instance v1, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;-><init>(Lcom/android/server/location/GpsNavigationMessageProvider;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 87
    return-void

    .line 83
    .end local v0    # "status":I
    :cond_0
    sget v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_GPS_LOCATION_DISABLED:I

    goto :goto_0
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 2
    .param p1, "isGpsNavigationMessageSupported"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    sget v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_READY:I

    .line 56
    .local v0, "status":I
    :goto_0
    new-instance v1, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;-><init>(Lcom/android/server/location/GpsNavigationMessageProvider;I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->setSupported(ZLcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 57
    return-void

    .line 53
    .end local v0    # "status":I
    :cond_0
    sget v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_NOT_SUPPORTED:I

    goto :goto_0
.end method

.method public bridge synthetic onGpsEnabledChanged(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->onGpsEnabledChanged(Z)V

    return-void
.end method

.method public onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsNavigationMessageEvent;

    .prologue
    .line 41
    new-instance v0, Lcom/android/server/location/GpsNavigationMessageProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider$1;-><init>(Lcom/android/server/location/GpsNavigationMessageProvider;Landroid/location/GpsNavigationMessageEvent;)V

    .line 49
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<Landroid/location/IGpsNavigationMessageListener;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsNavigationMessageProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 50
    return-void
.end method
