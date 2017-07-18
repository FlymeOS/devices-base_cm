.class public interface abstract Landroid/view/FlymeExtIWindowManager;
.super Ljava/lang/Object;
.source "FlymeExtIWindowManager.java"


# static fields
.field public static final FIRST_CALL_TRANSACTION:I = 0x2710

.field public static final TRANSACTION_DISABLE_ROTATION_ANIM:I = 0x2711

.field public static final TRANSACTION_GET_VISIBLE_FLOAT_WINDOW_PACKAGES:I = 0x2713

.field public static final TRANSACTION_SCREENSHOT_LIVE_WALLPAPER:I = 0x2712


# virtual methods
.method public abstract disableRotationAnim(Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVisibleFloatWindowPackages(Landroid/os/IBinder;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract screenshotLiveWallpaper(Landroid/os/IBinder;Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
