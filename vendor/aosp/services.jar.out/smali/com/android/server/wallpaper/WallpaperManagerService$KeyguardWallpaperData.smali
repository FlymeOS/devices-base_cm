.class Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyguardWallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field imageWallpaperPending:Z

.field name:Ljava/lang/String;

.field userId:I

.field wallpaperFile:Ljava/io/File;

.field width:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->name:Ljava/lang/String;

    .line 271
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 270
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 273
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->width:I

    .line 274
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->height:I

    .line 277
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->userId:I

    .line 278
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap0(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "keyguard_wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->wallpaperFile:Ljava/io/File;

    .line 276
    return-void
.end method
