.class public interface abstract Lcyanogenmod/externalviews/IExternalViewProviderFactory;
.super Ljava/lang/Object;
.source "IExternalViewProviderFactory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IExternalViewProviderFactory$NoOp;,
        Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;
    }
.end annotation


# virtual methods
.method public abstract createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
