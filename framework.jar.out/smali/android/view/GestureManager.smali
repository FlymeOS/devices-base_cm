.class public Landroid/view/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"


# static fields
.field public static final DOUBLE_TAP:I = 0xa0

.field public static final GESTURE_ERROR:I = 0x0

.field public static final SWIPE_X_LEFT:I = 0xb0

.field public static final SWIPE_X_RIGHT:I = 0xb1

.field public static final SWIPE_Y_DOWN:I = 0xb3

.field public static final SWIPE_Y_UP:I = 0xb2

.field public static final UNICODE_C:I = 0xc1

.field public static final UNICODE_E:I = 0xc0

.field public static final UNICODE_M:I = 0xc3

.field public static final UNICODE_O:I = 0xc4

.field public static final UNICODE_S:I = 0xc5

.field public static final UNICODE_V_DOWN:I = 0xc7

.field public static final UNICODE_V_L:I = 0xc8

.field public static final UNICODE_V_R:I = 0xc9

.field public static final UNICODE_V_UP:I = 0xc6

.field public static final UNICODE_W:I = 0xc2

.field public static final UNICODE_Z:I = 0xca


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/view/IGestureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IGestureManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/IGestureManager;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Landroid/view/GestureManager;->mService:Landroid/view/IGestureManager;

    .line 39
    iput-object p1, p0, Landroid/view/GestureManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public pauseAllGesture()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Landroid/view/GestureManager;->mService:Landroid/view/IGestureManager;

    invoke-interface {v1}, Landroid/view/IGestureManager;->pauseAllGesture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/IGestureCallback;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/view/GestureManager;->mService:Landroid/view/IGestureManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IGestureManager;->registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeCallback(Landroid/view/IGestureCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/IGestureCallback;

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Landroid/view/GestureManager;->mService:Landroid/view/IGestureManager;

    invoke-interface {v1, p1}, Landroid/view/IGestureManager;->removeCallback(Landroid/view/IGestureCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resumeAllGesture()V
    .locals 2

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/view/GestureManager;->mService:Landroid/view/IGestureManager;

    invoke-interface {v1}, Landroid/view/IGestureManager;->resumeAllGesture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public triggerGesture()V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Landroid/view/GestureManager;->mService:Landroid/view/IGestureManager;

    invoke-interface {v1}, Landroid/view/IGestureManager;->triggerGesture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
