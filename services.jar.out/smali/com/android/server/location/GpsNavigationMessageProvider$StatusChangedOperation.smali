.class Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;
.super Ljava/lang/Object;
.source "GpsNavigationMessageProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsNavigationMessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangedOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGpsNavigationMessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStatus:I

.field final synthetic this$0:Lcom/android/server/location/GpsNavigationMessageProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsNavigationMessageProvider;I)V
    .locals 0
    .param p2, "status"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;->this$0:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p2, p0, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;->mStatus:I

    .line 95
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsNavigationMessageListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;->mStatus:I

    invoke-interface {p1, v0}, Landroid/location/IGpsNavigationMessageListener;->onStatusChanged(I)V

    .line 100
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    check-cast p1, Landroid/location/IGpsNavigationMessageListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;->execute(Landroid/location/IGpsNavigationMessageListener;)V

    return-void
.end method
