.class public interface abstract Lcom/android/internal/widget/FlymeExtILockSettings;
.super Ljava/lang/Object;
.source "FlymeExtILockSettings.java"


# static fields
.field public static final FIRST_CALL_TRANSACTION:I = 0x2710

.field public static final FLYME_APP_LOCK_PASSWORD_TYPE:I = 0x0

.field public static final FLYME_DOCUMENT_LOCK_PASSWORD_TYPE:I = 0x1

.field public static final FLYME_PRIVATE_MODE_LOCK_PASSWORD_TYPE:I = 0x2

.field public static final TRANSACTION_CHECK_FLYME_PASSWORD:I = 0x2712

.field public static final TRANSACTION_CLEAR_FLYME_PASSWORD:I = 0x2714

.field public static final TRANSACTION_HAS_FLYME_PASSWORD:I = 0x2713

.field public static final TRANSACTION_SET_FLYME_PASSWORD:I = 0x2711


# virtual methods
.method public abstract checkFlymePassword(Landroid/os/IBinder;ILjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearFlymePassword(Landroid/os/IBinder;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasFlymePassword(Landroid/os/IBinder;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFlymePassword(Landroid/os/IBinder;ILjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
