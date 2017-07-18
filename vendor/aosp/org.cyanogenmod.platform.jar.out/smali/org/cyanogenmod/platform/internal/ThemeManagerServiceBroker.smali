.class public Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;
.super Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;
.source "ThemeManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$1;,
        Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService",
        "<",
        "Lcyanogenmod/themes/IThemeService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/themes/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mProcessingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/themes/IThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

.field private final mServiceStubForFailure:Lcyanogenmod/themes/IThemeService;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->enforcePermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-class v0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.cyanogenmod.themeservice"

    .line 58
    const-string/jumbo v2, "org.cyanogenmod.themeservice.ThemeManagerService"

    .line 57
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sput-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 61
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    .line 68
    new-instance v0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$1;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mServiceStubForFailure:Lcyanogenmod/themes/IThemeService;

    .line 275
    new-instance v0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$2;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mServiceConnection:Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    .line 222
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mContext:Landroid/content/Context;

    .line 223
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mServiceConnection:Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->setBrokeredServiceConnection(Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;)V

    .line 220
    return-void
.end method

.method private static createDirIfNotExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 362
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 367
    const/4 v1, 0x1

    return v1

    .line 370
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "cyanogenmod.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private isUserWritable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 353
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 354
    .local v1, "stat":Landroid/system/StructStat;
    iget v3, v1, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 355
    .end local v1    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/system/ErrnoException;
    sget-object v3, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v2
.end method

.method private migrateFilePermissions()V
    .locals 5

    .prologue
    .line 333
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/system/theme"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 334
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 335
    .local v0, "file":Ljava/io/File;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->setAllUsersWritable(Ljava/io/File;Z)V

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private setAllUsersWritable(Ljava/io/File;Z)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "recursive"    # Z

    .prologue
    const/4 v3, 0x0

    .line 340
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 342
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 343
    .local v0, "childFile":Ljava/io/File;
    invoke-direct {p0, v0, p2}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->setAllUsersWritable(Ljava/io/File;Z)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "childFile":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->isUserWritable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 339
    :cond_1
    return-void
.end method

.method private shouldMigrateFilePermissions()Z
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->isUserWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getComponentFilteringPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string/jumbo v0, "cyanogenmod.permission.ACCESS_THEME_MANAGER"

    return-object v0
.end method

.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getDefaultImplementation()Lcyanogenmod/themes/IThemeService;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lcyanogenmod/themes/IThemeService;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->mServiceStubForFailure:Lcyanogenmod/themes/IThemeService;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string/jumbo v0, "org.cyanogenmod.theme"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 228
    invoke-static {p1}, Lcyanogenmod/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 259
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 261
    const-string/jumbo v0, "/data/system/theme"

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->createDirIfNotExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "/data/system/theme"

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z

    .line 266
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->shouldMigrateFilePermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->migrateFilePermissions()V

    .line 272
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->onBootPhase(I)V

    .line 258
    return-void

    .line 269
    :cond_2
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->tryConnecting()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 249
    const-string/jumbo v0, "cmthemes"

    new-instance v1, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 247
    return-void
.end method
