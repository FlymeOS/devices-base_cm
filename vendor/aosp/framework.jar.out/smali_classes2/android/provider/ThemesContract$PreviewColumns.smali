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

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ICON_PREVIEW_1:Ljava/lang/String; = "icon_preview_1"

.field public static final ICON_PREVIEW_2:Ljava/lang/String; = "icon_preview_2"

.field public static final ICON_PREVIEW_3:Ljava/lang/String; = "icon_preview_3"

.field public static final ICON_PREVIEW_4:Ljava/lang/String; = "icon_preview_4"

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

.field public static final WALLPAPER_PREVIEW:Ljava/lang/String; = "wallpaper_preview"

.field public static final WALLPAPER_THUMBNAIL:Ljava/lang/String; = "wallpaper_thumbnail"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 428
    sget-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "previews"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract$PreviewColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 435
    sget-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "applied_previews"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract$PreviewColumns;->APPLIED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
