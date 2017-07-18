.class public Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;
.super Ljava/lang/Object;
.source "FlymeWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/FlymeWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlymeWallpaperData"
.end annotation


# instance fields
.field public mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmeizu/wallpaper/IFlymeWallpaperCallback;",
            ">;"
        }
    .end annotation
.end field

.field mHeightOfLockWallpaper:I

.field mNameOfLockWallpaper:Ljava/lang/String;

.field mWidthOfLockWallpaper:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 72
    iput v1, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    .line 68
    return-void
.end method
