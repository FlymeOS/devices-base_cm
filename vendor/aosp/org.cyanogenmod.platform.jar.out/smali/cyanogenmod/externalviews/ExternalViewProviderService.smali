.class public abstract Lcyanogenmod/externalviews/ExternalViewProviderService;
.super Landroid/app/Service;
.source "ExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExternalViewProvider"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract createExternalView(Landroid/os/Bundle;)Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    new-instance v0, Lcyanogenmod/externalviews/ExternalViewProviderService$1;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$1;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService;->mWindowManager:Landroid/view/WindowManager;

    .line 54
    return-void
.end method
