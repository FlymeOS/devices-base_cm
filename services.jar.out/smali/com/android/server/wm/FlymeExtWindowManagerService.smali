.class public Lcom/android/server/wm/FlymeExtWindowManagerService;
.super Lcom/android/server/wm/WindowManagerService;
.source "FlymeExtWindowManagerService.java"


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.FlymeExtIWindowManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 19
    sput-object p0, Lcom/android/server/wm/Wms_Interface;->WMS:Lcom/android/server/wm/WindowManagerService;

    .line 16
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 27
    :pswitch_0
    const-string/jumbo v6, "android.view.FlymeExtIWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    .line 29
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/FlymeExtWindowManagerService;->disableRotationAnim(Z)V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    return v7

    .line 28
    .end local v1    # "_arg0":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 35
    .end local v1    # "_arg0":Z
    :pswitch_1
    const-string/jumbo v6, "android.view.FlymeExtIWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 37
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 38
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 39
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/FlymeExtWindowManagerService;->screenshotLiveWallpaper(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 40
    .local v4, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    :goto_1
    return v7

    .line 45
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 51
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/graphics/Bitmap;
    :pswitch_2
    const-string/jumbo v6, "android.view.FlymeExtIWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeExtWindowManagerService;->getVisibleFloatWindowPackages()[Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 55
    return v7

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
