.class Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;
.super Ljava/lang/Object;
.source "GpsMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsMeasurementsProvider;
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
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStatus:I

.field final synthetic this$0:Lcom/android/server/location/GpsMeasurementsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsMeasurementsProvider;I)V
    .locals 0
    .param p2, "status"    # I

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;->this$0:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p2, p0, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;->mStatus:I

    .line 93
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;->mStatus:I

    invoke-interface {p1, v0}, Landroid/location/IGpsMeasurementsListener;->onStatusChanged(I)V

    .line 98
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    check-cast p1, Landroid/location/IGpsMeasurementsListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;->execute(Landroid/location/IGpsMeasurementsListener;)V

    return-void
.end method
