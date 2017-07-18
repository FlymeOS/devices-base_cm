.class public Lcyanogenmod/themes/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;,
        Lcyanogenmod/themes/ThemeManager$ThemeProcessingListener;,
        Lcyanogenmod/themes/ThemeManager$1;,
        Lcyanogenmod/themes/ThemeManager$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static sInstance:Lcyanogenmod/themes/ThemeManager;

.field private static sService:Lcyanogenmod/themes/IThemeService;


# instance fields
.field private mChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/themes/ThemeManager$ThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mThemeChangeListener:Lcyanogenmod/themes/IThemeChangeListener;

.field private final mThemeProcessingListener:Lcyanogenmod/themes/IThemeProcessingListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/themes/ThemeManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcyanogenmod/themes/ThemeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcyanogenmod/themes/ThemeManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcyanogenmod/themes/ThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    .line 83
    new-instance v0, Lcyanogenmod/themes/ThemeManager$1;

    invoke-direct {v0, p0}, Lcyanogenmod/themes/ThemeManager$1;-><init>(Lcyanogenmod/themes/ThemeManager;)V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeManager;->mThemeChangeListener:Lcyanogenmod/themes/IThemeChangeListener;

    .line 136
    new-instance v0, Lcyanogenmod/themes/ThemeManager$2;

    invoke-direct {v0, p0}, Lcyanogenmod/themes/ThemeManager$2;-><init>(Lcyanogenmod/themes/ThemeManager;)V

    .line 135
    iput-object v0, p0, Lcyanogenmod/themes/ThemeManager;->mThemeProcessingListener:Lcyanogenmod/themes/IThemeProcessingListener;

    .line 52
    invoke-static {}, Lcyanogenmod/themes/ThemeManager;->getService()Lcyanogenmod/themes/IThemeService;

    move-result-object v0

    sput-object v0, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "org.cyanogenmod.theme"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to get ThemeManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcyanogenmod/themes/ThemeManager;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/themes/ThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcyanogenmod/themes/ThemeManager;->sInstance:Lcyanogenmod/themes/ThemeManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcyanogenmod/themes/ThemeManager;

    invoke-direct {v0, p0}, Lcyanogenmod/themes/ThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/themes/ThemeManager;->sInstance:Lcyanogenmod/themes/ThemeManager;

    .line 67
    :cond_0
    sget-object v0, Lcyanogenmod/themes/ThemeManager;->sInstance:Lcyanogenmod/themes/ThemeManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/themes/IThemeService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    return-object v1

    .line 75
    :cond_0
    const-string/jumbo v1, "cmthemes"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 77
    invoke-static {v0}, Lcyanogenmod/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    .line 78
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    return-object v1

    .line 80
    :cond_1
    return-object v2
.end method

.method private logThemeServiceException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 379
    sget-object v0, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to access ThemeService"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    return-void
.end method


# virtual methods
.method public addClient(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcyanogenmod/themes/ThemeManager;->registerThemeChangeListener(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V

    .line 167
    return-void
.end method

.method public applyDefaultTheme()V
    .locals 2

    .prologue
    .line 313
    :try_start_0
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v1}, Lcyanogenmod/themes/IThemeService;->applyDefaultTheme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastThemeChangeRequestType()Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 367
    :try_start_0
    sget-object v3, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v3}, Lcyanogenmod/themes/IThemeService;->getLastThemeChangeRequestType()I

    move-result v1

    .line 368
    .local v1, "type":I
    if-ltz v1, :cond_0

    invoke-static {}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->values()[Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 369
    invoke-static {}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->values()[Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    move-result-object v3

    aget-object v2, v3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    return-object v2

    .line 371
    .end local v1    # "type":I
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 375
    return-object v2
.end method

.method public getLastThemeChangeTime()J
    .locals 4

    .prologue
    .line 358
    :try_start_0
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v1}, Lcyanogenmod/themes/IThemeService;->getLastThemeChangeTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 362
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 340
    :try_start_0
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v1}, Lcyanogenmod/themes/IThemeService;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 344
    const/4 v1, -0x1

    return v1
.end method

.method public isThemeApplying()Z
    .locals 2

    .prologue
    .line 321
    :try_start_0
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v1}, Lcyanogenmod/themes/IThemeService;->isThemeApplying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 326
    const/4 v1, 0x0

    return v1
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 331
    :try_start_0
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v1, p1}, Lcyanogenmod/themes/IThemeService;->isThemeBeingProcessed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 335
    const/4 v1, 0x0

    return v1
.end method

.method public onClientDestroyed(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcyanogenmod/themes/ThemeManager;->unregisterThemeChangeListener(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V

    .line 198
    return-void
.end method

.method public onClientPaused(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcyanogenmod/themes/ThemeManager;->unregisterThemeChangeListener(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V

    .line 183
    return-void
.end method

.method public onClientResumed(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcyanogenmod/themes/ThemeManager;->registerThemeChangeListener(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V

    .line 190
    return-void
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 349
    :try_start_0
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v1, p1}, Lcyanogenmod/themes/IThemeService;->processThemeResources(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 353
    const/4 v1, 0x0

    return v1
.end method

.method public registerProcessingListener(Lcyanogenmod/themes/ThemeManager$ThemeProcessingListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeProcessingListener;

    .prologue
    .line 245
    iget-object v2, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    .line 246
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 249
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 251
    :try_start_2
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    iget-object v3, p0, Lcyanogenmod/themes/ThemeManager;->mThemeProcessingListener:Lcyanogenmod/themes/IThemeProcessingListener;

    invoke-interface {v1, v3}, Lcyanogenmod/themes/IThemeService;->registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 244
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public registerThemeChangeListener(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 207
    iget-object v2, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 211
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :try_start_2
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    iget-object v3, p0, Lcyanogenmod/themes/ThemeManager;->mThemeChangeListener:Lcyanogenmod/themes/IThemeChangeListener;

    invoke-interface {v1, v3}, Lcyanogenmod/themes/IThemeService;->requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 206
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public removeClient(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcyanogenmod/themes/ThemeManager;->unregisterThemeChangeListener(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V

    .line 175
    return-void
.end method

.method public requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 2
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z

    .prologue
    .line 305
    :try_start_0
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcyanogenmod/themes/ThemeManager;->requestThemeChange(Ljava/lang/String;Ljava/util/List;Z)V

    .line 277
    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 284
    .local v2, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "component":Ljava/lang/String;
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2, p3}, Lcyanogenmod/themes/ThemeManager;->requestThemeChange(Ljava/util/Map;Z)V

    .line 282
    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcyanogenmod/themes/ThemeManager;->requestThemeChange(Ljava/util/Map;Z)V

    .line 290
    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;Z)V
    .locals 4
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 296
    .local v0, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    .local v1, "component":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    goto :goto_0

    .line 300
    .end local v1    # "component":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcyanogenmod/themes/ThemeManager;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    .line 294
    return-void
.end method

.method public unregisterProcessingListener(Lcyanogenmod/themes/ThemeManager$ThemeProcessingListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeProcessingListener;

    .prologue
    .line 265
    iget-object v2, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 267
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 269
    :try_start_1
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    iget-object v3, p0, Lcyanogenmod/themes/ThemeManager;->mThemeProcessingListener:Lcyanogenmod/themes/IThemeProcessingListener;

    invoke-interface {v1, v3}, Lcyanogenmod/themes/IThemeService;->unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 264
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to unregister listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterThemeChangeListener(Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 227
    iget-object v2, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, p0, Lcyanogenmod/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :try_start_1
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->sService:Lcyanogenmod/themes/IThemeService;

    iget-object v3, p0, Lcyanogenmod/themes/ThemeManager;->mThemeChangeListener:Lcyanogenmod/themes/IThemeChangeListener;

    invoke-interface {v1, v3}, Lcyanogenmod/themes/IThemeService;->removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 226
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lcyanogenmod/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to unregister listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
