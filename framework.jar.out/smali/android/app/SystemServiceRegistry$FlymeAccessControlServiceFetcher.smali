.class Landroid/app/SystemServiceRegistry$FlymeAccessControlServiceFetcher;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlymeAccessControlServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lmeizu/security/AccessControlManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/SystemServiceRegistry$FlymeAccessControlServiceFetcher;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$FlymeAccessControlServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$FlymeAccessControlServiceFetcher;->createService(Landroid/app/ContextImpl;)Lmeizu/security/AccessControlManager;

    move-result-object v0

    return-object v0
.end method

.method public createService(Landroid/app/ContextImpl;)Lmeizu/security/AccessControlManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 730
    const-string/jumbo v2, "access_control"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 731
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object v1

    .line 732
    .local v1, "service":Lmeizu/security/IAccessControlManager;
    new-instance v2, Lmeizu/security/AccessControlManager;

    invoke-direct {v2, p1, v1}, Lmeizu/security/AccessControlManager;-><init>(Landroid/content/Context;Lmeizu/security/IAccessControlManager;)V

    return-object v2
.end method
