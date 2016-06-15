.class public interface abstract Landroid/nfc/IMzNfcAdapterExt;
.super Ljava/lang/Object;
.source "IMzNfcAdapterExt.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IMzNfcAdapterExt$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDefaultRoute(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDefaultRoute(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
