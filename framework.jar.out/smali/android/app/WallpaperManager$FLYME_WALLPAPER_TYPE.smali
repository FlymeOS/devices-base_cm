.class public final enum Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;
.super Ljava/lang/Enum;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FLYME_WALLPAPER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

.field public static final enum LAUNCHER:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

.field public static final enum LOCK:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1290
    new-instance v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    const-string/jumbo v1, "LAUNCHER"

    invoke-direct {v0, v1, v2}, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LAUNCHER:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    new-instance v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    const-string/jumbo v1, "LOCK"

    invoke-direct {v0, v1, v3}, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LOCK:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    .line 1289
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    sget-object v1, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LAUNCHER:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LOCK:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->$VALUES:[Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1289
    const-class v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;
    .locals 1

    .prologue
    .line 1289
    sget-object v0, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->$VALUES:[Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    return-object v0
.end method
