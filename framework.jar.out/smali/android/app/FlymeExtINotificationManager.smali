.class public interface abstract Landroid/app/FlymeExtINotificationManager;
.super Ljava/lang/Object;
.source "FlymeExtINotificationManager.java"


# static fields
.field public static final FIRST_CALL_TRANSACTION:I = 0x2710

.field public static final TRANSACTION_GET_PACKAGE_HEADSUP_VISIBILITY:I = 0x2711

.field public static final TRANSACTION_GET_PACKAGE_REMIND_ENABLE:I = 0x2713

.field public static final TRANSACTION_SET_PACKAGE_HEADSUP_VISIBILITY:I = 0x2712

.field public static final TRANSACTION_SET_PACKAGE_REMIND_ENABLE:I = 0x2714


# virtual methods
.method public abstract getPackageHeadsUpVisibility(Landroid/os/IBinder;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPackageRemindEnable(Landroid/os/IBinder;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPackageHeadsUpVisibility(Landroid/os/IBinder;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPackageRemindEnable(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
