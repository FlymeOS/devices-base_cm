.class public interface abstract Landroid/bluetooth/IQBluetoothManagerCallback;
.super Ljava/lang/Object;
.source "IQBluetoothManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IQBluetoothManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onQBluetoothServiceDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQBluetoothServiceUp(Landroid/bluetooth/IQBluetooth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
