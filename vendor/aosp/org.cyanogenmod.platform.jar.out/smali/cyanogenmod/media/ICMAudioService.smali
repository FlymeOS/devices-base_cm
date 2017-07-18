.class public interface abstract Lcyanogenmod/media/ICMAudioService;
.super Ljava/lang/Object;
.source "ICMAudioService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/media/ICMAudioService$NoOp;,
        Lcyanogenmod/media/ICMAudioService$Stub;
    }
.end annotation


# virtual methods
.method public abstract listAudioSessions(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
