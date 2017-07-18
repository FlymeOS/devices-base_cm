.class public Lcom/android/server/notification/ConfigCloud;
.super Ljava/lang/Object;
.source "ConfigCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConfigCloud$Record;
    }
.end annotation


# static fields
.field private static final ATT_COVERED:Ljava/lang/String; = "covered"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static HEADS_UP_WHITE:[Ljava/lang/String; = null

.field private static final NOTIFICATION_POLICY_CLOUD_CHANGE:Ljava/lang/String; = "flyme.intent.action.notification_cloud_file_change"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mConfigFile:Ljava/io/File;

.field private mValueMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ConfigCloud$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ConfigCloud;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ConfigCloud;->loadPolicyFileSafe()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-string/jumbo v0, "ConfigCloud"

    sput-object v0, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqq"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.qqlite"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqqi"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "com.whatsapp"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.naver.line.android"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.facebook.orca"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/android/server/notification/ConfigCloud;->HEADS_UP_WHITE:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    .line 48
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy_cloud.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/notification/ConfigCloud;->mConfigFile:Ljava/io/File;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "flyme.intent.action.notification_cloud_file_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/android/server/notification/ConfigCloud$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/ConfigCloud$1;-><init>(Lcom/android/server/notification/ConfigCloud;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/android/server/notification/ConfigCloud;->loadPolicyFileSafe()V

    .line 47
    return-void
.end method

.method private addPackageConfig(Landroid/util/ArrayMap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "covered"    # Z
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ConfigCloud$Record;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/ConfigCloud$Record;>;"
    new-instance v0, Lcom/android/server/notification/ConfigCloud$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ConfigCloud$Record;-><init>(Lcom/android/server/notification/ConfigCloud;Lcom/android/server/notification/ConfigCloud$Record;)V

    .line 71
    .local v0, "record":Lcom/android/server/notification/ConfigCloud$Record;
    iput-object p2, v0, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    .line 72
    iput-boolean p3, v0, Lcom/android/server/notification/ConfigCloud$Record;->covered:Z

    .line 73
    iget-object v1, v0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 92
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private loadInitialConfig(Landroid/util/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ConfigCloud$Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/ConfigCloud$Record;>;"
    const/4 v3, 0x0

    .line 64
    sget-object v7, Lcom/android/server/notification/ConfigCloud;->HEADS_UP_WHITE:[Ljava/lang/String;

    array-length v8, v7

    move v6, v3

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v7, v6

    .line 65
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "headsup"

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ConfigCloud;->addPackageConfig(Landroid/util/ArrayMap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 64
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 63
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadPolicyFile()V
    .locals 17

    .prologue
    .line 116
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 117
    .local v12, "tempMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/ConfigCloud$Record;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/notification/ConfigCloud;->loadInitialConfig(Landroid/util/ArrayMap;)V

    .line 119
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConfigCloud;->mConfigFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 120
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConfigCloud;->mConfigFile:Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v10, "stream":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 123
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    .line 127
    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 128
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 130
    new-instance v9, Lcom/android/server/notification/ConfigCloud$Record;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Lcom/android/server/notification/ConfigCloud$Record;-><init>(Lcom/android/server/notification/ConfigCloud;Lcom/android/server/notification/ConfigCloud$Record;)V

    .line 131
    .local v9, "record":Lcom/android/server/notification/ConfigCloud$Record;
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    iput-object v14, v9, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    .line 132
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 133
    .local v3, "count":I
    const-string/jumbo v14, "name"

    const/4 v15, 0x0

    invoke-interface {v8, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    .line 134
    const-string/jumbo v14, "1"

    const-string/jumbo v15, "covered"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    iput-boolean v14, v9, Lcom/android/server/notification/ConfigCloud$Record;->covered:Z

    .line 135
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 136
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "attrName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 138
    const-string/jumbo v14, "name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string/jumbo v14, "covered"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :goto_2
    if-nez v14, :cond_1

    .line 139
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "attrValue":Ljava/lang/String;
    iget-object v14, v9, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v14, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v2    # "attrValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 138
    :cond_2
    const/4 v14, 0x1

    goto :goto_2

    .line 144
    .end local v1    # "attrName":Ljava/lang/String;
    :cond_3
    iget-object v14, v9, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_0

    iget-object v14, v9, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 145
    iget-object v14, v9, Lcom/android/server/notification/ConfigCloud$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 151
    .end local v3    # "count":I
    .end local v7    # "i":I
    .end local v9    # "record":Lcom/android/server/notification/ConfigCloud$Record;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_0
    move-exception v6

    .line 152
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 154
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    .line 115
    return-void

    .line 159
    :catch_1
    move-exception v5

    .line 160
    .local v5, "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "notification_policy_cloud read err"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 156
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 157
    .local v4, "e":Ljava/io/FileNotFoundException;
    sget-object v14, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "notification_policy_cloud is not exits"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method private loadPolicyFileSafe()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/notification/ConfigCloud;->loadPolicyFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/ConfigCloud;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadPolicyFile err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getPackageBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ConfigCloud$Record;

    .line 98
    .local v0, "record":Lcom/android/server/notification/ConfigCloud$Record;
    const-string/jumbo v1, "1"

    iget-object v2, v0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 100
    .end local v0    # "record":Lcom/android/server/notification/ConfigCloud$Record;
    :cond_0
    return p3
.end method

.method public getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 78
    iget-object v3, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ConfigCloud$Record;

    .line 80
    .local v0, "record":Lcom/android/server/notification/ConfigCloud$Record;
    iget-object v3, v0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 87
    .end local v0    # "record":Lcom/android/server/notification/ConfigCloud$Record;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return p3

    .line 83
    .restart local v0    # "record":Lcom/android/server/notification/ConfigCloud$Record;
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isPackageCovered(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud;->mValueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ConfigCloud$Record;

    iget-boolean v0, v0, Lcom/android/server/notification/ConfigCloud$Record;->covered:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
