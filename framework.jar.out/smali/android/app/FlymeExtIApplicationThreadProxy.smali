.class public Landroid/app/FlymeExtIApplicationThreadProxy;
.super Ljava/lang/Object;
.source "FlymeExtIApplicationThreadProxy.java"

# interfaces
.implements Landroid/app/FlymeExtIApplicationThread;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.FlymeExtIApplicationThread"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scheduleScrollActivity(Landroid/os/IBinder;Landroid/os/IBinder;[Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "event"    # [Landroid/view/MotionEvent;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 27
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.FlymeExtIApplicationThread"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 28
    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 34
    :goto_0
    if-eqz p3, :cond_1

    .line 35
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 37
    aget-object v2, p3, v1

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 32
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    :cond_2
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    const/16 v2, 0x2712

    invoke-interface {p1, v2, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    return-void
.end method

.method public scheduleShrinkMemory(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 18
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.FlymeExtIApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    return-void
.end method
