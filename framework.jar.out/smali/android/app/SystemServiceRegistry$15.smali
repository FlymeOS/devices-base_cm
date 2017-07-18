.class final Landroid/app/SystemServiceRegistry$15;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/os/BatteryManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/os/BatteryManager;
    .locals 3

    .prologue
    .line 257
    const-string/jumbo v2, "batterymanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 258
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IBatteryService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBatteryService;

    move-result-object v1

    .line 259
    .local v1, "service":Landroid/app/IBatteryService;
    new-instance v2, Landroid/os/BatteryManager;

    invoke-direct {v2, v1}, Landroid/os/BatteryManager;-><init>(Landroid/app/IBatteryService;)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$15;->createService()Landroid/os/BatteryManager;

    move-result-object v0

    return-object v0
.end method
