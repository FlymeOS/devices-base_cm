.class public interface abstract Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;
.super Ljava/lang/Object;
.source "IFingerprintServiceLockoutResetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLockoutReset(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
