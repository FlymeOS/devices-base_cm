.class public Lcom/android/server/pm/UpdateAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final INSTALL_FAILED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UpdateAppsReceiver"

.field private static final TAG_DEFAULT_OP:Ljava/lang/String; = "DefaultOp"

.field private static final TAG_PACKAGE_STATE:Ljava/lang/String; = "PackageState"

.field private static final TAG_UPDATE_APPS:Ljava/lang/String; = "UpdateApps"

.field private static final UPDATE_INSTALL_COMPLETE:I = 0x67

.field private static final UPDATE_INSTALL_FAILED:I = 0x68

.field private static final UPDATE_INSTALL_PATH:Ljava/lang/String; = "/custom/gms/apk/"

.field private static final UPDATE_INSTALL_READY:I = 0x65

.field private static final UPDATE_INSTALL_START:I = 0x66

.field private static final UPDATE_VERIIFY_PATH:Ljava/lang/String; = "/data/app/.need_init"

.field public static limitServiceComponentName:Landroid/content/ComponentName;

.field private static mIndex:I

.field private static mInstallApk:Ljava/io/File;

.field private static mInstalledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstalledListSize:I

.field private static mLenght:I

.field private static mMediaShared:Z

.field private static mPm:Landroid/content/pm/PackageManager;

.field private static mUpdateInstallApks:[Ljava/io/File;


# instance fields
.field dataDir:Ljava/io/File;

.field private firstBootAlreadyDefaultOp:Z

.field private firstBootAlreadyUpdateApps:Z

.field public limitPackageName:Ljava/lang/String;

.field public limitPackageName2:Ljava/lang/String;

.field private mFpm:Landroid/content/pm/FlymePackageManager;

.field private mHandler:Landroid/os/Handler;

.field private final mLocked:Ljava/lang/Object;

.field private mVerifyFileExist:Z

.field private final packageValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 54
    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    .line 55
    sput-boolean v0, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    .line 70
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qihoo360.contacts"

    const-string v2, "com.qihoo360.contacts.service.PEService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    .line 72
    const-string v0, "com.tencent.pb"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    .line 73
    const-string v0, "com.qihoo360.contacts"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$2;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 318
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    .line 411
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UpdateAppsReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return p1
.end method

.method static synthetic access$100()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallStart()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->udpateInstallComplete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UpdateAppsReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallFailed(I)V

    return-void
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/content/pm/FlymePackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 42
    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkPackageState(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()[Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$602([Ljava/io/File;)[Ljava/io/File;
    .locals 0
    .param p0, "x0"    # [Ljava/io/File;

    .prologue
    .line 42
    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/UpdateAppsReceiver;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallReady()V

    return-void
.end method

.method private checkAppsOp(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 365
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 367
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 371
    :goto_0
    if-eqz v7, :cond_0

    .line 372
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    iget v4, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UpdateAppsReceiver;->setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V

    .line 375
    :cond_0
    return-void

    .line 368
    :catch_0
    move-exception v6

    .line 369
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAppsPermission(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 379
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 381
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 385
    :goto_0
    if-eqz v1, :cond_0

    .line 386
    const/4 v3, 0x0

    .line 388
    .local v3, "serv":Landroid/content/pm/ServiceInfo;
    :try_start_1
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 391
    :goto_1
    if-eqz v3, :cond_1

    .line 392
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 398
    .end local v3    # "serv":Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_2
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 395
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "serv":Landroid/content/pm/ServiceInfo;
    :cond_1
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "service info is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 389
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private checkDefaultOpForBootCompleted(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->getFirstBootAlreadyOfOp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->setFirstBootAlreadyForOp()V

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsPermission(Landroid/content/Context;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    .line 158
    :cond_0
    return-void
.end method

.method private checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsPermission(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private checkPackageState(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 352
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 356
    .local v3, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 357
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v3    # "pkInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v2
.end method

.method private isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :cond_1
    sget-object v2, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 296
    .local v0, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 297
    goto :goto_0
.end method

.method private readXml()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 446
    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 447
    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 449
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string v9, "system/updateapps.xml"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .local v2, "newxmlfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 483
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v4, 0x0

    .line 456
    .local v4, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 457
    .end local v4    # "str":Ljava/io/FileInputStream;
    .local v5, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 458
    .local v3, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 459
    .local v7, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "UTF-8"

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 461
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 463
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_3

    .line 464
    packed-switch v1, :pswitch_data_0

    .line 477
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 468
    :pswitch_1
    const-string v8, "UpdateApps"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 469
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 480
    .end local v1    # "eventType":I
    .end local v3    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 481
    .end local v5    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v3    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_2
    const-string v8, "DefaultOp"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 472
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    goto :goto_2

    .line 479
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 482
    .end local v5    # "str":Ljava/io/FileInputStream;
    .restart local v4    # "str":Ljava/io/FileInputStream;
    goto :goto_0

    .line 480
    .end local v1    # "eventType":I
    .end local v3    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 464
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scanAllFiles(Ljava/io/File;)Ljava/util/List;
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 170
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 171
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v0, v3

    .line 172
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    invoke-direct {p0, v1}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    .line 171
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 176
    .local v5, "lastDot":I
    if-ltz v5, :cond_0

    .line 179
    const-string v7, "APK"

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 181
    .local v4, "isApk":Z
    if-eqz v4, :cond_0

    .line 182
    iget-object v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v7, "UpdateAppsReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "isApk":Z
    .end local v5    # "lastDot":I
    .end local v6    # "len$":I
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    return-object v7
.end method

.method private setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "mode"    # I

    .prologue
    .line 402
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 404
    .local v0, "mAppOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0, p2, p4, p3, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 405
    return-void
.end method

.method private udpateInstallComplete()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method

.method private updateCustomAppsIfNeeded(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$1;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/pm/UpdateAppsReceiver$1;->start()V

    .line 150
    return-void
.end method

.method private updateInstallFailed(I)V
    .locals 3
    .param p1, "returnCode"    # I

    .prologue
    .line 262
    const-string v0, "UpdateAppsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInstallFailed: returnCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method private updateInstallReady()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method private updateInstallStart()V
    .locals 9

    .prologue
    .line 217
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInstallStart :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLenght :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mPm:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMediaShared : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    if-eqz v5, :cond_0

    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    if-ge v5, v6, :cond_0

    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    if-nez v5, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    sget-boolean v5, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    if-nez v5, :cond_0

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    aget-object v5, v5, v6

    sput-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    .line 226
    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 227
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 229
    .local v4, "packageURI":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 230
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 231
    .local v1, "installFlags":I
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInstallStart :  mInstallApk.getPath() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " packageInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz v3, :cond_3

    .line 233
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/UpdateAppsReceiver;->isPackageAlreadyInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x68

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    monitor-exit p0

    goto :goto_0

    .line 254
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "installFlags":I
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageURI":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 239
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "installFlags":I
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "packageURI":Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInstallStart :  pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  NSTALL_REPLACE_EXISTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    or-int/lit8 v1, v1, 0x2

    .line 243
    or-int/lit16 v1, v1, 0x80

    .line 250
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v6, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;Lcom/android/server/pm/UpdateAppsReceiver$1;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v1, v7}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "installNumber":Ljava/lang/String;
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start install apk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    monitor-exit p0

    goto/16 :goto_0

    .line 245
    .end local v2    # "installNumber":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x68

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getFirstBootAlreadyOfOp()Z
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 337
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    monitor-exit v1

    return v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFirstBootAlreadyOfUpdate()Z
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 322
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    monitor-exit v1

    return v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPackageAlreadyInstalled(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    if-ge v0, v3, :cond_1

    .line 268
    sget-object v3, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 269
    .local v2, "tmp":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-string v3, "UpdateAppsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageAlreadyInstalled :  pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " versionCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " versionName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newVersionCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/FlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 281
    .local v1, "mPackInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, p2, :cond_0

    .line 282
    const/4 v3, 0x1

    .line 287
    .end local v1    # "mPackInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "tmp":Landroid/content/pm/PackageInfo;
    :goto_1
    return v3

    .line 267
    .restart local v2    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v2    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    .line 81
    invoke-static {p1}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 82
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateCustomAppsIfNeeded(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForBootCompleted(Landroid/content/Context;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFirstBootAlreadyForOp()V
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 345
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V

    .line 346
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirstBootAlreadyForUpdate()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeXml()V
    .locals 8

    .prologue
    .line 413
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string v6, "system/updateapps.xml"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    .local v2, "newxmlfile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 423
    .local v1, "fstr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 424
    .local v3, "out":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 425
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 426
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 428
    const/4 v5, 0x0

    const-string v6, "UpdateApps"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const/4 v5, 0x0

    const-string v6, "value"

    iget-boolean v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    const/4 v5, 0x0

    const-string v6, "UpdateApps"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const/4 v5, 0x0

    const-string v6, "DefaultOp"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const/4 v5, 0x0

    const-string v6, "value"

    iget-boolean v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const/4 v5, 0x0

    const-string v6, "DefaultOp"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 437
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 438
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 439
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 443
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
