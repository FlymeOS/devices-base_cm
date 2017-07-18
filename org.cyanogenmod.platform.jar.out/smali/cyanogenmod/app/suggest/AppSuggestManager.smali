.class public Lcyanogenmod/app/suggest/AppSuggestManager;
.super Ljava/lang/Object;
.source "AppSuggestManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sImpl:Lcyanogenmod/app/suggest/IAppSuggestManager;

.field private static sInstance:Lcyanogenmod/app/suggest/AppSuggestManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcyanogenmod/app/suggest/AppSuggestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/suggest/AppSuggestManager;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/suggest/AppSuggestManager;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Lcyanogenmod/app/suggest/AppSuggestManager;->getService()Lcyanogenmod/app/suggest/IAppSuggestManager;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/suggest/AppSuggestManager;->sImpl:Lcyanogenmod/app/suggest/IAppSuggestManager;

    .line 81
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcyanogenmod/app/suggest/AppSuggestManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcyanogenmod/app/suggest/AppSuggestManager;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcyanogenmod/app/suggest/AppSuggestManager;->sInstance:Lcyanogenmod/app/suggest/AppSuggestManager;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcyanogenmod/app/suggest/AppSuggestManager;->sInstance:Lcyanogenmod/app/suggest/AppSuggestManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 69
    :cond_1
    new-instance v0, Lcyanogenmod/app/suggest/AppSuggestManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/suggest/AppSuggestManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/suggest/AppSuggestManager;->sInstance:Lcyanogenmod/app/suggest/AppSuggestManager;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "org.cyanogenmod.appsuggest"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcyanogenmod/app/suggest/AppSuggestManager;->sImpl:Lcyanogenmod/app/suggest/IAppSuggestManager;

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to get AppSuggestManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 78
    :cond_2
    :try_start_2
    sget-object v0, Lcyanogenmod/app/suggest/AppSuggestManager;->sInstance:Lcyanogenmod/app/suggest/AppSuggestManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getService()Lcyanogenmod/app/suggest/IAppSuggestManager;
    .locals 4

    .prologue
    const-class v2, Lcyanogenmod/app/suggest/AppSuggestManager;

    monitor-enter v2

    .line 88
    :try_start_0
    sget-object v1, Lcyanogenmod/app/suggest/AppSuggestManager;->sImpl:Lcyanogenmod/app/suggest/IAppSuggestManager;

    if-nez v1, :cond_0

    .line 89
    const-string/jumbo v1, "cmappsuggest"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 90
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 91
    invoke-static {v0}, Lcyanogenmod/app/suggest/IAppSuggestManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/suggest/IAppSuggestManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/suggest/AppSuggestManager;->sImpl:Lcyanogenmod/app/suggest/IAppSuggestManager;

    .line 97
    :cond_0
    :goto_0
    sget-object v1, Lcyanogenmod/app/suggest/AppSuggestManager;->sImpl:Lcyanogenmod/app/suggest/IAppSuggestManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 93
    :cond_1
    :try_start_1
    sget-object v1, Lcyanogenmod/app/suggest/AppSuggestManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to find implementation for app suggest service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x0

    .line 125
    invoke-static {}, Lcyanogenmod/app/suggest/AppSuggestManager;->getService()Lcyanogenmod/app/suggest/IAppSuggestManager;

    move-result-object v1

    .line 126
    .local v1, "mgr":Lcyanogenmod/app/suggest/IAppSuggestManager;
    if-nez v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2

    .line 128
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcyanogenmod/app/suggest/IAppSuggestManager;->getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public handles(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {}, Lcyanogenmod/app/suggest/AppSuggestManager;->getService()Lcyanogenmod/app/suggest/IAppSuggestManager;

    move-result-object v1

    .line 109
    .local v1, "mgr":Lcyanogenmod/app/suggest/IAppSuggestManager;
    if-nez v1, :cond_0

    return v2

    .line 111
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcyanogenmod/app/suggest/IAppSuggestManager;->handles(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public loadIcon(Lcyanogenmod/app/suggest/ApplicationSuggestion;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "suggestion"    # Lcyanogenmod/app/suggest/ApplicationSuggestion;

    .prologue
    const/4 v4, 0x0

    .line 143
    :try_start_0
    iget-object v2, p0, Lcyanogenmod/app/suggest/AppSuggestManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Lcyanogenmod/app/suggest/ApplicationSuggestion;->getThumbailUri()Landroid/net/Uri;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 145
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 146
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-object v4
.end method
