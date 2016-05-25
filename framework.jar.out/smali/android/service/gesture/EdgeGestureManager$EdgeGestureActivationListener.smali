.class public abstract Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
.super Ljava/lang/Object;
.source "EdgeGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gesture/EdgeGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EdgeGestureActivationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/service/gesture/IEdgeGestureHostCallback;

.field private mDelegator:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;-><init>(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;Landroid/service/gesture/EdgeGestureManager$1;)V

    iput-object v0, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mDelegator:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;
    .locals 1
    .param p0, "x0"    # Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mDelegator:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

    return-object v0
.end method


# virtual methods
.method public dropEventsUntilLift()Z
    .locals 4

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mCallback:Landroid/service/gesture/IEdgeGestureHostCallback;

    invoke-interface {v1}, Landroid/service/gesture/IEdgeGestureHostCallback;->dropEventsUntilLift()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EdgeGestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropNextEvents failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gainTouchFocus(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "applicationWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mCallback:Landroid/service/gesture/IEdgeGestureHostCallback;

    invoke-interface {v1, p1}, Landroid/service/gesture/IEdgeGestureHostCallback;->gainTouchFocus(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EdgeGestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gainTouchFocus failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract onEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;I)V
.end method

.method public restoreListenerState()V
    .locals 4

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mCallback:Landroid/service/gesture/IEdgeGestureHostCallback;

    invoke-interface {v1}, Landroid/service/gesture/IEdgeGestureHostCallback;->restoreListenerState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EdgeGestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreListenerState failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setHostCallback(Landroid/service/gesture/IEdgeGestureHostCallback;)V
    .locals 0
    .param p1, "hostCallback"    # Landroid/service/gesture/IEdgeGestureHostCallback;

    .prologue
    .line 72
    iput-object p1, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mCallback:Landroid/service/gesture/IEdgeGestureHostCallback;

    .line 73
    return-void
.end method
