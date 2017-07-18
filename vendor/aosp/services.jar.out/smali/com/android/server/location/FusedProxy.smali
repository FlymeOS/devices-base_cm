.class public final Lcom/android/server/location/FusedProxy;
.super Ljava/lang/Object;
.source "FusedProxy.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/FusedProxy;)Lcom/android/server/location/FusedLocationHardwareSecure;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FusedProxy;->mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/location/FusedProxy;Landroid/hardware/location/IFusedLocationHardware;)V
    .locals 0
    .param p1, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FusedProxy;->bindProvider(Landroid/hardware/location/IFusedLocationHardware;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNameResId"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "FusedProxy"

    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/server/location/FusedLocationHardwareSecure;

    .line 57
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 54
    invoke-direct {v0, p3, p1, v1}, Lcom/android/server/location/FusedLocationHardwareSecure;-><init>(Landroid/hardware/location/IFusedLocationHardware;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

    .line 58
    new-instance v7, Lcom/android/server/location/FusedProxy$1;

    invoke-direct {v7, p0}, Lcom/android/server/location/FusedProxy$1;-><init>(Lcom/android/server/location/FusedProxy;)V

    .line 66
    .local v7, "newServiceWork":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/server/ServiceWatcher;

    .line 68
    const-string/jumbo v2, "FusedProxy"

    .line 69
    const-string/jumbo v3, "com.android.location.service.FusedProvider"

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, p2

    .line 66
    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 53
    return-void
.end method

.method private bindProvider(Landroid/hardware/location/IFusedLocationHardware;)V
    .locals 4
    .param p1, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IFusedProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IFusedProvider;

    move-result-object v1

    .line 117
    .local v1, "provider":Landroid/location/IFusedProvider;
    if-nez v1, :cond_0

    .line 118
    const-string/jumbo v2, "FusedProxy"

    const-string/jumbo v3, "No instance of FusedProvider found on FusedLocationHardware connected."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/location/IFusedProvider;->onFusedLocationHardwareChange(Landroid/hardware/location/IFusedLocationHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FusedProxy"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNameResId"    # I

    .prologue
    .line 93
    new-instance v0, Lcom/android/server/location/FusedProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/FusedProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V

    .line 102
    .local v0, "fusedProxy":Lcom/android/server/location/FusedProxy;
    iget-object v1, v0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_0
    return-object v0
.end method
