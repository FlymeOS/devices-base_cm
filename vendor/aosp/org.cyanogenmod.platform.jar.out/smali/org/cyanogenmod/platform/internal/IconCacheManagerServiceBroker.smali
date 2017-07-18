.class public Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;
.super Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;
.source "IconCacheManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;,
        Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$1;,
        Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService",
        "<",
        "Lorg/cyanogenmod/internal/themes/IIconCacheManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private mServiceConnection:Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

.field private final mServiceStubForFailure:Lorg/cyanogenmod/internal/themes/IIconCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.cyanogenmod.themeservice"

    .line 40
    const-string/jumbo v2, "org.cyanogenmod.themeservice.IconCacheManagerService"

    .line 39
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sput-object v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$1;-><init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->mServiceStubForFailure:Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    .line 49
    new-instance v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$2;-><init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->mServiceConnection:Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    .line 68
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->mServiceConnection:Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->setBrokeredServiceConnection(Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected getComponentFilteringPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "cyanogenmod.permission.ACCESS_THEME_MANAGER"

    return-object v0
.end method

.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->getDefaultImplementation()Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lorg/cyanogenmod/internal/themes/IIconCacheManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->mServiceStubForFailure:Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "org.cyanogenmod.theme"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/themes/IIconCacheManager;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 78
    invoke-static {p1}, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;->asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 93
    const-string/jumbo v0, "cmiconcache"

    new-instance v1, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 92
    return-void
.end method
