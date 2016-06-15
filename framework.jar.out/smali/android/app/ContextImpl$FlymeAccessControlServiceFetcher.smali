.class final Landroid/app/ContextImpl$FlymeAccessControlServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeAccessControlServiceFetcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2569
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 2571
    const-string v2, "access_control"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2572
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object v1

    .line 2573
    .local v1, "service":Lmeizu/security/IAccessControlManager;
    new-instance v2, Lmeizu/security/AccessControlManager;

    invoke-direct {v2, p1, v1}, Lmeizu/security/AccessControlManager;-><init>(Landroid/content/Context;Lmeizu/security/IAccessControlManager;)V

    return-object v2
.end method
