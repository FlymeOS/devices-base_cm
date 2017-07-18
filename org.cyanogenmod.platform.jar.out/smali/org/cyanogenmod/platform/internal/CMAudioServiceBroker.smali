.class public Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;
.super Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;
.source "CMAudioServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;,
        Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService",
        "<",
        "Lcyanogenmod/media/ICMAudioService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CMAudioServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceStubForFailure:Lcyanogenmod/media/ICMAudioService;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->checkPermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string/jumbo v0, "CMAudioServiceBroker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->DEBUG:Z

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.cyanogenmod.cmaudio.service"

    .line 49
    const-string/jumbo v2, "org.cyanogenmod.cmaudio.service.CMAudioService"

    .line 48
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sput-object v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;-><init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mServiceStubForFailure:Lcyanogenmod/media/ICMAudioService;

    .line 53
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v1, "cyanogenmod.permission.OBSERVE_AUDIO_SESSIONS"

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->getDefaultImplementation()Lcyanogenmod/media/ICMAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lcyanogenmod/media/ICMAudioService;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mServiceStubForFailure:Lcyanogenmod/media/ICMAudioService;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "org.cyanogenmod.audio"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 71
    invoke-static {p1}, Lcyanogenmod/media/ICMAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->onBootPhase(I)V

    .line 59
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 60
    const-string/jumbo v0, "cmaudio"

    new-instance v1, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CMAudioServiceBroker"

    const-string/jumbo v1, "service started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method
