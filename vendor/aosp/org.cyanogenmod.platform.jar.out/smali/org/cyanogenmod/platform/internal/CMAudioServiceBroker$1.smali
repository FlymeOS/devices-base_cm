.class Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;
.super Lcyanogenmod/media/ICMAudioService$Stub;
.source "CMAudioServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;

    invoke-direct {p0}, Lcyanogenmod/media/ICMAudioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public listAudioSessions(I)Ljava/util/List;
    .locals 1
    .param p1, "streamType"    # I
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

    .prologue
    .line 97
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
