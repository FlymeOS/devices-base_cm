.class public Lorg/cyanogenmod/internal/util/QSConstants;
.super Ljava/lang/Object;
.source "QSConstants.java"


# static fields
.field protected static final DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DYNAMIC_TILE_ADB:Ljava/lang/String; = "adb"

.field public static final DYNAMIC_TILE_IME_SELECTOR:Ljava/lang/String; = "ime_selector"

.field public static final DYNAMIC_TILE_LIVE_DISPLAY:Ljava/lang/String; = "live_display"

.field public static final DYNAMIC_TILE_NEXT_ALARM:Ljava/lang/String; = "next_alarm"

.field public static final DYNAMIC_TILE_SU:Ljava/lang/String; = "su"

.field public static final DYNAMIC_TILE_THEMES:Ljava/lang/String; = "themes"

.field protected static final STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TILES_AVAILABLE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_ADB_NETWORK:Ljava/lang/String; = "adb_network"

.field public static final TILE_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final TILE_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient_display"

.field public static final TILE_APN:Ljava/lang/String; = "apn"

.field public static final TILE_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field public static final TILE_BLUETOOTH:Ljava/lang/String; = "bt"

.field public static final TILE_CAFFEINE:Ljava/lang/String; = "caffeine"

.field public static final TILE_CAST:Ljava/lang/String; = "cast"

.field public static final TILE_CELLULAR:Ljava/lang/String; = "cell"

.field public static final TILE_COMPASS:Ljava/lang/String; = "compass"

.field public static final TILE_DATA:Ljava/lang/String; = "data"

.field public static final TILE_DDS:Ljava/lang/String; = "dds"

.field public static final TILE_DND:Ljava/lang/String; = "dnd"

.field public static final TILE_EDIT:Ljava/lang/String; = "edit"

.field public static final TILE_FLASHLIGHT:Ljava/lang/String; = "flashlight"

.field public static final TILE_HEADS_UP:Ljava/lang/String; = "heads_up"

.field public static final TILE_HOTSPOT:Ljava/lang/String; = "hotspot"

.field public static final TILE_INVERSION:Ljava/lang/String; = "inversion"

.field public static final TILE_LOCATION:Ljava/lang/String; = "location"

.field public static final TILE_LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final TILE_LTE:Ljava/lang/String; = "lte"

.field public static final TILE_NFC:Ljava/lang/String; = "nfc"

.field public static final TILE_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field public static final TILE_PERFORMANCE:Ljava/lang/String; = "performance"

.field public static final TILE_PROFILES:Ljava/lang/String; = "profiles"

.field public static final TILE_ROAMING:Ljava/lang/String; = "roaming"

.field public static final TILE_ROTATION:Ljava/lang/String; = "rotation"

.field public static final TILE_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field public static final TILE_SYNC:Ljava/lang/String; = "sync"

.field public static final TILE_USB_TETHER:Ljava/lang/String; = "usb_tether"

.field public static final TILE_VISUALIZER:Ljava/lang/String; = "visualizer"

.field public static final TILE_VOLUME:Ljava/lang/String; = "volume_panel"

.field public static final TILE_WIFI:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    .line 70
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "bt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "cell"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "airplane"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "rotation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "flashlight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "edit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "cast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "inversion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "dnd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "profiles"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "performance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "adb_network"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "compass"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "lockscreen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "volume_panel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "screen_timeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "usb_tether"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "heads_up"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "ambient_display"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "sync"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "battery_saver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "caffeine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    sget-object v1, Lorg/cyanogenmod/internal/util/QSConstants;->STATIC_TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "adb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "ime_selector"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "next_alarm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "su"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "live_display"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lorg/cyanogenmod/internal/util/QSConstants;->DYNAMIC_TILES_AVAILBLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "themes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
