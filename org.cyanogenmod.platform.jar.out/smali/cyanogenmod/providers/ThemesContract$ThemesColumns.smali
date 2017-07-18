.class public Lcyanogenmod/providers/ThemesContract$ThemesColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemesColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/ThemesContract$ThemesColumns$InstallState;
    }
.end annotation


# static fields
.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final BOOT_ANIM_URI:Ljava/lang/String; = "bootanim_uri"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE_CREATED:Ljava/lang/String; = "created"

.field public static final FONT_URI:Ljava/lang/String; = "font_uri"

.field public static final HOMESCREEN_URI:Ljava/lang/String; = "homescreen_uri"

.field public static final ICON_URI:Ljava/lang/String; = "icon_uri"

.field public static final INSTALL_STATE:Ljava/lang/String; = "install_state"

.field public static final INSTALL_TIME:Ljava/lang/String; = "install_time"

.field public static final IS_DEFAULT_THEME:Ljava/lang/String; = "is_default_theme"

.field public static final IS_LEGACY_ICONPACK:Ljava/lang/String; = "is_legacy_iconpack"

.field public static final IS_LEGACY_THEME:Ljava/lang/String; = "is_legacy_theme"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "updateTime"

.field public static final LOCKSCREEN_URI:Ljava/lang/String; = "lockscreen_uri"

.field public static final MODIFIES_ALARMS:Ljava/lang/String; = "mods_alarms"

.field public static final MODIFIES_BOOT_ANIM:Ljava/lang/String; = "mods_bootanim"

.field public static final MODIFIES_FONTS:Ljava/lang/String; = "mods_fonts"

.field public static final MODIFIES_ICONS:Ljava/lang/String; = "mods_icons"

.field public static final MODIFIES_LAUNCHER:Ljava/lang/String; = "mods_homescreen"

.field public static final MODIFIES_LIVE_LOCK_SCREEN:Ljava/lang/String; = "mods_live_lock_screen"

.field public static final MODIFIES_LOCKSCREEN:Ljava/lang/String; = "mods_lockscreen"

.field public static final MODIFIES_NAVIGATION_BAR:Ljava/lang/String; = "mods_navigation_bar"

.field public static final MODIFIES_NOTIFICATIONS:Ljava/lang/String; = "mods_notifications"

.field public static final MODIFIES_OVERLAYS:Ljava/lang/String; = "mods_overlays"

.field public static final MODIFIES_RINGTONES:Ljava/lang/String; = "mods_ringtones"

.field public static final MODIFIES_STATUS_BAR:Ljava/lang/String; = "mods_status_bar"

.field public static final OVERLAYS_URI:Ljava/lang/String; = "overlays_uri"

.field public static final PKG_NAME:Ljava/lang/String; = "pkg_name"

.field public static final PRESENT_AS_THEME:Ljava/lang/String; = "present_as_theme"

.field public static final PRIMARY_COLOR:Ljava/lang/String; = "primary_color"

.field public static final SECONDARY_COLOR:Ljava/lang/String; = "secondary_color"

.field public static final STATUSBAR_URI:Ljava/lang/String; = "status_uri"

.field public static final STYLE_URI:Ljava/lang/String; = "style_uri"

.field public static final TARGET_API:Ljava/lang/String; = "target_api"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final WALLPAPER_URI:Ljava/lang/String; = "wallpaper_uri"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "themes"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract$ThemesColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
