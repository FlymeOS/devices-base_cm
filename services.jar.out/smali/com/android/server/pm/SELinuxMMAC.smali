.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$Policy;
    }
.end annotation


# static fields
.field private static final BASE_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final BASE_SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final BASE_VERSION_FILE:Ljava/lang/String; = "/selinux_version"

.field private static final DATA_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final DATA_SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final DATA_VERSION_FILE:Ljava/lang/String;

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final MAC_PERMISSIONS:Ljava/lang/String;

.field private static final SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final SEAPP_HASH_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final USE_OVERRIDE_POLICY:Z

.field private static sDefaultSeinfo:Ljava/lang/String;

.field private static sSigSeinfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/selinux_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->useOverridePolicy()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/security/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    .line 79
    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/seapp_contexts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/seapp_hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "/seapp_contexts"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)Z
    .locals 9
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v6, 0x1

    .line 350
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 351
    .local v4, "s":Landroid/content/pm/Signature;
    if-nez v4, :cond_1

    .line 350
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$Policy;

    .line 355
    .local v3, "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    if-eqz v3, :cond_0

    .line 356
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/server/pm/SELinuxMMAC$Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, "seinfo":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 358
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 375
    .end local v3    # "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    .end local v4    # "s":Landroid/content/pm/Signature;
    .end local v5    # "seinfo":Ljava/lang/String;
    :cond_2
    :goto_1
    return v6

    .line 370
    :cond_3
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 375
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    if-nez v7, :cond_2

    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static dumpHash(Ljava/io/File;[B)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 431
    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    const-string v3, "seapp_hash"

    const-string v4, ".journal"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 432
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 433
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 435
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 436
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure renaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :catchall_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 443
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 440
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v2, :cond_2

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 443
    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 445
    return-void

    .line 440
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_0
.end method

.method private static flushInstallPolicy()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private static parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 275
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "seinfoValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const-string v1, "SELinuxMMAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<seinfo> without valid value at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    .line 281
    :cond_0
    return-object v0
.end method

.method public static readInstallPolicy()Z
    .locals 15

    .prologue
    .line 142
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v8, "sigSeinfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/pm/Signature;Lcom/android/server/pm/SELinuxMMAC$Policy;>;"
    const/4 v1, 0x0

    .line 145
    .local v1, "defaultSeinfo":Ljava/lang/String;
    const/4 v6, 0x0

    .line 147
    .local v6, "policyFile":Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    .end local v6    # "policyFile":Ljava/io/FileReader;
    .local v7, "policyFile":Ljava/io/FileReader;
    :try_start_1
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Using policy file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 151
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 153
    const-string v12, "policy"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 199
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 202
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    .line 203
    sput-object v8, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    .line 204
    sput-object v1, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    .line 206
    const/4 v12, 0x1

    move-object v6, v7

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "policyFile":Ljava/io/FileReader;
    :goto_1
    return v12

    .line 160
    .end local v6    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "policyFile":Ljava/io/FileReader;
    :cond_1
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "tagName":Ljava/lang/String;
    const-string v12, "signer"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 162
    const/4 v12, 0x0

    const-string v13, "signature"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "cert":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 164
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<signer> without signature at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 192
    .end local v0    # "cert":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v6, v7

    .line 193
    .end local v7    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "policyFile":Ljava/io/FileReader;
    .local v11, "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_3
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got exception parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    const/4 v12, 0x0

    .line 199
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 171
    .end local v6    # "policyFile":Ljava/io/FileReader;
    .end local v11    # "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v9, Landroid/content/pm/Signature;

    invoke-direct {v9, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    .local v9, "signature":Landroid/content/pm/Signature;
    :try_start_5
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/SELinuxMMAC$Policy;

    move-result-object v5

    .line 179
    .local v5, "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    invoke-virtual {v5}, Lcom/android/server/pm/SELinuxMMAC$Policy;->isValid()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 180
    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 195
    .end local v0    # "cert":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .end local v10    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v6, v7

    .line 196
    .end local v7    # "policyFile":Ljava/io/FileReader;
    .local v3, "ioe":Ljava/io/IOException;
    .restart local v6    # "policyFile":Ljava/io/FileReader;
    :goto_3
    :try_start_6
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got exception parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 197
    const/4 v12, 0x0

    .line 199
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 172
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v6    # "policyFile":Ljava/io/FileReader;
    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<signer> with bad signature at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 199
    .end local v0    # "cert":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v12

    move-object v6, v7

    .end local v7    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "policyFile":Ljava/io/FileReader;
    :goto_4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v12

    .line 182
    .end local v6    # "policyFile":Ljava/io/FileReader;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "policyFile":Ljava/io/FileReader;
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_3
    :try_start_8
    const-string v12, "default"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 184
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 189
    :cond_4
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 199
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "policyFile":Ljava/io/FileReader;
    .end local v10    # "tagName":Ljava/lang/String;
    .restart local v6    # "policyFile":Ljava/io/FileReader;
    :catchall_1
    move-exception v12

    goto :goto_4

    .line 195
    :catch_3
    move-exception v3

    goto :goto_3

    .line 192
    :catch_4
    move-exception v11

    goto/16 :goto_2
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/SELinuxMMAC$Policy;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 213
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 214
    .local v0, "outerDepth":I
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$Policy;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$Policy;-><init>()V

    .line 216
    .local v2, "policy":Lcom/android/server/pm/SELinuxMMAC$Policy;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    if-ne v5, v9, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_6

    .line 218
    :cond_1
    if-eq v5, v9, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "seinfo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 225
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 227
    invoke-virtual {v2, v3}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putSeinfo(Ljava/lang/String;)V

    .line 229
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 230
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_3
    const-string v6, "package"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 231
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 233
    const-string v6, "SELinuxMMAC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<package> without valid name at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 239
    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3    # "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 247
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    return-object v2
.end method

.method private static readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 254
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 255
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .line 257
    .local v1, "seinfo":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 259
    :cond_1
    if-eq v3, v5, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 264
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "seinfo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 268
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 270
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static returnHash(Ljava/lang/String;)[B
    .locals 3
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 457
    .local v0, "contents":[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 458
    .end local v0    # "contents":[B
    :catch_0
    move-exception v1

    .line 459
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setRestoreconDone()V
    .locals 5

    .prologue
    .line 411
    :try_start_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 412
    .local v0, "currentHash":[B
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/android/server/pm/SELinuxMMAC;->dumpHash(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "SELinuxMMAC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error with saving hash to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static shouldRestorecon()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "currentHash":[B
    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 396
    const/4 v2, 0x0

    .line 398
    .local v2, "storedHash":[B
    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 403
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .end local v2    # "storedHash":[B
    :cond_1
    :goto_1
    return v3

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "ioe":Ljava/io/IOException;
    const-string v4, "SELinuxMMAC"

    const-string v5, "Error with hashing seapp_contexts."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 399
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "storedHash":[B
    :catch_1
    move-exception v1

    .line 400
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string v4, "SELinuxMMAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Assuming first boot."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static useOverridePolicy()Z
    .locals 6

    .prologue
    .line 465
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "overrideVersion":Ljava/lang/String;
    const-string v3, "/selinux_version"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "baseVersion":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const/4 v3, 0x1

    .line 477
    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_0
    return v3

    .line 470
    .restart local v0    # "baseVersion":Ljava/lang/String;
    :cond_0
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override policy version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "base version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Skipping override policy files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "SELinuxMMAC"

    const-string v4, "Skipping override policy files."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 472
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static validatePackageName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 290
    if-nez p0, :cond_1

    move v3, v5

    .line 314
    :cond_0
    :goto_0
    return v3

    .line 293
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 294
    .local v0, "N":I
    const/4 v3, 0x0

    .line 295
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .line 296
    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 297
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 298
    .local v1, "c":C
    const/16 v6, 0x61

    if-lt v1, v6, :cond_2

    const/16 v6, 0x7a

    if-le v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x41

    if-lt v1, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_5

    .line 299
    :cond_3
    const/4 v2, 0x0

    .line 296
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    :cond_5
    if-nez v2, :cond_7

    .line 303
    const/16 v6, 0x30

    if-lt v1, v6, :cond_6

    const/16 v6, 0x39

    if-le v1, v6, :cond_4

    :cond_6
    const/16 v6, 0x5f

    if-eq v1, v6, :cond_4

    .line 307
    :cond_7
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_8

    .line 308
    const/4 v3, 0x1

    .line 309
    const/4 v2, 0x1

    .line 310
    goto :goto_2

    :cond_8
    move v3, v5

    .line 312
    goto :goto_0
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 323
    if-nez p0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v3

    .line 326
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 327
    .local v0, "N":I
    if-eqz v0, :cond_0

    .line 330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 331
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 332
    .local v1, "c":C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_0

    .line 330
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    .end local v1    # "c":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
