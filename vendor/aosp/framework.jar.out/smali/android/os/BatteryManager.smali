.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final BATTERY_DOCK_PLUGGED_AC:I = 0x1

.field public static final BATTERY_DOCK_PLUGGED_ANY:I = 0x3

.field public static final BATTERY_DOCK_PLUGGED_USB:I = 0x2

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final EXTRA_DOCK_HEALTH:Ljava/lang/String; = "dock_health"

.field public static final EXTRA_DOCK_ICON_SMALL:Ljava/lang/String; = "dock_icon-small"

.field public static final EXTRA_DOCK_LEVEL:Ljava/lang/String; = "dock_level"

.field public static final EXTRA_DOCK_PLUGGED:Ljava/lang/String; = "dock_plugged"

.field public static final EXTRA_DOCK_PRESENT:Ljava/lang/String; = "dock_present"

.field public static final EXTRA_DOCK_SCALE:Ljava/lang/String; = "dock_scale"

.field public static final EXTRA_DOCK_STATUS:Ljava/lang/String; = "dock_status"

.field public static final EXTRA_DOCK_TECHNOLOGY:Ljava/lang/String; = "dock_technology"

.field public static final EXTRA_DOCK_TEMPERATURE:Ljava/lang/String; = "dock_temperature"

.field public static final EXTRA_DOCK_VOLTAGE:Ljava/lang/String; = "dock_voltage"

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final mBatteryService:Landroid/app/IBatteryService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/BatteryManager;-><init>(Landroid/app/IBatteryService;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/app/IBatteryService;)V
    .locals 0
    .param p1, "service"    # Landroid/app/IBatteryService;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Landroid/os/BatteryManager;->mBatteryService:Landroid/app/IBatteryService;

    .line 265
    return-void
.end method

.method private queryProperty(IZ)J
    .locals 7
    .param p1, "id"    # I
    .param p2, "fromDock"    # Z

    .prologue
    .line 288
    iget-object v6, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v6, :cond_0

    .line 289
    const-string v6, "batteryproperties"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 290
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v6

    iput-object v6, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 293
    iget-object v6, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v6, :cond_0

    .line 294
    const-wide/high16 v4, -0x8000000000000000L

    .line 314
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-wide v4

    .line 298
    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/BatteryProperty;

    invoke-direct {v3}, Landroid/os/BatteryProperty;-><init>()V

    .line 301
    .local v3, "prop":Landroid/os/BatteryProperty;
    if-nez p2, :cond_1

    .line 302
    iget-object v6, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v6, p1, v3}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v1

    .line 306
    .local v1, "callResult":I
    :goto_1
    if-nez v1, :cond_2

    .line 307
    invoke-virtual {v3}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v4

    .local v4, "ret":J
    goto :goto_0

    .line 304
    .end local v1    # "callResult":I
    .end local v4    # "ret":J
    :cond_1
    iget-object v6, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v6, p1, v3}, Landroid/os/IBatteryPropertiesRegistrar;->getDockProperty(ILandroid/os/BatteryProperty;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1    # "callResult":I
    goto :goto_1

    .line 309
    :cond_2
    const-wide/high16 v4, -0x8000000000000000L

    .restart local v4    # "ret":J
    goto :goto_0

    .line 310
    .end local v1    # "callResult":I
    .end local v3    # "prop":Landroid/os/BatteryProperty;
    .end local v4    # "ret":J
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Landroid/os/RemoteException;
    const-wide/high16 v4, -0x8000000000000000L

    .restart local v4    # "ret":J
    goto :goto_0
.end method


# virtual methods
.method public getIntDockProperty(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    const/high16 v0, -0x80000000

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getIntProperty(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongDockProperty(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-wide/high16 v0, -0x8000000000000000L

    .line 374
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongProperty(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDockBatterySupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryService:Landroid/app/IBatteryService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryService:Landroid/app/IBatteryService;

    invoke-interface {v1}, Landroid/app/IBatteryService;->isDockBatterySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0
.end method
