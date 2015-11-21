.class final Landroid/app/ContextImpl$55;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 711
    const-string/jumbo v1, "trust"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 712
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/app/trust/TrustManager;

    invoke-direct {v1, v0}, Landroid/app/trust/TrustManager;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method
