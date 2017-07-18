.class public Lcyanogenmod/app/ICMStatusBarManager$NoOp;
.super Ljava/lang/Object;
.source "ICMStatusBarManager.java"

# interfaces
.implements Lcyanogenmod/app/ICMStatusBarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ICMStatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tile"    # Lcyanogenmod/app/CustomTile;
    .param p6, "idReceived"    # [I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public registerListener(Lcyanogenmod/app/ICustomTileListener;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/app/ICustomTileListener;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public removeCustomTileFromListener(Lcyanogenmod/app/ICustomTileListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/app/ICustomTileListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public unregisterListener(Lcyanogenmod/app/ICustomTileListener;I)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/app/ICustomTileListener;
    .param p2, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method
