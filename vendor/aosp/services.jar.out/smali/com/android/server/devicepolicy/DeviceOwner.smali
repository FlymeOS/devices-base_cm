.class public Lcom/android/server/devicepolicy/DeviceOwner;
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

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"


# instance fields
.field private fileForWriting:Landroid/util/AtomicFile;

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    .line 79
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    .line 80
    return-void
.end method

.method static createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 100
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v1, p1, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 101
    return-object v0
.end method

.method static createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 4
    .param p0, "admin"    # Landroid/content/ComponentName;
    .param p1, "ownerName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 118
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 119
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v3, p1, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object v0
.end method

.method static createWithProfileOwner(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "ownerName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 109
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 110
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v3, p1, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v0
.end method

.method private finishWrite(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    check-cast p1, Ljava/io/FileOutputStream;

    .end local p1    # "stream":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 330
    :cond_0
    return-void
.end method

.method static isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 185
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 186
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 187
    const/4 v2, 0x1

    .line 193
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Owner package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not installed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static isInstalledForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 200
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 201
    const/4 v2, 0x1

    .line 207
    :cond_0
    return v2

    .line 203
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static load()Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    .line 87
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "device_owner.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->readOwnerFile()V

    .line 91
    .end local v0    # "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    :goto_0
    return-object v0

    .restart local v0    # "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openRead()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    .line 312
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "device_owner.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private startWrite()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    .line 323
    :goto_0
    return-object v0

    .line 321
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "device_owner.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    .line 323
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOwnerFileLocked()V
    .locals 9

    .prologue
    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceOwner;->startWrite()Ljava/io/OutputStream;

    move-result-object v3

    .line 271
    .local v3, "outputStream":Ljava/io/OutputStream;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 272
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 273
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 276
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v6, :cond_1

    .line 277
    const/4 v6, 0x0

    const-string v7, "device-owner"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const/4 v6, 0x0

    const-string v7, "package"

    iget-object v8, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 280
    const/4 v6, 0x0

    const-string v7, "name"

    iget-object v8, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    :cond_0
    const/4 v6, 0x0

    const-string v7, "device-owner"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    :cond_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 287
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 288
    .local v4, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    const/4 v6, 0x0

    const-string v7, "profile-owner"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 290
    .local v5, "ownerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    const/4 v6, 0x0

    const-string v7, "package"

    iget-object v8, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    const/4 v6, 0x0

    const-string v7, "name"

    iget-object v8, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    const/4 v7, 0x0

    const-string v8, "userId"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget-object v6, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    .line 294
    const/4 v6, 0x0

    const-string v7, "component"

    iget-object v8, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    :cond_2
    const/4 v6, 0x0

    const-string v7, "profile-owner"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    .end local v5    # "ownerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "ioe":Ljava/io/IOException;
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception when writing device-owner file\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 299
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 300
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 301
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DeviceOwner;->finishWrite(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method clearDeviceOwner()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 137
    return-void
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 166
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 175
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 171
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getProfileOwnerPackageName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 161
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasDeviceOwner()Z
    .locals 1

    .prologue
    .line 179
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
    .locals 18

    .prologue
    .line 212
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DeviceOwner;->openRead()Ljava/io/InputStream;

    move-result-object v2

    .line 213
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 214
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v6, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v15, 0x1

    if-eq v12, v15, :cond_6

    .line 217
    const/4 v15, 0x2

    if-ne v12, v15, :cond_0

    .line 221
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "tag":Ljava/lang/String;
    const-string v15, "device-owner"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 223
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "name":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "package"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "packageName":Ljava/lang/String;
    new-instance v15, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v15, v4, v5}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 255
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v14

    .line 256
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error parsing device-owner file\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-void

    .line 226
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_1
    :try_start_1
    const-string v15, "profile-owner"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 227
    const/4 v15, 0x0

    const-string v16, "package"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "profileOwnerPackageName":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, "profileOwnerName":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "component"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "profileOwnerComponentStr":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "userId"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 232
    .local v13, "userId":I
    const/4 v8, 0x0

    .line 233
    .local v8, "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v7, :cond_2

    .line 234
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 236
    .local v1, "admin":Landroid/content/ComponentName;
    if-eqz v1, :cond_4

    .line 237
    new-instance v8, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .end local v8    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    invoke-direct {v8, v9, v1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 245
    .end local v1    # "admin":Landroid/content/ComponentName;
    .restart local v8    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :cond_2
    :goto_2
    if-nez v8, :cond_3

    .line 246
    new-instance v8, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .end local v8    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    invoke-direct {v8, v9, v10}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .restart local v8    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 257
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v8    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    .end local v9    # "profileOwnerName":Ljava/lang/String;
    .end local v10    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "userId":I
    :catch_1
    move-exception v3

    .line 258
    .local v3, "ioe":Ljava/io/IOException;
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IO Exception when reading device-owner file\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "admin":Landroid/content/ComponentName;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "profileOwnerComponentStr":Ljava/lang/String;
    .restart local v8    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    .restart local v9    # "profileOwnerName":Ljava/lang/String;
    .restart local v10    # "profileOwnerPackageName":Ljava/lang/String;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    .restart local v13    # "userId":I
    :cond_4
    :try_start_2
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error parsing device-owner file. Bad component name "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 250
    .end local v1    # "admin":Landroid/content/ComponentName;
    .end local v7    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v8    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    .end local v9    # "profileOwnerName":Ljava/lang/String;
    .end local v10    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v13    # "userId":I
    :cond_5
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected tag in device owner file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 254
    .end local v11    # "tag":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method removeProfileOwner(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v0, p2, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    .line 133
    return-void
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v2, p2, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method setProfileOwner(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    invoke-direct {v2, p2, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method writeOwnerFile()V
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFileLocked()V

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
