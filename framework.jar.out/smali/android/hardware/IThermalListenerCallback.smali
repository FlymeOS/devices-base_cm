.class public interface abstract Landroid/hardware/IThermalListenerCallback;
.super Ljava/lang/Object;
.source "IThermalListenerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IThermalListenerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onThermalChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
