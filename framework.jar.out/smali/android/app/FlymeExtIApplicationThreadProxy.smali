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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.FlymeExtIApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    return-void
.end method
