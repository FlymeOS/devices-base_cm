.class public interface abstract Landroid/app/IBatteryService;
.super Ljava/lang/Object;
.source "IBatteryService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBatteryService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isDockBatterySupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
