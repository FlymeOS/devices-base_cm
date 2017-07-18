.class public Lcom/android/server/pm/UpdateAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;,
        Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;,
        Lcom/android/server/pm/UpdateAppsReceiver$1;
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

.field private static final UPDATE_PEDOMETER_PATH:Ljava/lang/String; = "/custom/3rd-party/apk/Pedometer"

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
.method static synthetic -get0(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/content/pm/FlymePackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    return v0
.end method

.method static synthetic -get3()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return v0
.end method

.method static synthetic -get5()Landroid/content/pm/PackageManager;
    .locals 1

    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get6()[Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/pm/UpdateAppsReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return p0
.end method

.method static synthetic -set3([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set4(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "result"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkPackageState(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->udpateInstallComplete()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/UpdateAppsReceiver;I)V
    .locals 0
    .param p1, "returnCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallFailed(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallReady()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallStart()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 55
    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    .line 56
    sput-boolean v0, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    .line 71
    new-instance v0, Landroid/content/ComponentName;

    .line 72
    const-string/jumbo v1, "com.qihoo360.contacts"

    const-string/jumbo v2, "com.qihoo360.contacts.service.PEService"

    .line 71
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    .line 73
    const-string/jumbo v0, "com.tencent.pb"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "com.qihoo360.contacts"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$1;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 322
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    .line 415
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    .line 42
    return-void
.end method

.method private checkAppsOp(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 369
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 371
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 375
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v7, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    iget v4, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 376
    const/16 v2, 0x18

    .line 377
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 376
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UpdateAppsReceiver;->setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V

    .line 367
    :cond_0
    return-void

    .line 372
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    .line 373
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAppsPermission(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 383
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 385
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 390
    const/4 v3, 0x0

    .line 392
    .local v3, "serv":Landroid/content/pm/ServiceInfo;
    :try_start_1
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 395
    .end local v3    # "serv":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-eqz v3, :cond_1

    .line 396
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    .line 397
    const/4 v5, 0x2

    .line 396
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 381
    :cond_0
    :goto_2
    return-void

    .line 386
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string/jumbo v4, "UpdateAppsReceiver"

    const-string/jumbo v5, "service info is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 393
    .restart local v3    # "serv":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private checkDefaultOpForBootCompleted(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->getFirstBootAlreadyOfOp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->setFirstBootAlreadyForOp()V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsPermission(Landroid/content/Context;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    .line 156
    :cond_0
    return-void
.end method

.method private checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
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
    .line 354
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apkFile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 356
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 360
    .local v3, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 361
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v3    # "pkInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v2
.end method

.method private isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    return-object v4

    .line 298
    :cond_0
    sget-object v1, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 300
    .local v0, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2

    .line 301
    :cond_1
    return-object v4

    .line 303
    :cond_2
    return-object v0
.end method

.method private readXml()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 450
    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 451
    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 453
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string/jumbo v9, "system/updateapps.xml"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 455
    .local v2, "newxmlfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 456
    return-void

    .line 458
    :cond_0
    const/4 v4, 0x0

    .line 460
    .local v4, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    .local v5, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .end local v4    # "str":Ljava/io/FileInputStream;
    move-result-object v3

    .line 462
    .local v3, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 463
    .local v7, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v8, "UTF-8"

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 465
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 467
    .local v1, "eventType":I
    :goto_0
    const/4 v8, 0x1

    if-eq v1, v8, :cond_3

    .line 468
    packed-switch v1, :pswitch_data_0

    .line 481
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 472
    :pswitch_1
    const-string/jumbo v8, "UpdateApps"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 473
    const-string/jumbo v8, "value"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 484
    .end local v1    # "eventType":I
    .end local v3    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 485
    .end local v5    # "str":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 475
    .restart local v1    # "eventType":I
    .restart local v3    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_2
    const-string/jumbo v8, "DefaultOp"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 476
    const-string/jumbo v8, "value"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 477
    .restart local v6    # "value":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    goto :goto_1

    .line 483
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v5    # "str":Ljava/io/FileInputStream;
    .local v4, "str":Ljava/io/FileInputStream;
    goto :goto_3

    .line 484
    .end local v1    # "eventType":I
    .end local v3    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "str":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scanAllFiles(Ljava/io/File;)Ljava/util/List;
    .locals 9
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
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 174
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 175
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 176
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    invoke-direct {p0, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    .line 175
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 180
    .local v3, "lastDot":I
    if-ltz v3, :cond_0

    .line 183
    const-string/jumbo v6, "APK"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 185
    .local v2, "isApk":Z
    if-eqz v2, :cond_0

    .line 186
    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const-string/jumbo v6, "UpdateAppsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "add : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "isApk":Z
    .end local v3    # "lastDot":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    return-object v4
.end method

.method private setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "mode"    # I

    .prologue
    .line 407
    const-string/jumbo v1, "appops"

    .line 406
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 408
    .local v0, "mAppOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0, p2, p4, p3, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 405
    return-void
.end method

.method private udpateInstallComplete()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    return-void
.end method

.method private updateCustomAppsIfNeeded(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$2;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/pm/UpdateAppsReceiver$2;->start()V

    .line 94
    return-void
.end method

.method private updateInstallFailed(I)V
    .locals 3
    .param p1, "returnCode"    # I

    .prologue
    .line 266
    const-string/jumbo v0, "UpdateAppsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInstallFailed: returnCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method private updateInstallReady()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method private updateInstallStart()V
    .locals 9

    .prologue
    .line 221
    const-string/jumbo v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInstallStart :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    const-string/jumbo v7, " mLenght :  "

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    sget v7, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    const-string/jumbo v7, "  mPm:  "

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    const-string/jumbo v7, " mMediaShared : "

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    sget-boolean v7, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    if-eqz v5, :cond_0

    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    if-lt v5, v6, :cond_1

    .line 224
    :cond_0
    return-void

    .line 223
    :cond_1
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_0

    .line 226
    sget-boolean v5, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    if-eqz v5, :cond_2

    .line 227
    return-void

    .line 228
    :cond_2
    monitor-enter p0

    .line 229
    :try_start_0
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    aget-object v5, v5, v6

    sput-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    .line 230
    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 231
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 233
    .local v4, "packageURI":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 235
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInstallStart :  mInstallApk.getPath() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " packageInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz v3, :cond_4

    .line 237
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 238
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 237
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/UpdateAppsReceiver;->isPackageAlreadyInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 239
    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 240
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x68

    .line 239
    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 241
    return-void

    .line 243
    :cond_3
    :try_start_1
    const-string/jumbo v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInstallStart :  pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    const-string/jumbo v7, "  NSTALL_REPLACE_EXISTING"

    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x2

    .line 247
    .local v1, "installFlags":I
    or-int/lit16 v1, v1, 0x80

    .line 254
    sget-object v5, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v6, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;Lcom/android/server/pm/UpdateAppsReceiver$PackageInstallObserver;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v1, v7}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "installNumber":Ljava/lang/String;
    const-string/jumbo v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Start install apk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 220
    return-void

    .line 249
    .end local v1    # "installFlags":I
    .end local v2    # "installNumber":Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 250
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x68

    .line 249
    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 251
    return-void

    .line 228
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageURI":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public getFirstBootAlreadyOfOp()Z
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 341
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFirstBootAlreadyOfUpdate()Z
    .locals 2

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 326
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isPackageAlreadyInstalled(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    if-ge v0, v3, :cond_1

    .line 272
    sget-object v3, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 273
    .local v2, "tmp":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const-string/jumbo v3, "UpdateAppsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPackageAlreadyInstalled :  pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    const-string/jumbo v5, " versionCode: "

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    const-string/jumbo v5, " versionName: "

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 276
    const-string/jumbo v5, " newVersionCode: "

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/FlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 285
    .local v1, "mPackInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, p2, :cond_0

    .line 286
    const/4 v3, 0x1

    return v3

    .line 271
    .end local v1    # "mPackInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    .line 82
    invoke-static {p1}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 83
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateCustomAppsIfNeeded(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForBootCompleted(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->uninstallGmsAsync()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    invoke-static {v1, v0}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->updateGmsPermissionsIfNeeeded(Landroid/content/pm/FlymePackageManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFirstBootAlreadyForOp()V
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 345
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFirstBootAlreadyForUpdate()V
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 330
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeXml()V
    .locals 9

    .prologue
    .line 417
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string/jumbo v7, "system/updateapps.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    .local v3, "newxmlfile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 420
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 427
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 428
    .local v4, "out":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 429
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v6, "utf-8"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 430
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 432
    const-string/jumbo v6, "UpdateApps"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string/jumbo v6, "value"

    iget-boolean v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string/jumbo v6, "UpdateApps"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    const-string/jumbo v6, "DefaultOp"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    const-string/jumbo v6, "value"

    iget-boolean v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    const-string/jumbo v6, "DefaultOp"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 441
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 442
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 443
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
