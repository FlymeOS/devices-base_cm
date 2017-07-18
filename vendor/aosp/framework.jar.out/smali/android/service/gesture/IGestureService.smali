.class public interface abstract Landroid/service/gesture/IGestureService;
.super Ljava/lang/Object;
.source "IGestureService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gesture/IGestureService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setOnDoubleClickPendingIntent(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOnLongPressPendingIntent(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
