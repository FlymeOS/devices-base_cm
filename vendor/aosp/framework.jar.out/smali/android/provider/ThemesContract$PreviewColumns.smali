.class public Landroid/provider/ThemesContract$PreviewColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ThemesContract;
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
    .line 440
    sget-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "previews"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract$PreviewColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 447
    sget-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "applied_previews"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract$PreviewColumns;->APPLIED_URI:Landroid/net/Uri;

    .line 455
    sget-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "components_previews"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract$PreviewColumns;->COMPONENTS_URI:Landroid/net/Uri;

    .line 639
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "statusbar_background"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "statusbar_bluetooth_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "statusbar_wifi_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "statusbar_signal_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "statusbar_battery_portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "statusbar_battery_landscape"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "statusbar_battery_circle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "statusbar_clock_text_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "wifi_combo_margin_end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "navbar_background"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "navbar_back_button"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "navbar_home_button"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "navbar_recent_button"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icon_preview_1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icon_preview_2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icon_preview_3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "wallpaper_full"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "wallpaper_preview"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "wallpaper_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "lock_wallpaper_preview"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lock_wallpaper_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "style_preview"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "style_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "bootanimation_thumbnail"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/ThemesContract$PreviewColumns;->VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
