.class public Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;
.super Ljava/lang/Object;
.source "AppSuggestProviderProxy.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->DEBUG:Z

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->DEBUG:Z

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 57
    return-void
.end method

.method private bind()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNamesResId"    # I

    .prologue
    .line 43
    new-instance v0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 45
    .local v0, "proxy":Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;
    invoke-direct {v0}, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    return-object v0

    .line 48
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getService()Lcyanogenmod/app/suggest/IAppSuggestProvider;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/suggest/IAppSuggestProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/suggest/ApplicationSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->getService()Lcyanogenmod/app/suggest/IAppSuggestProvider;

    move-result-object v2

    .line 90
    .local v2, "service":Lcyanogenmod/app/suggest/IAppSuggestProvider;
    if-nez v2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    return-object v3

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcyanogenmod/app/suggest/IAppSuggestProvider;->getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    return-object v3

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handles(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->getService()Lcyanogenmod/app/suggest/IAppSuggestProvider;

    move-result-object v2

    .line 74
    .local v2, "service":Lcyanogenmod/app/suggest/IAppSuggestProvider;
    if-nez v2, :cond_0

    return v6

    .line 77
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcyanogenmod/app/suggest/IAppSuggestProvider;->handles(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 80
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v6

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
