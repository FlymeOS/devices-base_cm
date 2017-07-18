.class Lcom/android/server/devicepolicy/DeviceOwner;
.super Ljava/lang/Object;
.source "DeviceOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private fileForWriting:Landroid/util/AtomicFile;

.field private mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

.field private mInputStreamForTest:Ljava/io/InputStream;

.field private mOutputStreamForTest:Ljava/io/OutputStream;

.field private final mProfileOwners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    .line 91
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    .line 92
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    .line 90
    return-void
.end method

.method static createWithDeviceInitializer(Landroid/content/ComponentName;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 3
    .param p0, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 122
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    iput-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 123
    return-object v0
.end method

.method static createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 113
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v1, p1, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 114
    return-object v0
.end method

.method static createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 4
    .param p0, "admin"    # Landroid/content/ComponentName;
    .param p1, "ownerName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 130
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 131
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v3, p1, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object v0
.end method

.method private finishWrite(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    check-cast p1, Ljava/io/FileOutputStream;

    .end local p1    # "stream":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 388
    :cond_0
    return-void
.end method

.method static isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v5, 0x0

    .line 212
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 213
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 214
    const/4 v2, 0x1

    return v2

    .line 217
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device Owner package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not installed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v5
.end method

.method static isInstalledForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 225
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 226
    const/4 v3, 0x0

    .line 225
    invoke-interface {v2, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 227
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x1

    return v2

    .line 230
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 234
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    return v4
.end method

.method static load()Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 100
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "device_owner.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->readOwnerFile()V

    .line 102
    return-object v0

    .line 104
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private openRead()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    return-object v0

    .line 374
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    .line 375
    const-string/jumbo v3, "device_owner.xml"

    .line 374
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method private startWrite()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    return-object v0

    .line 383
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    .line 384
    const-string/jumbo v3, "device_owner.xml"

    .line 383
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    .line 385
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method private writeOwnerFileLocked()V
    .locals 9

    .prologue
    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceOwner;->startWrite()Ljava/io/OutputStream;

    move-result-object v2

    .line 315
    .local v2, "outputStream":Ljava/io/OutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 316
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 317
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 320
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v6, :cond_1

    .line 321
    const-string/jumbo v6, "device-owner"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 324
    const-string/jumbo v6, "name"

    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :cond_0
    const-string/jumbo v6, "device-owner"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    :cond_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v6, :cond_3

    .line 331
    const-string/jumbo v6, "device-initializer"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    .line 335
    const-string/jumbo v6, "component"

    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 334
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    :cond_2
    const-string/jumbo v6, "device-initializer"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    :cond_3
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 342
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "owner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 343
    .local v3, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    const-string/jumbo v6, "profile-owner"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 345
    .local v5, "ownerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    const-string/jumbo v6, "package"

    iget-object v7, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    const-string/jumbo v6, "name"

    iget-object v7, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    const-string/jumbo v7, "userId"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v1, v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    iget-object v6, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    .line 349
    const-string/jumbo v6, "component"

    iget-object v7, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    :cond_4
    const-string/jumbo v6, "profile-owner"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    .end local v4    # "owner$iterator":Ljava/util/Iterator;
    .end local v5    # "ownerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IO Exception when writing device-owner file\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 356
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v6, :cond_6

    .line 357
    const-string/jumbo v6, "system-update-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v6, v1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 359
    const-string/jumbo v6, "system-update-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :cond_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 362
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 363
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DeviceOwner;->finishWrite(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method clearDeviceInitializer()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 163
    return-void
.end method

.method clearDeviceOwner()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 147
    return-void
.end method

.method clearSystemUpdatePolicy()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 201
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 418
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v2, :cond_0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Device Owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 424
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Profile Owner (User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 417
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    return-object v0
.end method

.method getDeviceInitializerPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 181
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    :cond_0
    return-object v1
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 186
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method hasDeviceInitializer()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasDeviceOwner()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readOwnerFile()V
    .locals 20

    .prologue
    .line 240
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DeviceOwner;->openRead()Ljava/io/InputStream;

    move-result-object v4

    .line 241
    .local v4, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 242
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_9

    .line 245
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_0

    .line 249
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 250
    .local v13, "tag":Ljava/lang/String;
    const-string/jumbo v17, "device-owner"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 251
    const-string/jumbo v17, "name"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v17, "package"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, "packageName":Ljava/lang/String;
    new-instance v17, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 298
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_0
    move-exception v16

    .line 299
    .local v16, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error parsing device-owner file\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v16    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-void

    .line 254
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_1
    :try_start_1
    const-string/jumbo v17, "device-initializer"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 255
    const-string/jumbo v17, "package"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 257
    .restart local v7    # "packageName":Ljava/lang/String;
    const-string/jumbo v17, "component"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "initializerComponentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 260
    .local v2, "admin":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 261
    new-instance v17, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 300
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "initializerComponentStr":Ljava/lang/String;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_1
    move-exception v5

    .line 301
    .local v5, "ioe":Ljava/io/IOException;
    const-string/jumbo v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IO Exception when reading device-owner file\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v3    # "initializerComponentStr":Ljava/lang/String;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_2
    :try_start_2
    new-instance v17, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 264
    const-string/jumbo v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error parsing device-owner file. Bad component name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "initializerComponentStr":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v17, "profile-owner"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 268
    const-string/jumbo v17, "package"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "profileOwnerPackageName":Ljava/lang/String;
    const-string/jumbo v17, "name"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 271
    .local v11, "profileOwnerName":Ljava/lang/String;
    const-string/jumbo v17, "component"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "profileOwnerComponentStr":Ljava/lang/String;
    const-string/jumbo v17, "userId"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 273
    .local v15, "userId":I
    const/4 v10, 0x0

    .line 274
    .local v10, "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v9, :cond_4

    .line 275
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 277
    .restart local v2    # "admin":Landroid/content/ComponentName;
    if-eqz v2, :cond_6

    .line 278
    new-instance v10, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .end local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    invoke-direct {v10, v11, v2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 286
    .end local v2    # "admin":Landroid/content/ComponentName;
    :cond_4
    :goto_2
    if-nez v10, :cond_5

    .line 287
    new-instance v10, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v10, v11, v12}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 282
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :cond_6
    const-string/jumbo v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error parsing device-owner file. Bad component name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 290
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v9    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    .end local v11    # "profileOwnerName":Ljava/lang/String;
    .end local v12    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    :cond_7
    const-string/jumbo v17, "system-update-policy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 291
    invoke-static {v8}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    goto/16 :goto_0

    .line 293
    :cond_8
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    .line 294
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unexpected tag in device owner file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 293
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 297
    .end local v13    # "tag":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method removeProfileOwner(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method setDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 159
    return-void
.end method

.method setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v0, p2, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 143
    return-void
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v2, p2, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 0
    .param p1, "systemUpdatePolicy"    # Landroid/app/admin/SystemUpdatePolicy;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 197
    return-void
.end method

.method writeOwnerFile()V
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 306
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
