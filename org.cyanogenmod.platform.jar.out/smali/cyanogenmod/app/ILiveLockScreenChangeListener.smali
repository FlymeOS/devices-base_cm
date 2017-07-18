.class public interface abstract Lcyanogenmod/app/ILiveLockScreenChangeListener;
.super Ljava/lang/Object;
.source "ILiveLockScreenChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ILiveLockScreenChangeListener$NoOp;,
        Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLiveLockScreenChanged(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
