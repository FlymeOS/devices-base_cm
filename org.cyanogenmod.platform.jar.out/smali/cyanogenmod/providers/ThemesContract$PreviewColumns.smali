.class public Lcyanogenmod/providers/ThemesContract$PreviewColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewColumns"
.end annotation


# static fields
.field public static final APPLIED_URI:Landroid/net/Uri;

.field public static final BOOTANIMATION_THUMBNAIL:Ljava/lang/String; = "bootanimation_thumbnail"

.field public static final COL_KEY:Ljava/lang/String; = "key"

.field public static final COL_VALUE:Ljava/lang/String; = "value"

.field public static final COMPONENTS_URI:Landroid/net/Uri;

.field public static final COMPONENT_ID:Ljava/lang/String; = "component_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ICON_PREVIEW_1:Ljava/lang/String; = "icon_preview_1"

.field public static final ICON_PREVIEW_2:Ljava/lang/String; = "icon_preview_2"

.field public static final ICON_PREVIEW_3:Ljava/lang/String; = "icon_preview_3"

.field public static final LIVE_LOCK_SCREEN_PREVIEW:Ljava/lang/String; = "live_lock_screen_preview"

.field public static final LIVE_LOCK_SCREEN_THUMBNAIL:Ljava/lang/String; = "live_lock_screen_thumbnail"

.field public static final LOCK_WALLPAPER_PREVIEW:Ljava/lang/String; = "lock_wallpaper_preview"

.field public static final LOCK_WALLPAPER_THUMBNAIL:Ljava/lang/String; = "lock_wallpaper_thumbnail"

.field public static final NAVBAR_BACKGROUND:Ljava/lang/String; = "navbar_background"

.field public static final NAVBAR_BACK_BUTTON:Ljava/lang/String; = "navbar_back_button"

.field public static final NAVBAR_HOME_BUTTON:Ljava/lang/String; = "navbar_home_button"

.field public static final NAVBAR_RECENT_BUTTON:Ljava/lang/String; = "navbar_recent_button"

.field public static final STATUSBAR_BACKGROUND:Ljava/lang/String; = "statusbar_background"

.field public static final STATUSBAR_BATTERY_CIRCLE:Ljava/lang/String; = "statusbar_battery_circle"

.field public static final STATUSBAR_BATTERY_LANDSCAPE:Ljava/lang/String; = "statusbar_battery_landscape"

.field public static final STATUSBAR_BATTERY_PORTRAIT:Ljava/lang/String; = "statusbar_battery_portrait"

.field public static final STATUSBAR_BLUETOOTH_ICON:Ljava/lang/String; = "statusbar_bluetooth_icon"

.field public static final STATUSBAR_CLOCK_TEXT_COLOR:Ljava/lang/String; = "statusbar_clock_text_color"

.field public static final STATUSBAR_SIGNAL_ICON:Ljava/lang/String; = "statusbar_signal_icon"

.field public static final STATUSBAR_WIFI_COMBO_MARGIN_END:Ljava/lang/String; = "wifi_combo_margin_end"

.field public static final STATUSBAR_WIFI_ICON:Ljava/lang/String; = "statusbar_wifi_icon"

.field public static final STYLE_PREVIEW:Ljava/lang/String; = "style_preview"

.field public static final STYLE_THUMBNAIL:Ljava/lang/String; = "style_thumbnail"

.field public static final THEME_ID:Ljava/lang/String; = "theme_id"

.field public static final VALID_KEYS:[Ljava/lang/String;

.field public static final WALLPAPER_FULL:Ljava/lang/String; = "wallpaper_full"

.field public static final WALLPAPER_PREVIEW:Ljava/lang/String; = "wallpaper_preview"

.field public static final WALLPAPER_THUMBNAIL:Ljava/lang/String; = "wallpaper_thumbnail"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 477
    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "previews"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract$PreviewColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 484
    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 485
    const-string/jumbo v1, "applied_previews"

    .line 484
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract$PreviewColumns;->APPLIED_URI:Landroid/net/Uri;

    .line 492
    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 493
    const-string/jumbo v1, "components_previews"

    .line 492
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract$PreviewColumns;->COMPONENTS_URI:Landroid/net/Uri;

    .line 688
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 689
    const-string/jumbo v1, "statusbar_background"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 690
    const-string/jumbo v1, "statusbar_bluetooth_icon"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 691
    const-string/jumbo v1, "statusbar_wifi_icon"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 692
    const-string/jumbo v1, "statusbar_signal_icon"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 693
    const-string/jumbo v1, "statusbar_battery_portrait"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 694
    const-string/jumbo v1, "statusbar_battery_landscape"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 695
    const-string/jumbo v1, "statusbar_battery_circle"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 696
    const-string/jumbo v1, "statusbar_clock_text_color"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 697
    const-string/jumbo v1, "wifi_combo_margin_end"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 698
    const-string/jumbo v1, "navbar_background"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 699
    const-string/jumbo v1, "navbar_back_button"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 700
    const-string/jumbo v1, "navbar_home_button"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 701
    const-string/jumbo v1, "navbar_recent_button"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 702
    const-string/jumbo v1, "icon_preview_1"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 703
    const-string/jumbo v1, "icon_preview_2"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 704
    const-string/jumbo v1, "icon_preview_3"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 705
    const-string/jumbo v1, "wallpaper_full"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 706
    const-string/jumbo v1, "wallpaper_preview"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 707
    const-string/jumbo v1, "wallpaper_thumbnail"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 708
    const-string/jumbo v1, "lock_wallpaper_preview"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 709
    const-string/jumbo v1, "lock_wallpaper_thumbnail"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 710
    const-string/jumbo v1, "style_preview"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 711
    const-string/jumbo v1, "style_thumbnail"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 712
    const-string/jumbo v1, "bootanimation_thumbnail"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 713
    const-string/jumbo v1, "live_lock_screen_preview"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 714
    const-string/jumbo v1, "live_lock_screen_thumbnail"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 688
    sput-object v0, Lcyanogenmod/providers/ThemesContract$PreviewColumns;->VALID_KEYS:[Ljava/lang/String;

    .line 471
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
