.class final Landroid/app/ContextImpl$16;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 438
    const-string v2, "batterymanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 439
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IBatteryService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBatteryService;

    move-result-object v1

    .line 440
    .local v1, "service":Landroid/app/IBatteryService;
    new-instance v2, Landroid/os/BatteryManager;

    invoke-direct {v2, v1}, Landroid/os/BatteryManager;-><init>(Landroid/app/IBatteryService;)V

    return-object v2
.end method
