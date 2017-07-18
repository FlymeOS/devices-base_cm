.class public interface abstract Landroid/app/trust/IStrongAuthTracker;
.super Ljava/lang/Object;
.source "IStrongAuthTracker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/IStrongAuthTracker$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStrongAuthRequiredChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
