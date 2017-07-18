.class public interface abstract Lcyanogenmod/app/ICMStatusBarManager;
.super Ljava/lang/Object;
.source "ICMStatusBarManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ICMStatusBarManager$NoOp;,
        Lcyanogenmod/app/ICMStatusBarManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcyanogenmod/app/ICustomTileListener;Landroid/content/ComponentName;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCustomTileFromListener(Lcyanogenmod/app/ICustomTileListener;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcyanogenmod/app/ICustomTileListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
