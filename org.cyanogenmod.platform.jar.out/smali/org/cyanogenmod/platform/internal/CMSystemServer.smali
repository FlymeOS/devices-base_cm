.class public Lorg/cyanogenmod/platform/internal/CMSystemServer;
.super Ljava/lang/Object;
.source "CMSystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "CMSystemServer"


# instance fields
.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceHelper:Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemServiceHelper:Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;

    .line 40
    return-void
.end method

.method public static coreAppsOnly()Z
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 48
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    const-string/jumbo v0, "CMSystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string/jumbo v0, "CMSystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    return-void
.end method

.method private run()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMSystemServer;->startServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v1, "System"

    const-string/jumbo v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string/jumbo v1, "System"

    const-string/jumbo v2, "************ Failure starting cm system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    throw v0
.end method

.method private startServices()V
    .locals 11

    .prologue
    .line 67
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemContext:Landroid/content/Context;

    .line 68
    .local v1, "context":Landroid/content/Context;
    const-class v6, Lcom/android/server/SystemServiceManager;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemServiceManager;

    .line 69
    .local v5, "ssm":Lcom/android/server/SystemServiceManager;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 70
    const v7, 0x3f05000b

    .line 69
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "externalServices":[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v4, v3, v6

    .line 74
    .local v4, "service":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "CMSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Attempting to start service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMSystemServer;->mSystemServiceHelper:Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;

    invoke-virtual {v8, v4}, Lorg/cyanogenmod/platform/internal/common/CMSystemServiceHelper;->getServiceFor(Ljava/lang/String;)Lorg/cyanogenmod/platform/internal/CMSystemService;

    move-result-object v0

    .line 76
    .local v0, "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 77
    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/CMSystemService;->getFeatureDeclaration()Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMSystemServer;->coreAppsOnly()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/CMSystemService;->isCoreService()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    :cond_0
    const-string/jumbo v8, "CMSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Starting service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/CMSystemService;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 72
    .end local v0    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    .restart local v0    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :cond_1
    const-string/jumbo v8, "CMSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Not starting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 80
    const-string/jumbo v10, " - only parsing core apps"

    .line 79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v0    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lorg/cyanogenmod/platform/internal/CMSystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "CMSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Not starting service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 87
    const-string/jumbo v10, " due to feature not declared on device"

    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 66
    .end local v0    # "cmSystemService":Lorg/cyanogenmod/platform/internal/CMSystemService;
    .end local v4    # "service":Ljava/lang/String;
    :cond_3
    return-void
.end method
